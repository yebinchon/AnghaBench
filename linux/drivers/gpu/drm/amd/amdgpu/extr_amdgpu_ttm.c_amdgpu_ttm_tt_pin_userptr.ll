; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_pin_userptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_pin_userptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ttm_tt = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AMDGPU_GEM_USERPTR_READONLY = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*)* @amdgpu_ttm_tt_pin_userptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ttm_tt_pin_userptr(%struct.ttm_tt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ttm_tt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  %10 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %11 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %12)
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %4, align 8
  %14 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %15 = bitcast %struct.ttm_tt* %14 to i8*
  %16 = bitcast i8* %15 to %struct.amdgpu_ttm_tt*
  store %struct.amdgpu_ttm_tt* %16, %struct.amdgpu_ttm_tt** %5, align 8
  %17 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AMDGPU_GEM_USERPTR_READONLY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %34 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %37 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %40 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %43 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PAGE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @sg_alloc_table_from_pages(%struct.TYPE_6__* %35, i32 %38, i32 %41, i32 0, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  br label %93

52:                                               ; preds = %31
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %59 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %64 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dma_map_sg(i32 %57, i32 %62, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %72 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %52
  br label %93

78:                                               ; preds = %52
  %79 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %80 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %83 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %5, align 8
  %86 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %90 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @drm_prime_sg_to_page_addr_arrays(%struct.TYPE_6__* %81, i32 %84, i32 %88, i32 %91)
  store i32 0, i32* %2, align 4
  br label %99

93:                                               ; preds = %77, %51
  %94 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %95 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = call i32 @kfree(%struct.TYPE_6__* %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %78
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @sg_alloc_table_from_pages(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
