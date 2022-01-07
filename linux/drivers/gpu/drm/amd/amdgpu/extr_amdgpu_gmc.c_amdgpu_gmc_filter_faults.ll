; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gmc.c_amdgpu_gmc_filter_faults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gmc.c_amdgpu_gmc_filter_faults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_gmc }
%struct.amdgpu_gmc = type { i64, %struct.TYPE_2__*, %struct.amdgpu_gmc_fault* }
%struct.TYPE_2__ = type { i64 }
%struct.amdgpu_gmc_fault = type { i32, i32, i64 }

@AMDGPU_GMC_FAULT_TIMEOUT = common dso_local global i32 0, align 4
@AMDGPU_GMC_FAULT_HASH_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gmc_filter_faults(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_gmc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.amdgpu_gmc_fault*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  store %struct.amdgpu_gmc* %17, %struct.amdgpu_gmc** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @AMDGPU_GMC_FAULT_TIMEOUT, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @max(i32 %22, i32 %24)
  %26 = load i32, i32* @AMDGPU_GMC_FAULT_TIMEOUT, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %10, align 8
  %29 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %28, i32 0, i32 2
  %30 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %29, align 8
  %31 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %10, align 8
  %32 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %30, i64 %33
  %35 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %119

40:                                               ; preds = %4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @AMDGPU_GMC_FAULT_HASH_ORDER, align 4
  %43 = call i64 @hash_64(i32 %41, i32 %42)
  store i64 %43, i64* %14, align 8
  %44 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %10, align 8
  %45 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %44, i32 0, i32 2
  %46 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %45, align 8
  %47 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %10, align 8
  %48 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %46, i64 %53
  store %struct.amdgpu_gmc_fault* %54, %struct.amdgpu_gmc_fault** %13, align 8
  br label %55

55:                                               ; preds = %85, %40
  %56 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %13, align 8
  %57 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %55
  %62 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %13, align 8
  %63 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  br label %119

68:                                               ; preds = %61
  %69 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %13, align 8
  %70 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %15, align 4
  %72 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %10, align 8
  %73 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %72, i32 0, i32 2
  %74 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %73, align 8
  %75 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %13, align 8
  %76 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %74, i64 %77
  store %struct.amdgpu_gmc_fault* %78, %struct.amdgpu_gmc_fault** %13, align 8
  %79 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %13, align 8
  %80 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %86

85:                                               ; preds = %68
  br label %55

86:                                               ; preds = %84, %55
  %87 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %10, align 8
  %88 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %87, i32 0, i32 2
  %89 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %88, align 8
  %90 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %10, align 8
  %91 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %89, i64 %92
  store %struct.amdgpu_gmc_fault* %93, %struct.amdgpu_gmc_fault** %13, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %13, align 8
  %96 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %13, align 8
  %99 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %10, align 8
  %101 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.amdgpu_gmc_fault*, %struct.amdgpu_gmc_fault** %13, align 8
  %108 = getelementptr inbounds %struct.amdgpu_gmc_fault, %struct.amdgpu_gmc_fault* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %10, align 8
  %110 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %110, align 8
  %113 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %10, align 8
  %114 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i64 %111, i64* %118, align 8
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %86, %67, %39
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @hash_64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
