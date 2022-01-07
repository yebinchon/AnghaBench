; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_benchmark.c_amdgpu_benchmark_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_benchmark.c_amdgpu_benchmark_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_bo_param = type { i32, i32, i32*, i32, i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@AMDGPU_BENCHMARK_ITERATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error while benchmarking BO move.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32)* @amdgpu_benchmark_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_benchmark_move(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_bo*, align 8
  %10 = alloca %struct.amdgpu_bo*, align 8
  %11 = alloca %struct.amdgpu_bo_param, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %9, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %10, align 8
  %17 = call i32 @memset(%struct.amdgpu_bo_param* %11, i32 0, i32 40)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 5
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @ttm_bo_type_kernel, align 4
  %26 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @AMDGPU_BENCHMARK_ITERATIONS, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %30 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %29, %struct.amdgpu_bo_param* %11, %struct.amdgpu_bo** %10)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %128

34:                                               ; preds = %4
  %35 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %36 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %35, i32 0)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %128

43:                                               ; preds = %34
  %44 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %51 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %50)
  br label %128

52:                                               ; preds = %43
  %53 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %54 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %53, i32 0, i32 0
  %55 = call i32 @amdgpu_ttm_alloc_gart(i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %57 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %56)
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %128

61:                                               ; preds = %52
  %62 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %63 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %11, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %67 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %66, %struct.amdgpu_bo_param* %11, %struct.amdgpu_bo** %9)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %128

71:                                               ; preds = %61
  %72 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %73 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %72, i32 0)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %128

80:                                               ; preds = %71
  %81 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %88 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %87)
  br label %128

89:                                               ; preds = %80
  %90 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %91 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %90, i32 0, i32 0
  %92 = call i32 @amdgpu_ttm_alloc_gart(i32* %91)
  store i32 %92, i32* %14, align 4
  %93 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %94 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %93)
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %128

98:                                               ; preds = %89
  %99 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %100 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %99)
  store i32 %100, i32* %13, align 4
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %98
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @amdgpu_benchmark_do_move(%struct.amdgpu_device* %107, i32 %108, i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %128

116:                                              ; preds = %106
  %117 = load i32, i32* %16, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @amdgpu_benchmark_log_results(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %119, %116
  br label %127

127:                                              ; preds = %126, %98
  br label %128

128:                                              ; preds = %127, %115, %97, %86, %79, %70, %60, %49, %42, %33
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %128
  %134 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %135 = icmp ne %struct.amdgpu_bo* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %138 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %137, i32 1)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i64 @likely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %146 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %145)
  %147 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %148 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %147)
  br label %149

149:                                              ; preds = %144, %136
  %150 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %10)
  br label %151

151:                                              ; preds = %149, %133
  %152 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %153 = icmp ne %struct.amdgpu_bo* %152, null
  br i1 %153, label %154, label %169

154:                                              ; preds = %151
  %155 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %156 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %155, i32 1)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp eq i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i64 @likely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %154
  %163 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %164 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %163)
  %165 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %166 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %165)
  br label %167

167:                                              ; preds = %162, %154
  %168 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %9)
  br label %169

169:                                              ; preds = %167, %151
  ret void
}

declare dso_local i32 @memset(%struct.amdgpu_bo_param*, i32, i32) #1

declare dso_local i32 @amdgpu_bo_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.amdgpu_bo**) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_pin(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_ttm_alloc_gart(i32*) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_benchmark_do_move(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_benchmark_log_results(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
