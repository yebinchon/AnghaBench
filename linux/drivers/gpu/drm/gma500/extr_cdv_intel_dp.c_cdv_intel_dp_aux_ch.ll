; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_aux_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_aux_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_encoder = type { %struct.TYPE_2__, %struct.cdv_intel_dp* }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.cdv_intel_dp = type { i32 }

@DP_AUX_CH_CTL_SEND_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dp_aux_ch not started status 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_TIME_OUT_400us = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_DONE = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_TIME_OUT_ERROR = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_RECEIVE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dp_aux_ch not done status 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"dp_aux_ch receive error status 0x%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"dp_aux_ch timeout status 0x%08x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_MESSAGE_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_encoder*, i32*, i32, i32*, i32)* @cdv_intel_dp_aux_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_aux_ch(%struct.gma_encoder* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gma_encoder*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cdv_intel_dp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %23, i32 0, i32 1
  %25 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %24, align 8
  store %struct.cdv_intel_dp* %25, %struct.cdv_intel_dp** %12, align 8
  %26 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %12, align 8
  %27 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %30 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.drm_device*, %struct.drm_device** %31, align 8
  store %struct.drm_device* %32, %struct.drm_device** %14, align 8
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 16
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %16, align 4
  store i32 100, i32* %20, align 4
  store i32 4, i32* %22, align 4
  %37 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %38 = call i64 @is_edp(%struct.gma_encoder* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %5
  store i32 10, i32* %22, align 4
  br label %41

41:                                               ; preds = %40, %5
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @REG_READ(i32 %42)
  %44 = load i32, i32* @DP_AUX_CH_CTL_SEND_BUSY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @REG_READ(i32 %48)
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %195

53:                                               ; preds = %41
  store i32 0, i32* %21, align 4
  br label %54

54:                                               ; preds = %128, %53
  %55 = load i32, i32* %21, align 4
  %56 = icmp slt i32 %55, 5
  br i1 %56, label %57, label %131

57:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %75, %57
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %17, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @pack_aux(i32* %69, i32 %72)
  %74 = call i32 @REG_WRITE(i32 %65, i32 %73)
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %17, align 4
  br label %58

78:                                               ; preds = %58
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @DP_AUX_CH_CTL_SEND_BUSY, align 4
  %81 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_400us, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* @DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %86, %89
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* @DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = or i32 %90, %93
  %95 = load i32, i32* @DP_AUX_CH_CTL_DONE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_ERROR, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @DP_AUX_CH_CTL_RECEIVE_ERROR, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @REG_WRITE(i32 %79, i32 %100)
  br label %102

102:                                              ; preds = %110, %78
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @REG_READ(i32 %103)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* @DP_AUX_CH_CTL_SEND_BUSY, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %112

110:                                              ; preds = %102
  %111 = call i32 @udelay(i32 100)
  br label %102

112:                                              ; preds = %109
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* @DP_AUX_CH_CTL_DONE, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_ERROR, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @DP_AUX_CH_CTL_RECEIVE_ERROR, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @REG_WRITE(i32 %113, i32 %120)
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* @DP_AUX_CH_CTL_DONE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %131

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %21, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %21, align 4
  br label %54

131:                                              ; preds = %126, %54
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* @DP_AUX_CH_CTL_DONE, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EBUSY, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %195

141:                                              ; preds = %131
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* @DP_AUX_CH_CTL_RECEIVE_ERROR, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @EIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %6, align 4
  br label %195

151:                                              ; preds = %141
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_ERROR, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @ETIMEDOUT, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %6, align 4
  br label %195

161:                                              ; preds = %151
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* @DP_AUX_CH_CTL_MESSAGE_SIZE_MASK, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* @DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT, align 4
  %166 = ashr i32 %164, %165
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %170, %161
  store i32 0, i32* %17, align 4
  br label %173

173:                                              ; preds = %190, %172
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %173
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %178, %179
  %181 = call i32 @REG_READ(i32 %180)
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %17, align 4
  %188 = sub nsw i32 %186, %187
  %189 = call i32 @unpack_aux(i32 %181, i32* %185, i32 %188)
  br label %190

190:                                              ; preds = %177
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, 4
  store i32 %192, i32* %17, align 4
  br label %173

193:                                              ; preds = %173
  %194 = load i32, i32* %18, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %193, %156, %146, %136, %47
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i64 @is_edp(%struct.gma_encoder*) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @pack_aux(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @unpack_aux(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
