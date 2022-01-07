; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gart.c_amdgpu_gart_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gart.c_amdgpu_gart_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.page**, i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"trying to bind memory to uninitialized GART !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGES_IN_CPU_PAGE = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gart_bind(%struct.amdgpu_device* %0, i32 %1, i32 %2, %struct.page** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.page** %3, %struct.page*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %65

25:                                               ; preds = %6
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %65

32:                                               ; preds = %25
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @amdgpu_gart_map(%struct.amdgpu_device* %33, i32 %34, i32 %35, i32* %36, i32 %37, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %65

47:                                               ; preds = %32
  %48 = call i32 (...) @mb()
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %50 = call i32 @amdgpu_asic_flush_hdp(%struct.amdgpu_device* %49, i32* null)
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %61, %47
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @amdgpu_gmc_flush_gpu_tlb(%struct.amdgpu_device* %58, i32 0, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %51

64:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %45, %31, %21
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @amdgpu_gart_map(%struct.amdgpu_device*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @amdgpu_asic_flush_hdp(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @amdgpu_gmc_flush_gpu_tlb(%struct.amdgpu_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
