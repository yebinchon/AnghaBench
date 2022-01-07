; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_kiq_reg_write_reg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_kiq_reg_write_reg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_kiq }
%struct.amdgpu_kiq = type { i32, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32 }

@MAX_KIQ_REG_WAIT = common dso_local global i32 0, align 4
@MAX_KIQ_REG_TRY = common dso_local global i64 0, align 8
@MAX_KIQ_REG_BAILOUT_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to write reg %x wait reg %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_virt_kiq_reg_write_reg_wait(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_kiq*, align 8
  %12 = alloca %struct.amdgpu_ring*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.amdgpu_kiq* %19, %struct.amdgpu_kiq** %11, align 8
  %20 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %11, align 8
  %21 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %20, i32 0, i32 1
  store %struct.amdgpu_ring* %21, %struct.amdgpu_ring** %12, align 8
  store i64 0, i64* %14, align 8
  %22 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %11, align 8
  %23 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %22, i32 0, i32 0
  %24 = load i64, i64* %15, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %27 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %26, i32 32)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @amdgpu_ring_emit_reg_write_reg_wait(%struct.amdgpu_ring* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %35 = call i32 @amdgpu_fence_emit_polling(%struct.amdgpu_ring* %34, i32* %16)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %37 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %36)
  %38 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %11, align 8
  %39 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %38, i32 0, i32 0
  %40 = load i64, i64* %15, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @MAX_KIQ_REG_WAIT, align 4
  %45 = call i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring* %42, i32 %43, i32 %44)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp slt i64 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %5
  %49 = call i64 (...) @in_interrupt()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %77

52:                                               ; preds = %48, %5
  %53 = call i32 (...) @might_sleep()
  br label %54

54:                                               ; preds = %64, %52
  %55 = load i64, i64* %13, align 8
  %56 = icmp slt i64 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i64, i64* %14, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* @MAX_KIQ_REG_TRY, align 8
  %61 = icmp slt i64 %58, %60
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  br i1 %63, label %64, label %71

64:                                               ; preds = %62
  %65 = load i32, i32* @MAX_KIQ_REG_BAILOUT_INTERVAL, align 4
  %66 = call i32 @msleep(i32 %65)
  %67 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @MAX_KIQ_REG_WAIT, align 4
  %70 = call i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring* %67, i32 %68, i32 %69)
  store i64 %70, i64* %13, align 8
  br label %54

71:                                               ; preds = %62
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* @MAX_KIQ_REG_TRY, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %77

76:                                               ; preds = %71
  br label %81

77:                                               ; preds = %75, %51
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %76
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_emit_reg_write_reg_wait(%struct.amdgpu_ring*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_fence_emit_polling(%struct.amdgpu_ring*, i32*) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring*, i32, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
