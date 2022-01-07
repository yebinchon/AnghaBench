; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_kiq_wreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_kiq_wreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.amdgpu_kiq }
%struct.amdgpu_kiq = type { i32, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MAX_KIQ_REG_WAIT = common dso_local global i32 0, align 4
@MAX_KIQ_REG_TRY = common dso_local global i64 0, align 8
@MAX_KIQ_REG_BAILOUT_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to write reg:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_virt_kiq_wreg(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_kiq*, align 8
  %12 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.amdgpu_kiq* %15, %struct.amdgpu_kiq** %11, align 8
  %16 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %11, align 8
  %17 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %16, i32 0, i32 1
  store %struct.amdgpu_ring* %17, %struct.amdgpu_ring** %12, align 8
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %11, align 8
  %28 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %27, i32 0, i32 0
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %32 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %31, i32 32)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @amdgpu_ring_emit_wreg(%struct.amdgpu_ring* %33, i32 %34, i32 %35)
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %38 = call i32 @amdgpu_fence_emit_polling(%struct.amdgpu_ring* %37, i32* %10)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %40 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %39)
  %41 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %11, align 8
  %42 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %41, i32 0, i32 0
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @MAX_KIQ_REG_WAIT, align 4
  %48 = call i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring* %45, i32 %46, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp slt i64 %49, 1
  br i1 %50, label %51, label %60

51:                                               ; preds = %3
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = call i64 (...) @in_interrupt()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %51
  br label %85

60:                                               ; preds = %56, %3
  %61 = call i32 (...) @might_sleep()
  br label %62

62:                                               ; preds = %72, %60
  %63 = load i64, i64* %7, align 8
  %64 = icmp slt i64 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* @MAX_KIQ_REG_TRY, align 8
  %69 = icmp slt i64 %66, %68
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i1 [ false, %62 ], [ %69, %65 ]
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = load i32, i32* @MAX_KIQ_REG_BAILOUT_INTERVAL, align 4
  %74 = call i32 @msleep(i32 %73)
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @MAX_KIQ_REG_WAIT, align 4
  %78 = call i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring* %75, i32 %76, i32 %77)
  store i64 %78, i64* %7, align 8
  br label %62

79:                                               ; preds = %70
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @MAX_KIQ_REG_TRY, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %85

84:                                               ; preds = %79
  br label %88

85:                                               ; preds = %83, %59
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %84
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_emit_wreg(%struct.amdgpu_ring*, i32, i32) #1

declare dso_local i32 @amdgpu_fence_emit_polling(%struct.amdgpu_ring*, i32*) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring*, i32, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
