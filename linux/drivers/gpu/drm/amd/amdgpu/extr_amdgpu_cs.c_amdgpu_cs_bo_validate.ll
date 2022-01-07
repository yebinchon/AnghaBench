; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_bo_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_bo_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { i64, i64, i64, i64 }
%struct.amdgpu_bo = type { i32, i64, i64, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32, i64, i32, i32 }

@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_cs_parser*, %struct.amdgpu_bo*)* @amdgpu_cs_bo_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_bo_validate(%struct.amdgpu_cs_parser* %0, %struct.amdgpu_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_cs_parser*, align 8
  %5 = alloca %struct.amdgpu_bo*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.ttm_operation_ctx, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %4, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %5, align 8
  %10 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %13)
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %7, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %7, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %7, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %7, i32 0, i32 3
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %7, i32 0, i32 4
  %20 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %21 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %19, align 4
  %25 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %26 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %127

30:                                               ; preds = %2
  %31 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %30
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = call i32 @amdgpu_gmc_vram_full_visible(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %38
  %44 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %52 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %55 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %60 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %8, align 8
  br label %66

62:                                               ; preds = %50
  %63 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %64 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %62, %58
  br label %71

67:                                               ; preds = %43, %38
  %68 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %69 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %67, %66
  br label %76

72:                                               ; preds = %30
  %73 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %74 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %72, %71
  br label %77

77:                                               ; preds = %121, %76
  %78 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %78, i64 %79)
  %81 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %82 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %81, i32 0, i32 4
  %83 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %84 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %83, i32 0, i32 3
  %85 = call i32 @ttm_bo_validate(%struct.TYPE_4__* %82, i32* %84, %struct.ttm_operation_ctx* %7)
  store i32 %85, i32* %9, align 4
  %86 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %7, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %89 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = call i32 @amdgpu_gmc_vram_full_visible(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %77
  %97 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %98 = call i64 @amdgpu_bo_in_cpu_visible_vram(%struct.amdgpu_bo* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %7, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %104 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %100, %96, %77
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %118 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %123 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %8, align 8
  br label %77

125:                                              ; preds = %115, %107
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %29
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @amdgpu_gmc_vram_full_visible(i32*) #1

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i64) #1

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_4__*, i32*, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @amdgpu_bo_in_cpu_visible_vram(%struct.amdgpu_bo*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
