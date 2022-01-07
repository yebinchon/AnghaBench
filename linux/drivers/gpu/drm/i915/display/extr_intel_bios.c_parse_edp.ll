; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_edp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.edp_power_seq }
%struct.edp_power_seq = type { i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_edp = type { i32, i32, %struct.edp_fast_link_params*, %struct.edp_power_seq* }
%struct.edp_fast_link_params = type { i32, i32, i32, i32 }

@BDB_EDP = common dso_local global i32 0, align 4
@DP_LINK_BW_1_62 = common dso_local global i32 0, align 4
@DP_LINK_BW_2_7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"VBT has unknown eDP link rate value %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"VBT has unknown eDP lane count value %u\0A\00", align 1
@DP_TRAIN_PRE_EMPH_LEVEL_0 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPH_LEVEL_1 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPH_LEVEL_2 = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPH_LEVEL_3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"VBT has unknown eDP pre-emphasis value %u\0A\00", align 1
@DP_TRAIN_VOLTAGE_SWING_LEVEL_0 = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_LEVEL_1 = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_LEVEL_2 = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_LEVEL_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"VBT has unknown eDP voltage swing value %u\0A\00", align 1
@i915_modparams = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_edp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_edp(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_edp*, align 8
  %6 = alloca %struct.edp_power_seq*, align 8
  %7 = alloca %struct.edp_fast_link_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %15 = load i32, i32* @BDB_EDP, align 4
  %16 = call %struct.bdb_edp* @find_section(%struct.bdb_header* %14, i32 %15)
  store %struct.bdb_edp* %16, %struct.bdb_edp** %5, align 8
  %17 = load %struct.bdb_edp*, %struct.bdb_edp** %5, align 8
  %18 = icmp ne %struct.bdb_edp* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %205

20:                                               ; preds = %2
  %21 = load %struct.bdb_edp*, %struct.bdb_edp** %5, align 8
  %22 = getelementptr inbounds %struct.bdb_edp, %struct.bdb_edp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 2
  %26 = ashr i32 %23, %25
  %27 = and i32 %26, 3
  switch i32 %27, label %43 [
    i32 143, label %28
    i32 142, label %33
    i32 141, label %38
  ]

28:                                               ; preds = %20
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 18, i32* %32, align 4
  br label %43

33:                                               ; preds = %20
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 24, i32* %37, align 4
  br label %43

38:                                               ; preds = %20
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 30, i32* %42, align 4
  br label %43

43:                                               ; preds = %20, %38, %33, %28
  %44 = load %struct.bdb_edp*, %struct.bdb_edp** %5, align 8
  %45 = getelementptr inbounds %struct.bdb_edp, %struct.bdb_edp* %44, i32 0, i32 3
  %46 = load %struct.edp_power_seq*, %struct.edp_power_seq** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.edp_power_seq, %struct.edp_power_seq* %46, i64 %48
  store %struct.edp_power_seq* %49, %struct.edp_power_seq** %6, align 8
  %50 = load %struct.bdb_edp*, %struct.bdb_edp** %5, align 8
  %51 = getelementptr inbounds %struct.bdb_edp, %struct.bdb_edp* %50, i32 0, i32 2
  %52 = load %struct.edp_fast_link_params*, %struct.edp_fast_link_params** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.edp_fast_link_params, %struct.edp_fast_link_params* %52, i64 %54
  store %struct.edp_fast_link_params* %55, %struct.edp_fast_link_params** %7, align 8
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 6
  %60 = load %struct.edp_power_seq*, %struct.edp_power_seq** %6, align 8
  %61 = bitcast %struct.edp_power_seq* %59 to i8*
  %62 = bitcast %struct.edp_power_seq* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.edp_fast_link_params*, %struct.edp_fast_link_params** %7, align 8
  %64 = getelementptr inbounds %struct.edp_fast_link_params, %struct.edp_fast_link_params* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %78 [
    i32 133, label %66
    i32 132, label %72
  ]

66:                                               ; preds = %43
  %67 = load i32, i32* @DP_LINK_BW_1_62, align 4
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %69 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  store i32 %67, i32* %71, align 4
  br label %83

72:                                               ; preds = %43
  %73 = load i32, i32* @DP_LINK_BW_2_7, align 4
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %75 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  store i32 %73, i32* %77, align 4
  br label %83

78:                                               ; preds = %43
  %79 = load %struct.edp_fast_link_params*, %struct.edp_fast_link_params** %7, align 8
  %80 = getelementptr inbounds %struct.edp_fast_link_params, %struct.edp_fast_link_params* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %78, %72, %66
  %84 = load %struct.edp_fast_link_params*, %struct.edp_fast_link_params** %7, align 8
  %85 = getelementptr inbounds %struct.edp_fast_link_params, %struct.edp_fast_link_params* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %102 [
    i32 140, label %87
    i32 139, label %92
    i32 138, label %97
  ]

87:                                               ; preds = %83
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %89 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %107

92:                                               ; preds = %83
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 2, i32* %96, align 4
  br label %107

97:                                               ; preds = %83
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %99 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 4, i32* %101, align 4
  br label %107

102:                                              ; preds = %83
  %103 = load %struct.edp_fast_link_params*, %struct.edp_fast_link_params** %7, align 8
  %104 = getelementptr inbounds %struct.edp_fast_link_params, %struct.edp_fast_link_params* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %97, %92, %87
  %108 = load %struct.edp_fast_link_params*, %struct.edp_fast_link_params** %7, align 8
  %109 = getelementptr inbounds %struct.edp_fast_link_params, %struct.edp_fast_link_params* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %135 [
    i32 134, label %111
    i32 137, label %117
    i32 136, label %123
    i32 135, label %129
  ]

111:                                              ; preds = %107
  %112 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_0, align 4
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %114 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  store i32 %112, i32* %116, align 4
  br label %140

117:                                              ; preds = %107
  %118 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_1, align 4
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %120 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  store i32 %118, i32* %122, align 4
  br label %140

123:                                              ; preds = %107
  %124 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_2, align 4
  %125 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %126 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  store i32 %124, i32* %128, align 4
  br label %140

129:                                              ; preds = %107
  %130 = load i32, i32* @DP_TRAIN_PRE_EMPH_LEVEL_3, align 4
  %131 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %132 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  store i32 %130, i32* %134, align 4
  br label %140

135:                                              ; preds = %107
  %136 = load %struct.edp_fast_link_params*, %struct.edp_fast_link_params** %7, align 8
  %137 = getelementptr inbounds %struct.edp_fast_link_params, %struct.edp_fast_link_params* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %135, %129, %123, %117, %111
  %141 = load %struct.edp_fast_link_params*, %struct.edp_fast_link_params** %7, align 8
  %142 = getelementptr inbounds %struct.edp_fast_link_params, %struct.edp_fast_link_params* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %168 [
    i32 131, label %144
    i32 130, label %150
    i32 129, label %156
    i32 128, label %162
  ]

144:                                              ; preds = %140
  %145 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_LEVEL_0, align 4
  %146 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %147 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  store i32 %145, i32* %149, align 4
  br label %173

150:                                              ; preds = %140
  %151 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_LEVEL_1, align 4
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %153 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  store i32 %151, i32* %155, align 4
  br label %173

156:                                              ; preds = %140
  %157 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_LEVEL_2, align 4
  %158 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %159 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  store i32 %157, i32* %161, align 4
  br label %173

162:                                              ; preds = %140
  %163 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_LEVEL_3, align 4
  %164 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %165 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  store i32 %163, i32* %167, align 4
  br label %173

168:                                              ; preds = %140
  %169 = load %struct.edp_fast_link_params*, %struct.edp_fast_link_params** %7, align 8
  %170 = getelementptr inbounds %struct.edp_fast_link_params, %struct.edp_fast_link_params* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %168, %162, %156, %150, %144
  %174 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %175 = getelementptr inbounds %struct.bdb_header, %struct.bdb_header* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp sge i32 %176, 173
  br i1 %177, label %178, label %205

178:                                              ; preds = %173
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %183 = icmp eq i32 %182, 1
  %184 = zext i1 %183 to i32
  %185 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %186 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  store i32 %184, i32* %188, align 4
  br label %204

189:                                              ; preds = %178
  %190 = load %struct.bdb_edp*, %struct.bdb_edp** %5, align 8
  %191 = getelementptr inbounds %struct.bdb_edp, %struct.bdb_edp* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %8, align 4
  %194 = mul nsw i32 %193, 4
  %195 = ashr i32 %192, %194
  %196 = and i32 %195, 15
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp eq i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %201 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %189, %181
  br label %205

205:                                              ; preds = %19, %204, %173
  ret void
}

declare dso_local %struct.bdb_edp* @find_section(%struct.bdb_header*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
