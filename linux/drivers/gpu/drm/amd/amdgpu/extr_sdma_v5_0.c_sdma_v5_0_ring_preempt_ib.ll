; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_preempt_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_preempt_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i32, i32*, i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@mmSDMA0_GFX_PREEMPT = common dso_local global i32 0, align 4
@mmSDMA1_GFX_PREEMPT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ring %d failed to be preempted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @sdma_v5_0_ring_preempt_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v5_0_ring_preempt_ib(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %12 = call i32 @amdgpu_sdma_get_index_from_ring(%struct.amdgpu_ring* %11, i64* %6)
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @mmSDMA0_GFX_PREEMPT, align 4
  store i32 %16, i32* %7, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @mmSDMA1_GFX_PREEMPT, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %21 = call i32 @amdgpu_ring_set_preempt_cond_exec(%struct.amdgpu_ring* %20, i32 0)
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %27 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %26, i32 10)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @sdma_v5_0_ring_emit_fence(%struct.amdgpu_ring* %28, i32 %31, i64 %34, i32 0)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %37 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @WREG32(i32 %38, i32 1)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %59, %19
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %48 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @le32_to_cpu(i32 %53)
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %62

57:                                               ; preds = %46
  %58 = call i32 @udelay(i32 1)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %40

62:                                               ; preds = %56, %40
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %72 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %68, %62
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @WREG32(i32 %76, i32 0)
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %79 = call i32 @amdgpu_ring_set_preempt_cond_exec(%struct.amdgpu_ring* %78, i32 1)
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @amdgpu_sdma_get_index_from_ring(%struct.amdgpu_ring*, i64*) #1

declare dso_local i32 @amdgpu_ring_set_preempt_cond_exec(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @sdma_v5_0_ring_emit_fence(%struct.amdgpu_ring*, i32, i64, i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
