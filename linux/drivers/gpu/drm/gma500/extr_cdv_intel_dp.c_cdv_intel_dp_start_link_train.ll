; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_start_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_start_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.cdv_intel_dp*, %struct.TYPE_2__ }
%struct.cdv_intel_dp = type { i32, i32*, i32, i32*, i32*, i32 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@DP_PORT_EN = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Link config\0A\00", align 1
@DP_LINK_BW_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Start train\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"DP Link Train Set %x, Link_config %x, %x\0A\00", align 1
@DP_TRAINING_PATTERN_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failure in aux-transfer setting pattern 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"DP Link status %x, %x, %x, %x, %x, %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"PT1 train is done\0A\00", align 1
@DP_TRAIN_MAX_SWING_REACHED = common dso_local global i32 0, align 4
@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"failure in DP patter 1 training, train set %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gma_encoder*)* @cdv_intel_dp_start_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_dp_start_link_train(%struct.gma_encoder* %0) #0 {
  %2 = alloca %struct.gma_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.cdv_intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %2, align 8
  %11 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %3, align 8
  %15 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %16 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %15, i32 0, i32 0
  %17 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %16, align 8
  store %struct.cdv_intel_dp* %17, %struct.cdv_intel_dp** %4, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %19 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @DP_PORT_EN, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @DP_LINK_TRAIN_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @DP_LINK_TRAIN_PAT_1, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %33 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @REG_WRITE(i32 %34, i32 %35)
  %37 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %38 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @REG_READ(i32 %39)
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = call i32 @gma_wait_for_vblank(%struct.drm_device* %41)
  %43 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %45 = load i32, i32* @DP_LINK_BW_SET, align 4
  %46 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %47 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @cdv_intel_dp_aux_native_write(%struct.gma_encoder* %44, i32 %45, i32* %48, i32 2)
  %50 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %51 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @memset(i32* %52, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %54 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @DP_LINK_TRAIN_PAT_1, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %188, %1
  %59 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %60 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %65 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %70 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %68, i32 %73)
  %75 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @DP_TRAINING_PATTERN_1, align 4
  %78 = call i32 @cdv_intel_dp_set_link_train(%struct.gma_encoder* %75, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %58
  %81 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %58
  %83 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %84 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %85 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cdv_intel_dp_set_vswing_premph(%struct.gma_encoder* %83, i32 %88)
  %90 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %91 = load i32, i32* @DP_TRAINING_PATTERN_1, align 4
  %92 = call i32 @cdv_intel_dplink_set_level(%struct.gma_encoder* %90, i32 %91)
  %93 = call i32 @udelay(i32 200)
  %94 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %95 = call i32 @cdv_intel_dp_get_link_status(%struct.gma_encoder* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %82
  br label %198

98:                                               ; preds = %82
  %99 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %100 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %105 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %110 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %115 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %120 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %125 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %108, i32 %113, i32 %118, i32 %123, i32 %128)
  %130 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %131 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %134 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @cdv_intel_clock_recovery_ok(i32* %132, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %98
  %139 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %198

140:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %160, %140
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %144 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %141
  %148 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %149 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @DP_TRAIN_MAX_SWING_REACHED, align 4
  %156 = and i32 %154, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %163

159:                                              ; preds = %147
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %141

163:                                              ; preds = %158, %141
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %166 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %164, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %198

170:                                              ; preds = %163
  %171 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %172 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* %6, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %170
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp eq i32 %183, 5
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %198

186:                                              ; preds = %180
  br label %188

187:                                              ; preds = %170
  store i32 0, i32* %8, align 4
  br label %188

188:                                              ; preds = %187, %186
  %189 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %190 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %195 = and i32 %193, %194
  store i32 %195, i32* %6, align 4
  %196 = load %struct.gma_encoder*, %struct.gma_encoder** %2, align 8
  %197 = call i32 @cdv_intel_get_adjust_train(%struct.gma_encoder* %196)
  br label %58

198:                                              ; preds = %185, %169, %138, %97
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %198
  %202 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %203 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %201, %198
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %211 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  ret void
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @gma_wait_for_vblank(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @cdv_intel_dp_aux_native_write(%struct.gma_encoder*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cdv_intel_dp_set_link_train(%struct.gma_encoder*, i32, i32) #1

declare dso_local i32 @cdv_intel_dp_set_vswing_premph(%struct.gma_encoder*, i32) #1

declare dso_local i32 @cdv_intel_dplink_set_level(%struct.gma_encoder*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cdv_intel_dp_get_link_status(%struct.gma_encoder*) #1

declare dso_local i64 @cdv_intel_clock_recovery_ok(i32*, i32) #1

declare dso_local i32 @cdv_intel_get_adjust_train(%struct.gma_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
