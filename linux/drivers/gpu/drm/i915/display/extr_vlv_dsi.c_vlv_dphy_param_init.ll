; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_vlv_dphy_param_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_vlv_dphy_param_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dsi = type { i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.mipi_config* }
%struct.mipi_config = type { i32, i32, i32, i32, i32, i32 }

@NS_KHZ_RATIO = common dso_local global i32 0, align 4
@PREPARE_CNT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"prepare count too high %u\0A\00", align 1
@EXIT_ZERO_CNT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"exit zero count too high %u\0A\00", align 1
@CLK_ZERO_CNT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"clock zero count too high %u\0A\00", align 1
@TRAIL_CNT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"trail count too high %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dsi*)* @vlv_dphy_param_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_dphy_param_init(%struct.intel_dsi* %0) #0 {
  %2 = alloca %struct.intel_dsi*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.mipi_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.intel_dsi* %0, %struct.intel_dsi** %2, align 8
  %22 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %23 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.drm_device*, %struct.drm_device** %25, align 8
  store %struct.drm_device* %26, %struct.drm_device** %3, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %27)
  store %struct.drm_i915_private* %28, %struct.drm_i915_private** %4, align 8
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.mipi_config*, %struct.mipi_config** %32, align 8
  store %struct.mipi_config* %33, %struct.mipi_config** %5, align 8
  %34 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %35 = call i32 @intel_dsi_tlpx_ns(%struct.intel_dsi* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %37 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %42 [
    i32 1, label %39
    i32 2, label %39
    i32 3, label %40
    i32 4, label %41
  ]

39:                                               ; preds = %1, %1
  store i32 2, i32* %7, align 4
  br label %43

40:                                               ; preds = %1
  store i32 4, i32* %7, align 4
  br label %43

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %1, %41
  store i32 3, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %40, %39
  %44 = load i32, i32* @NS_KHZ_RATIO, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %46 = call i32 @intel_dsi_bitrate(%struct.intel_dsi* %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %48 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %17, align 4
  %50 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %51 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 8, %56
  %58 = call i8* @DIV_ROUND_UP(i32 %55, i32 %57)
  %59 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %60 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %62 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %61)
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 8, i32 2
  store i32 %65, i32* %21, align 4
  %66 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %67 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %70 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @max(i32 %68, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %21, align 4
  %79 = mul nsw i32 %77, %78
  %80 = call i8* @DIV_ROUND_UP(i32 %76, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @PREPARE_CNT_MAX, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %43
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @PREPARE_CNT_MAX, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %85, %43
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %15, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %21, align 4
  %97 = mul nsw i32 %95, %96
  %98 = call i8* @DIV_ROUND_UP(i32 %94, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = mul nsw i32 55, %101
  %103 = load i32, i32* %9, align 4
  %104 = sdiv i32 %102, %103
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %89
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 55, %107
  %109 = load i32, i32* %9, align 4
  %110 = srem i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %112, %106, %89
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @EXIT_ZERO_CNT_MAX, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @EXIT_ZERO_CNT_MAX, align 4
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %15, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32, i32* %10, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %21, align 4
  %131 = mul nsw i32 %129, %130
  %132 = call i8* @DIV_ROUND_UP(i32 %128, i32 %131)
  %133 = ptrtoint i8* %132 to i32
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @CLK_ZERO_CNT_MAX, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %123
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @CLK_ZERO_CNT_MAX, align 4
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %137, %123
  %142 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %143 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %146 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @max(i32 %144, i32 %147)
  %149 = ptrtoint i8* %148 to i32
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %10, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %21, align 4
  %155 = mul nsw i32 %153, %154
  %156 = call i8* @DIV_ROUND_UP(i32 %152, i32 %155)
  %157 = ptrtoint i8* %156 to i32
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @TRAIL_CNT_MAX, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %141
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @TRAIL_CNT_MAX, align 4
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %161, %141
  %166 = load i32, i32* %12, align 4
  %167 = shl i32 %166, 24
  %168 = load i32, i32* %14, align 4
  %169 = shl i32 %168, 16
  %170 = or i32 %167, %169
  %171 = load i32, i32* %13, align 4
  %172 = shl i32 %171, 8
  %173 = or i32 %170, %172
  %174 = load i32, i32* %11, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %177 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %10, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* %9, align 4
  %182 = call i8* @DIV_ROUND_UP(i32 %180, i32 %181)
  %183 = ptrtoint i8* %182 to i32
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = mul nsw i32 4, %184
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %21, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %185, %188
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %21, align 4
  %192 = mul nsw i32 %190, %191
  %193 = add nsw i32 %189, %192
  %194 = add nsw i32 %193, 10
  %195 = call i8* @DIV_ROUND_UP(i32 %194, i32 8)
  %196 = ptrtoint i8* %195 to i32
  store i32 %196, i32* %19, align 4
  %197 = load %struct.mipi_config*, %struct.mipi_config** %5, align 8
  %198 = getelementptr inbounds %struct.mipi_config, %struct.mipi_config* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = mul nsw i32 2, %200
  %202 = add nsw i32 %199, %201
  %203 = call i8* @DIV_ROUND_UP(i32 %202, i32 8)
  %204 = ptrtoint i8* %203 to i32
  store i32 %204, i32* %20, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %20, align 4
  %207 = call i8* @max(i32 %205, i32 %206)
  %208 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %209 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %212 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %211, i32 0, i32 4
  %213 = load i8*, i8** %212, align 8
  %214 = sext i32 %210 to i64
  %215 = getelementptr i8, i8* %213, i64 %214
  store i8* %215, i8** %212, align 8
  %216 = load i32, i32* %8, align 4
  %217 = mul nsw i32 4, %216
  %218 = load i32, i32* %11, align 4
  %219 = mul nsw i32 %218, 2
  %220 = add nsw i32 %217, %219
  %221 = load i32, i32* %13, align 4
  %222 = mul nsw i32 %221, 2
  %223 = add nsw i32 %220, %222
  %224 = call i8* @DIV_ROUND_UP(i32 %223, i32 8)
  %225 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %226 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %225, i32 0, i32 3
  store i8* %224, i8** %226, align 8
  %227 = load i32, i32* %7, align 4
  %228 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %229 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %228, i32 0, i32 3
  %230 = load i8*, i8** %229, align 8
  %231 = sext i32 %227 to i64
  %232 = getelementptr i8, i8* %230, i64 %231
  store i8* %232, i8** %229, align 8
  %233 = load i32, i32* %8, align 4
  %234 = mul nsw i32 2, %233
  %235 = load i32, i32* %14, align 4
  %236 = mul nsw i32 %235, 2
  %237 = add nsw i32 %234, %236
  %238 = add nsw i32 %237, 8
  %239 = call i8* @DIV_ROUND_UP(i32 %238, i32 8)
  %240 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %241 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %240, i32 0, i32 2
  store i8* %239, i8** %241, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %244 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %243, i32 0, i32 2
  %245 = load i8*, i8** %244, align 8
  %246 = sext i32 %242 to i64
  %247 = getelementptr i8, i8* %245, i64 %246
  store i8* %247, i8** %244, align 8
  %248 = load %struct.intel_dsi*, %struct.intel_dsi** %2, align 8
  %249 = call i32 @intel_dsi_log_params(%struct.intel_dsi* %248)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @intel_dsi_tlpx_ns(%struct.intel_dsi*) #1

declare dso_local i32 @intel_dsi_bitrate(%struct.intel_dsi*) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @intel_dsi_log_params(%struct.intel_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
