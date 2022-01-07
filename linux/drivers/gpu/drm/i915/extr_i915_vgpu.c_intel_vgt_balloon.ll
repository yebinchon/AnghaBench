; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_vgpu.c_intel_vgt_balloon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_vgpu.c_intel_vgt_balloon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.i915_ggtt = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@avail_rs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"VGT ballooning configuration:\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Mappable graphic memory: base 0x%lx size %ldKiB\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Unmappable graphic memory: base 0x%lx size %ldKiB\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid ballooning configuration!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bl_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"VGT balloon successfully\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"VGT balloon fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgt_balloon(%struct.i915_ggtt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_ggtt*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %3, align 8
  %13 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %14 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store %struct.intel_uncore* %17, %struct.intel_uncore** %4, align 8
  %18 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %19 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %23 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = call i32 @intel_vgpu_active(%struct.TYPE_10__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %166

29:                                               ; preds = %1
  %30 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @avail_rs, i32 0, i32 1, i32 1), align 4
  %32 = call i32 @vgtif_reg(i32 %31)
  %33 = call i64 @intel_uncore_read(%struct.intel_uncore* %30, i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @avail_rs, i32 0, i32 1, i32 0), align 4
  %36 = call i32 @vgtif_reg(i32 %35)
  %37 = call i64 @intel_uncore_read(%struct.intel_uncore* %34, i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @avail_rs, i32 0, i32 0, i32 1), align 4
  %40 = call i32 @vgtif_reg(i32 %39)
  %41 = call i64 @intel_uncore_read(%struct.intel_uncore* %38, i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @avail_rs, i32 0, i32 0, i32 0), align 4
  %44 = call i32 @vgtif_reg(i32 %43)
  %45 = call i64 @intel_uncore_read(%struct.intel_uncore* %42, i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %11, align 8
  %52 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = udiv i64 %54, 1024
  %56 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %55)
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = udiv i64 %58, 1024
  %60 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %63 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ugt i64 %61, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %29
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %69 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72, %66, %29
  %77 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %166

80:                                               ; preds = %72
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %83 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ugt i64 %81, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bl_info, i32 0, i32 0), align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %91 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @vgt_balloon_space(%struct.i915_ggtt* %87, i32* %89, i64 %92, i64 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %163

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %80
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %5, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bl_info, i32 0, i32 0), align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @vgt_balloon_space(%struct.i915_ggtt* %104, i32* %106, i64 %107, i64 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %158

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %99
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bl_info, i32 0, i32 0), align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @vgt_balloon_space(%struct.i915_ggtt* %118, i32* %120, i64 0, i64 %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %153

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %114
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %130 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %128, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %135 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bl_info, i32 0, i32 0), align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %139 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @vgt_balloon_space(%struct.i915_ggtt* %134, i32* %136, i64 %137, i64 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %148

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145, %127
  %147 = call i32 (i8*, ...) @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %166

148:                                              ; preds = %144
  %149 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %150 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bl_info, i32 0, i32 0), align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = call i32 @vgt_deballoon_space(%struct.i915_ggtt* %149, i32* %151)
  br label %153

153:                                              ; preds = %148, %125
  %154 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %155 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bl_info, i32 0, i32 0), align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  %157 = call i32 @vgt_deballoon_space(%struct.i915_ggtt* %154, i32* %156)
  br label %158

158:                                              ; preds = %153, %112
  %159 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %160 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bl_info, i32 0, i32 0), align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = call i32 @vgt_deballoon_space(%struct.i915_ggtt* %159, i32* %161)
  br label %163

163:                                              ; preds = %158, %97
  %164 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %163, %146, %76, %28
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @intel_vgpu_active(%struct.TYPE_10__*) #1

declare dso_local i64 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @vgtif_reg(i32) #1

declare dso_local i32 @DRM_INFO(i8*, ...) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vgt_balloon_space(%struct.i915_ggtt*, i32*, i64, i64) #1

declare dso_local i32 @vgt_deballoon_space(%struct.i915_ggtt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
