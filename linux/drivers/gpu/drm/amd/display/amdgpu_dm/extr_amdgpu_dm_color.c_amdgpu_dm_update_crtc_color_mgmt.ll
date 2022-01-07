; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c_amdgpu_dm_update_crtc_color_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c_amdgpu_dm_update_crtc_color_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crtc_state = type { i32, i32, %struct.TYPE_12__, %struct.dc_stream_state* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.dc_stream_state = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.amdgpu_device = type { i64 }
%struct.drm_color_ctm = type { i32 }
%struct.drm_color_lut = type { i32 }

@CHIP_RAVEN = common dso_local global i64 0, align 8
@MAX_COLOR_LUT_ENTRIES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_COLOR_LEGACY_LUT_ENTRIES = common dso_local global i64 0, align 8
@TF_TYPE_DISTRIBUTED_POINTS = common dso_local global i8* null, align 8
@TRANSFER_FUNCTION_SRGB = common dso_local global i8* null, align 8
@TRANSFER_FUNCTION_LINEAR = common dso_local global i8* null, align 8
@TF_TYPE_BYPASS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_dm_update_crtc_color_mgmt(%struct.dm_crtc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_crtc_state*, align 8
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_color_ctm*, align 8
  %8 = alloca %struct.drm_color_lut*, align 8
  %9 = alloca %struct.drm_color_lut*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dm_crtc_state* %0, %struct.dm_crtc_state** %3, align 8
  %16 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %17 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %16, i32 0, i32 3
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %17, align 8
  store %struct.dc_stream_state* %18, %struct.dc_stream_state** %4, align 8
  %19 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %20 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %27, %struct.amdgpu_device** %5, align 8
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CHIP_RAVEN, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  store %struct.drm_color_ctm* null, %struct.drm_color_ctm** %7, align 8
  %34 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %35 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.drm_color_lut* @__extract_blob_lut(i32 %37, i64* %10)
  store %struct.drm_color_lut* %38, %struct.drm_color_lut** %8, align 8
  %39 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %40 = icmp ne %struct.drm_color_lut* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @MAX_COLOR_LUT_ENTRIES, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %200

48:                                               ; preds = %41, %1
  %49 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %50 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.drm_color_lut* @__extract_blob_lut(i32 %52, i64* %11)
  store %struct.drm_color_lut* %53, %struct.drm_color_lut** %9, align 8
  %54 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %55 = icmp ne %struct.drm_color_lut* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @MAX_COLOR_LUT_ENTRIES, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @MAX_COLOR_LEGACY_LUT_ENTRIES, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %200

67:                                               ; preds = %60, %56, %48
  %68 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %69 = icmp ne %struct.drm_color_lut* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @__is_lut_linear(%struct.drm_color_lut* %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i1 [ false, %67 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %13, align 4
  %79 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %80 = icmp ne %struct.drm_color_lut* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @__is_lut_linear(%struct.drm_color_lut* %82, i64 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi i1 [ false, %76 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %12, align 4
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @MAX_COLOR_LEGACY_LUT_ENTRIES, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %14, align 4
  %94 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %95 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %97 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %87
  %101 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %102 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load i8*, i8** @TF_TYPE_DISTRIBUTED_POINTS, align 8
  %104 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %105 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %104, i32 0, i32 2
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  store i8* %103, i8** %107, align 8
  %108 = load i8*, i8** @TRANSFER_FUNCTION_SRGB, align 8
  %109 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %110 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %109, i32 0, i32 2
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i8* %108, i8** %112, align 8
  %113 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %114 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %113, i32 0, i32 2
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @__set_legacy_tf(%struct.TYPE_15__* %115, %struct.drm_color_lut* %116, i64 %117, i32 %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %100
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %2, align 4
  br label %200

124:                                              ; preds = %100
  br label %163

125:                                              ; preds = %87
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %125
  %129 = load i8*, i8** @TF_TYPE_DISTRIBUTED_POINTS, align 8
  %130 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %131 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %130, i32 0, i32 2
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  store i8* %129, i8** %133, align 8
  %134 = load i8*, i8** @TRANSFER_FUNCTION_LINEAR, align 8
  %135 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %136 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %135, i32 0, i32 2
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  store i8* %134, i8** %138, align 8
  %139 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %140 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %139, i32 0, i32 2
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = load %struct.drm_color_lut*, %struct.drm_color_lut** %9, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @__set_output_tf(%struct.TYPE_15__* %141, %struct.drm_color_lut* %142, i64 %143, i32 %144)
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %128
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %2, align 4
  br label %200

150:                                              ; preds = %128
  br label %162

151:                                              ; preds = %125
  %152 = load i8*, i8** @TF_TYPE_BYPASS, align 8
  %153 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %154 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %153, i32 0, i32 2
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  store i8* %152, i8** %156, align 8
  %157 = load i8*, i8** @TRANSFER_FUNCTION_LINEAR, align 8
  %158 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %159 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %158, i32 0, i32 2
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  store i8* %157, i8** %161, align 8
  br label %162

162:                                              ; preds = %151, %150
  br label %163

163:                                              ; preds = %162, %124
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %166 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %168 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = icmp ne %struct.TYPE_11__* %170, null
  br i1 %171, label %172, label %192

172:                                              ; preds = %163
  %173 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %174 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to %struct.drm_color_ctm*
  store %struct.drm_color_ctm* %179, %struct.drm_color_ctm** %7, align 8
  %180 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %7, align 8
  %181 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %182 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @__drm_ctm_to_dc_matrix(%struct.drm_color_ctm* %180, i32 %184)
  %186 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %187 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 4
  %189 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %190 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  br label %199

192:                                              ; preds = %163
  %193 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %194 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  store i32 0, i32* %195, align 4
  %196 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %197 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  store i32 0, i32* %198, align 8
  br label %199

199:                                              ; preds = %192, %172
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %199, %148, %122, %64, %45
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.drm_color_lut* @__extract_blob_lut(i32, i64*) #1

declare dso_local i32 @__is_lut_linear(%struct.drm_color_lut*, i64) #1

declare dso_local i32 @__set_legacy_tf(%struct.TYPE_15__*, %struct.drm_color_lut*, i64, i32) #1

declare dso_local i32 @__set_output_tf(%struct.TYPE_15__*, %struct.drm_color_lut*, i64, i32) #1

declare dso_local i32 @__drm_ctm_to_dc_matrix(%struct.drm_color_ctm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
