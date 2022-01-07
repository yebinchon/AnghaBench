; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_kiq_rreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_kiq_rreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { %struct.amdgpu_kiq }
%struct.amdgpu_kiq = type { i32, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MAX_KIQ_REG_WAIT = common dso_local global i32 0, align 4
@MAX_KIQ_REG_TRY = common dso_local global i64 0, align 8
@MAX_KIQ_REG_BAILOUT_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to read reg:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_virt_kiq_rreg(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_kiq*, align 8
  %11 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.amdgpu_kiq* %14, %struct.amdgpu_kiq** %10, align 8
  %15 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %10, align 8
  %16 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %15, i32 0, i32 1
  store %struct.amdgpu_ring* %16, %struct.amdgpu_ring** %11, align 8
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %10, align 8
  %27 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %31 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %30, i32 32)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @amdgpu_ring_emit_rreg(%struct.amdgpu_ring* %32, i32 %33)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %36 = call i32 @amdgpu_fence_emit_polling(%struct.amdgpu_ring* %35, i32* %9)
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %38 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %37)
  %39 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %10, align 8
  %40 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %39, i32 0, i32 0
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MAX_KIQ_REG_WAIT, align 4
  %46 = call i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring* %43, i32 %44, i32 %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp slt i64 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %2
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = call i64 (...) @in_interrupt()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %49
  br label %93

58:                                               ; preds = %54, %2
  %59 = call i32 (...) @might_sleep()
  br label %60

60:                                               ; preds = %70, %58
  %61 = load i64, i64* %6, align 8
  %62 = icmp slt i64 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i64, i64* %7, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* @MAX_KIQ_REG_TRY, align 8
  %67 = icmp slt i64 %64, %66
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi i1 [ false, %60 ], [ %67, %63 ]
  br i1 %69, label %70, label %77

70:                                               ; preds = %68
  %71 = load i32, i32* @MAX_KIQ_REG_BAILOUT_INTERVAL, align 4
  %72 = call i32 @msleep(i32 %71)
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @MAX_KIQ_REG_WAIT, align 4
  %76 = call i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring* %73, i32 %74, i32 %75)
  store i64 %76, i64* %6, align 8
  br label %60

77:                                               ; preds = %68
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @MAX_KIQ_REG_TRY, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %93

82:                                               ; preds = %77
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %3, align 4
  br label %96

93:                                               ; preds = %81, %57
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %94)
  store i32 -1, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %82
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_emit_rreg(%struct.amdgpu_ring*, i32) #1

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
