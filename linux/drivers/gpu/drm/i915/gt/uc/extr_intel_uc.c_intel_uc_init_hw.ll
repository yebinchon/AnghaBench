; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_intel_uc_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_intel_uc_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc = type { %struct.intel_huc, %struct.intel_guc }
%struct.intel_huc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.intel_guc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.drm_i915_private* }

@.str = private unnamed_addr constant [62 x i8] c"GuC fw load failed: %d; will reset and retry %d more time(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s firmware %s version %u.%u %s:%s\0A\00", align 1
@INTEL_UC_FW_TYPE_GUC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"submission\00", align 1
@INTEL_UC_FW_TYPE_HUC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"authenticated\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"GuC is uninitialized\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"GuC initialization failed %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_uc_init_hw(%struct.intel_uc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_uc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_guc*, align 8
  %6 = alloca %struct.intel_huc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_uc* %0, %struct.intel_uc** %3, align 8
  %9 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %10 = call %struct.TYPE_8__* @uc_to_gt(%struct.intel_uc* %9)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  %13 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %14 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %13, i32 0, i32 1
  store %struct.intel_guc* %14, %struct.intel_guc** %5, align 8
  %15 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %16 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %15, i32 0, i32 0
  store %struct.intel_huc* %16, %struct.intel_huc** %6, align 8
  %17 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %18 = call i32 @intel_uc_supports_guc(%struct.intel_uc* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %200

21:                                               ; preds = %1
  %22 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %23 = call i32 @intel_uc_uses_guc(%struct.intel_uc* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %27 = call i64 @uc_is_wopcm_locked(%struct.intel_uc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %200

30:                                               ; preds = %25, %21
  %31 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %32 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %31, i32 0, i32 0
  %33 = call i32 @intel_uc_fw_is_available(%struct.TYPE_9__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %30
  %36 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %37 = call i64 @uc_is_wopcm_locked(%struct.intel_uc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %41 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %40, i32 0, i32 0
  %42 = call i64 @intel_uc_fw_is_overridden(%struct.TYPE_9__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %46 = call i64 @intel_uc_supports_guc_submission(%struct.intel_uc* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44, %39, %35
  %49 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %50 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @intel_uc_fw_status_to_error(i32 %52)
  br label %55

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %48
  %56 = phi i32 [ %53, %48 ], [ 0, %54 ]
  store i32 %56, i32* %7, align 4
  br label %183

57:                                               ; preds = %30
  %58 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %59 = call i32 @uc_init_wopcm(%struct.intel_uc* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %183

63:                                               ; preds = %57
  %64 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %65 = call i32 @guc_reset_interrupts(%struct.intel_guc* %64)
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %67 = call i64 @IS_GEN(%struct.drm_i915_private* %66, i32 9)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 3, i32* %8, align 4
  br label %71

70:                                               ; preds = %63
  store i32 1, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %78 = call i32 @__uc_sanitize(%struct.intel_uc* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %183

82:                                               ; preds = %76
  %83 = load %struct.intel_huc*, %struct.intel_huc** %6, align 8
  %84 = call i32 @intel_huc_fw_upload(%struct.intel_huc* %83)
  %85 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %86 = call i32 @intel_guc_ads_reset(%struct.intel_guc* %85)
  %87 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %88 = call i32 @intel_guc_write_params(%struct.intel_guc* %87)
  %89 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %90 = call i32 @intel_guc_fw_upload(%struct.intel_guc* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %98

94:                                               ; preds = %82
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  br label %72

98:                                               ; preds = %93, %72
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %180

102:                                              ; preds = %98
  %103 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %104 = call i32 @guc_enable_communication(%struct.intel_guc* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %180

108:                                              ; preds = %102
  %109 = load %struct.intel_huc*, %struct.intel_huc** %6, align 8
  %110 = call i32 @intel_huc_auth(%struct.intel_huc* %109)
  %111 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %112 = call i32 @intel_guc_sample_forcewake(%struct.intel_guc* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %177

116:                                              ; preds = %108
  %117 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %118 = call i64 @intel_uc_supports_guc_submission(%struct.intel_uc* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %122 = call i32 @intel_guc_submission_enable(%struct.intel_guc* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %177

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %116
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %129 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @INTEL_UC_FW_TYPE_GUC, align 4
  %133 = call i32 @intel_uc_fw_type_repr(i32 %132)
  %134 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %135 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %139 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %143 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %147 = call i64 @intel_uc_supports_guc_submission(%struct.intel_uc* %146)
  %148 = call i32 @enableddisabled(i64 %147)
  %149 = call i32 @dev_info(i32 %131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %137, i32 %141, i32 %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %151 = call i64 @intel_uc_uses_huc(%struct.intel_uc* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %127
  %154 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %155 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @INTEL_UC_FW_TYPE_HUC, align 4
  %159 = call i32 @intel_uc_fw_type_repr(i32 %158)
  %160 = load %struct.intel_huc*, %struct.intel_huc** %6, align 8
  %161 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.intel_huc*, %struct.intel_huc** %6, align 8
  %165 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.intel_huc*, %struct.intel_huc** %6, align 8
  %169 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.intel_huc*, %struct.intel_huc** %6, align 8
  %173 = call i32 @intel_huc_is_authenticated(%struct.intel_huc* %172)
  %174 = call i32 @yesno(i32 %173)
  %175 = call i32 @dev_info(i32 %157, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %159, i32 %163, i32 %167, i32 %171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %153, %127
  store i32 0, i32* %2, align 4
  br label %200

177:                                              ; preds = %125, %115
  %178 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %179 = call i32 @guc_disable_communication(%struct.intel_guc* %178)
  br label %180

180:                                              ; preds = %177, %107, %101
  %181 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %182 = call i32 @__uc_capture_load_err_log(%struct.intel_uc* %181)
  br label %183

183:                                              ; preds = %180, %81, %62, %55
  %184 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %185 = call i32 @__uc_sanitize(%struct.intel_uc* %184)
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %183
  %189 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %190 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @dev_notice(i32 %192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %200

194:                                              ; preds = %183
  %195 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @i915_probe_error(%struct.drm_i915_private* %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* @EIO, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %194, %188, %176, %29, %20
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.TYPE_8__* @uc_to_gt(%struct.intel_uc*) #1

declare dso_local i32 @intel_uc_supports_guc(%struct.intel_uc*) #1

declare dso_local i32 @intel_uc_uses_guc(%struct.intel_uc*) #1

declare dso_local i64 @uc_is_wopcm_locked(%struct.intel_uc*) #1

declare dso_local i32 @intel_uc_fw_is_available(%struct.TYPE_9__*) #1

declare dso_local i64 @intel_uc_fw_is_overridden(%struct.TYPE_9__*) #1

declare dso_local i64 @intel_uc_supports_guc_submission(%struct.intel_uc*) #1

declare dso_local i32 @intel_uc_fw_status_to_error(i32) #1

declare dso_local i32 @uc_init_wopcm(%struct.intel_uc*) #1

declare dso_local i32 @guc_reset_interrupts(%struct.intel_guc*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @__uc_sanitize(%struct.intel_uc*) #1

declare dso_local i32 @intel_huc_fw_upload(%struct.intel_huc*) #1

declare dso_local i32 @intel_guc_ads_reset(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_write_params(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_fw_upload(%struct.intel_guc*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @guc_enable_communication(%struct.intel_guc*) #1

declare dso_local i32 @intel_huc_auth(%struct.intel_huc*) #1

declare dso_local i32 @intel_guc_sample_forcewake(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_submission_enable(%struct.intel_guc*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @intel_uc_fw_type_repr(i32) #1

declare dso_local i32 @enableddisabled(i64) #1

declare dso_local i64 @intel_uc_uses_huc(%struct.intel_uc*) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @intel_huc_is_authenticated(%struct.intel_huc*) #1

declare dso_local i32 @guc_disable_communication(%struct.intel_guc*) #1

declare dso_local i32 @__uc_capture_load_err_log(%struct.intel_uc*) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local i32 @i915_probe_error(%struct.drm_i915_private*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
