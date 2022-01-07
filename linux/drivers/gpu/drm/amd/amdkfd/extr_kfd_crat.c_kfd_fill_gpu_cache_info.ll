; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_gpu_cache_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_gpu_cache_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_gpu_cache_info = type { i64 }
%struct.kfd_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kfd_cu_info = type { i32, i32, i32, i32** }
%struct.crat_subtype_cache = type { i32 }

@kaveri_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@hawaii_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@carrizo_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@tonga_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@fiji_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@polaris10_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@polaris11_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@polaris12_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@vegam_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@vega10_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@raven_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@navi10_cache_info = common dso_local global %struct.kfd_gpu_cache_info* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Added [%d] GPU cache entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dev*, i32, i32, %struct.kfd_cu_info*, %struct.crat_subtype_cache*, i32*, i32*)* @kfd_fill_gpu_cache_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_fill_gpu_cache_info(%struct.kfd_dev* %0, i32 %1, i32 %2, %struct.kfd_cu_info* %3, %struct.crat_subtype_cache* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kfd_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kfd_cu_info*, align 8
  %13 = alloca %struct.crat_subtype_cache*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.kfd_gpu_cache_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.kfd_cu_info* %3, %struct.kfd_cu_info** %12, align 8
  store %struct.crat_subtype_cache* %4, %struct.crat_subtype_cache** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %22, align 4
  %26 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %27 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %79 [
    i32 138, label %31
    i32 139, label %35
    i32 141, label %39
    i32 132, label %43
    i32 140, label %47
    i32 136, label %51
    i32 135, label %55
    i32 134, label %59
    i32 128, label %63
    i32 131, label %67
    i32 130, label %67
    i32 129, label %67
    i32 142, label %67
    i32 133, label %71
    i32 137, label %75
  ]

31:                                               ; preds = %7
  %32 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @kaveri_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %32, %struct.kfd_gpu_cache_info** %16, align 8
  %33 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @kaveri_cache_info, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %33)
  store i32 %34, i32* %17, align 4
  br label %82

35:                                               ; preds = %7
  %36 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @hawaii_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %36, %struct.kfd_gpu_cache_info** %16, align 8
  %37 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @hawaii_cache_info, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %37)
  store i32 %38, i32* %17, align 4
  br label %82

39:                                               ; preds = %7
  %40 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @carrizo_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %40, %struct.kfd_gpu_cache_info** %16, align 8
  %41 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @carrizo_cache_info, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %41)
  store i32 %42, i32* %17, align 4
  br label %82

43:                                               ; preds = %7
  %44 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @tonga_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %44, %struct.kfd_gpu_cache_info** %16, align 8
  %45 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @tonga_cache_info, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %45)
  store i32 %46, i32* %17, align 4
  br label %82

47:                                               ; preds = %7
  %48 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @fiji_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %48, %struct.kfd_gpu_cache_info** %16, align 8
  %49 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @fiji_cache_info, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %49)
  store i32 %50, i32* %17, align 4
  br label %82

51:                                               ; preds = %7
  %52 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @polaris10_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %52, %struct.kfd_gpu_cache_info** %16, align 8
  %53 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @polaris10_cache_info, align 8
  %54 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %53)
  store i32 %54, i32* %17, align 4
  br label %82

55:                                               ; preds = %7
  %56 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @polaris11_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %56, %struct.kfd_gpu_cache_info** %16, align 8
  %57 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @polaris11_cache_info, align 8
  %58 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %57)
  store i32 %58, i32* %17, align 4
  br label %82

59:                                               ; preds = %7
  %60 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @polaris12_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %60, %struct.kfd_gpu_cache_info** %16, align 8
  %61 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @polaris12_cache_info, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %61)
  store i32 %62, i32* %17, align 4
  br label %82

63:                                               ; preds = %7
  %64 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @vegam_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %64, %struct.kfd_gpu_cache_info** %16, align 8
  %65 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @vegam_cache_info, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %65)
  store i32 %66, i32* %17, align 4
  br label %82

67:                                               ; preds = %7, %7, %7, %7
  %68 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @vega10_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %68, %struct.kfd_gpu_cache_info** %16, align 8
  %69 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @vega10_cache_info, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %69)
  store i32 %70, i32* %17, align 4
  br label %82

71:                                               ; preds = %7
  %72 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @raven_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %72, %struct.kfd_gpu_cache_info** %16, align 8
  %73 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @raven_cache_info, align 8
  %74 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %73)
  store i32 %74, i32* %17, align 4
  br label %82

75:                                               ; preds = %7
  %76 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @navi10_cache_info, align 8
  store %struct.kfd_gpu_cache_info* %76, %struct.kfd_gpu_cache_info** %16, align 8
  %77 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** @navi10_cache_info, align 8
  %78 = call i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info* %77)
  store i32 %78, i32* %17, align 4
  br label %82

79:                                               ; preds = %7
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %190

82:                                               ; preds = %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31
  %83 = load i32*, i32** %14, align 8
  store i32 0, i32* %83, align 4
  %84 = load i32*, i32** %15, align 8
  store i32 0, i32* %84, align 4
  store i32 0, i32* %21, align 4
  br label %85

85:                                               ; preds = %183, %82
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %186

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %23, align 4
  store i32 0, i32* %18, align 4
  br label %91

91:                                               ; preds = %179, %89
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %12, align 8
  %94 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %182

97:                                               ; preds = %91
  store i32 0, i32* %19, align 4
  br label %98

98:                                               ; preds = %175, %97
  %99 = load i32, i32* %19, align 4
  %100 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %12, align 8
  %101 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %178

104:                                              ; preds = %98
  store i32 0, i32* %20, align 4
  br label %105

105:                                              ; preds = %163, %104
  %106 = load i32, i32* %20, align 4
  %107 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %12, align 8
  %108 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %174

111:                                              ; preds = %105
  %112 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %13, align 8
  %113 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** %16, align 8
  %114 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %12, align 8
  %115 = load i32, i32* %22, align 4
  %116 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %12, align 8
  %117 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %116, i32 0, i32 3
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %20, align 4
  %130 = call i32 @fill_in_pcache(%struct.crat_subtype_cache* %112, %struct.kfd_gpu_cache_info* %113, %struct.kfd_cu_info* %114, i32 %115, i32 %126, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %24, align 4
  %131 = load i32, i32* %24, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %111
  br label %174

134:                                              ; preds = %111
  %135 = load i32, i32* %24, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %134
  %138 = load %struct.crat_subtype_cache*, %struct.crat_subtype_cache** %13, align 8
  %139 = getelementptr inbounds %struct.crat_subtype_cache, %struct.crat_subtype_cache* %138, i32 1
  store %struct.crat_subtype_cache* %139, %struct.crat_subtype_cache** %13, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %22, align 4
  %144 = sext i32 %143 to i64
  %145 = sub i64 %144, 4
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %22, align 4
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, 4
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 4
  br label %152

152:                                              ; preds = %137, %134
  %153 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** %16, align 8
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %153, i64 %155
  %157 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %23, align 4
  %160 = zext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %23, align 4
  br label %163

163:                                              ; preds = %152
  %164 = load %struct.kfd_gpu_cache_info*, %struct.kfd_gpu_cache_info** %16, align 8
  %165 = load i32, i32* %21, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %164, i64 %166
  %168 = getelementptr inbounds %struct.kfd_gpu_cache_info, %struct.kfd_gpu_cache_info* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %20, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %20, align 4
  br label %105

174:                                              ; preds = %133, %105
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %19, align 4
  br label %98

178:                                              ; preds = %98
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %18, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %18, align 4
  br label %91

182:                                              ; preds = %91
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %21, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %21, align 4
  br label %85

186:                                              ; preds = %85
  %187 = load i32*, i32** %15, align 8
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %188)
  store i32 0, i32* %8, align 4
  br label %190

190:                                              ; preds = %186, %79
  %191 = load i32, i32* %8, align 4
  ret i32 %191
}

declare dso_local i32 @ARRAY_SIZE(%struct.kfd_gpu_cache_info*) #1

declare dso_local i32 @fill_in_pcache(%struct.crat_subtype_cache*, %struct.kfd_gpu_cache_info*, %struct.kfd_cu_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
