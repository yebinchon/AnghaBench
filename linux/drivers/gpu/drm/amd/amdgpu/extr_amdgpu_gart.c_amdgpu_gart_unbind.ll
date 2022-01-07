; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gart.c_amdgpu_gart_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gart.c_amdgpu_gart_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32**, i32 }

@.str = private unnamed_addr constant [51 x i8] c"trying to unbind memory from uninitialized GART !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGES_IN_CPU_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gart_unbind(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %91

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %26 = udiv i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @AMDGPU_GPU_PAGES_IN_CPU_PAGE, align 4
  %29 = udiv i32 %27, %28
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %68, %23
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %30
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %68

44:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @AMDGPU_GPU_PAGES_IN_CPU_PAGE, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @amdgpu_gmc_set_pte_pde(%struct.amdgpu_device* %50, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %45

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %30

73:                                               ; preds = %30
  %74 = call i32 (...) @mb()
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %76 = call i32 @amdgpu_asic_flush_hdp(%struct.amdgpu_device* %75, i32* null)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %87, %73
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @amdgpu_gmc_flush_gpu_tlb(%struct.amdgpu_device* %84, i32 0, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %77

90:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %19
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @amdgpu_gmc_set_pte_pde(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @amdgpu_asic_flush_hdp(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @amdgpu_gmc_flush_gpu_tlb(%struct.amdgpu_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
