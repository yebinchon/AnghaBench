; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_resource_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_resource_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.dpu_encoder_virt = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MSM_DISPLAY_CAP_VID_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"sw_event:%d, work cancelled\0A\00", align 1
@DPU_ENC_RC_STATE_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"id;%u, sw_event:%d, rc in ON state\0A\00", align 1
@DPU_ENC_RC_STATE_OFF = common dso_local global i32 0, align 4
@DPU_ENC_RC_STATE_IDLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"id;%u, sw_event:%d, rc in state %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"kickoff\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"id:%d, sw_event:%d,rc:%d-unexpected\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"id:%d skip schedule work\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"frame done\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"id:%u, sw_event:%d, rc in %d state\0A\00", align 1
@DPU_ENC_RC_STATE_PRE_OFF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"pre stop\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"id: %u, sw_event:%d, rc in OFF state\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"id: %u, sw_event:%d, rc in state %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"id: %u, sw_event:%d, rc:%d !ON state\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"id:%u, sw_event:%d, rc:%d frame pending\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"id:%u, unexpected sw_event: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, i32)* @dpu_encoder_resource_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_resource_control(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_encoder_virt*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = icmp ne %struct.drm_encoder* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.msm_drm_private*, %struct.msm_drm_private** %20, align 8
  %22 = icmp ne %struct.msm_drm_private* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %16, %11, %2
  %29 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %421

32:                                               ; preds = %23
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %34 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %33)
  store %struct.dpu_encoder_virt* %34, %struct.dpu_encoder_virt** %6, align 8
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %36 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.msm_drm_private*, %struct.msm_drm_private** %38, align 8
  store %struct.msm_drm_private* %39, %struct.msm_drm_private** %7, align 8
  %40 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %41 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MSM_DISPLAY_CAP_VID_MODE, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %47 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %32
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 130
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 128
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 129
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %421

60:                                               ; preds = %56, %53, %50, %32
  %61 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %62 = call i32 @DRMID(%struct.drm_encoder* %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %65 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %68 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @trace_dpu_enc_rc(i32 %62, i32 %63, i32 %66, i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  switch i32 %71, label %395 [
    i32 130, label %72
    i32 131, label %156
    i32 129, label %203
    i32 128, label %268
    i32 132, label %331
  ]

72:                                               ; preds = %60
  %73 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %74 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %73, i32 0, i32 4
  %75 = call i32 @cancel_delayed_work_sync(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %83 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %82, i32 0, i32 2
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %86 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DPU_ENC_RC_STATE_ON, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %92 = call i32 @DRMID(%struct.drm_encoder* %91)
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %96 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %95, i32 0, i32 2
  %97 = call i32 @mutex_unlock(i32* %96)
  store i32 0, i32* %3, align 4
  br label %421

98:                                               ; preds = %81
  %99 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %100 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @DPU_ENC_RC_STATE_OFF, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %106 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @DPU_ENC_RC_STATE_IDLE, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %112 = call i32 @DRMID(%struct.drm_encoder* %111)
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %115 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %113, i32 %116)
  %118 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %119 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %118, i32 0, i32 2
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %421

123:                                              ; preds = %104, %98
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %129 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @DPU_ENC_RC_STATE_IDLE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %135 = call i32 @_dpu_encoder_irq_control(%struct.drm_encoder* %134, i32 1)
  br label %139

136:                                              ; preds = %127, %124
  %137 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %138 = call i32 @_dpu_encoder_resource_control_helper(%struct.drm_encoder* %137, i32 1)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* @DPU_ENC_RC_STATE_ON, align 4
  %141 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %142 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %144 = call i32 @DRMID(%struct.drm_encoder* %143)
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %147 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %150 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @trace_dpu_enc_rc(i32 %144, i32 %145, i32 %148, i32 %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %153 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %154 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %153, i32 0, i32 2
  %155 = call i32 @mutex_unlock(i32* %154)
  br label %410

156:                                              ; preds = %60
  %157 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %158 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @DPU_ENC_RC_STATE_ON, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %156
  %163 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %164 = call i32 @DRMID(%struct.drm_encoder* %163)
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %167 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %164, i32 %165, i32 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %421

172:                                              ; preds = %156
  %173 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %174 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @dpu_crtc_frame_pending(i32 %175)
  %177 = icmp sgt i32 %176, 1
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %180 = call i32 @DRMID(%struct.drm_encoder* %179)
  %181 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %180)
  store i32 0, i32* %3, align 4
  br label %421

182:                                              ; preds = %172
  %183 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %184 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %187 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %186, i32 0, i32 4
  %188 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %189 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @msecs_to_jiffies(i32 %190)
  %192 = call i32 @queue_delayed_work(i32 %185, i32* %187, i32 %191)
  %193 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %194 = call i32 @DRMID(%struct.drm_encoder* %193)
  %195 = load i32, i32* %5, align 4
  %196 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %197 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %200 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @trace_dpu_enc_rc(i32 %194, i32 %195, i32 %198, i32 %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %410

203:                                              ; preds = %60
  %204 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %205 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %204, i32 0, i32 4
  %206 = call i32 @cancel_delayed_work_sync(i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %209, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %208, %203
  %213 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %214 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %213, i32 0, i32 2
  %215 = call i32 @mutex_lock(i32* %214)
  %216 = load i32, i32* %8, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %212
  %219 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %220 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @DPU_ENC_RC_STATE_IDLE, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %226 = call i32 @_dpu_encoder_irq_control(%struct.drm_encoder* %225, i32 1)
  br label %251

227:                                              ; preds = %218, %212
  %228 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %229 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @DPU_ENC_RC_STATE_OFF, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %239, label %233

233:                                              ; preds = %227
  %234 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %235 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @DPU_ENC_RC_STATE_IDLE, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %233, %227
  %240 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %241 = call i32 @DRMID(%struct.drm_encoder* %240)
  %242 = load i32, i32* %5, align 4
  %243 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %244 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %241, i32 %242, i32 %245)
  %247 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %248 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %247, i32 0, i32 2
  %249 = call i32 @mutex_unlock(i32* %248)
  store i32 0, i32* %3, align 4
  br label %421

250:                                              ; preds = %233
  br label %251

251:                                              ; preds = %250, %224
  %252 = load i32, i32* @DPU_ENC_RC_STATE_PRE_OFF, align 4
  %253 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %254 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %256 = call i32 @DRMID(%struct.drm_encoder* %255)
  %257 = load i32, i32* %5, align 4
  %258 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %259 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %262 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @trace_dpu_enc_rc(i32 %256, i32 %257, i32 %260, i32 %263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %265 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %266 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %265, i32 0, i32 2
  %267 = call i32 @mutex_unlock(i32* %266)
  br label %410

268:                                              ; preds = %60
  %269 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %270 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %269, i32 0, i32 2
  %271 = call i32 @mutex_lock(i32* %270)
  %272 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %273 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @DPU_ENC_RC_STATE_OFF, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %268
  %278 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %279 = call i32 @DRMID(%struct.drm_encoder* %278)
  %280 = load i32, i32* %5, align 4
  %281 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %279, i32 %280)
  %282 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %283 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %282, i32 0, i32 2
  %284 = call i32 @mutex_unlock(i32* %283)
  store i32 0, i32* %3, align 4
  br label %421

285:                                              ; preds = %268
  %286 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %287 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @DPU_ENC_RC_STATE_ON, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %304

291:                                              ; preds = %285
  %292 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %293 = call i32 @DRMID(%struct.drm_encoder* %292)
  %294 = load i32, i32* %5, align 4
  %295 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %296 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %293, i32 %294, i32 %297)
  %299 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %300 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %299, i32 0, i32 2
  %301 = call i32 @mutex_unlock(i32* %300)
  %302 = load i32, i32* @EINVAL, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %3, align 4
  br label %421

304:                                              ; preds = %285
  br label %305

305:                                              ; preds = %304
  %306 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %307 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @DPU_ENC_RC_STATE_PRE_OFF, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %305
  %312 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %313 = call i32 @_dpu_encoder_resource_control_helper(%struct.drm_encoder* %312, i32 0)
  br label %314

314:                                              ; preds = %311, %305
  %315 = load i32, i32* @DPU_ENC_RC_STATE_OFF, align 4
  %316 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %317 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %316, i32 0, i32 0
  store i32 %315, i32* %317, align 8
  %318 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %319 = call i32 @DRMID(%struct.drm_encoder* %318)
  %320 = load i32, i32* %5, align 4
  %321 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %322 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %325 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @trace_dpu_enc_rc(i32 %319, i32 %320, i32 %323, i32 %326, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %328 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %329 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %328, i32 0, i32 2
  %330 = call i32 @mutex_unlock(i32* %329)
  br label %410

331:                                              ; preds = %60
  %332 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %333 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %332, i32 0, i32 2
  %334 = call i32 @mutex_lock(i32* %333)
  %335 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %336 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @DPU_ENC_RC_STATE_ON, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %351

340:                                              ; preds = %331
  %341 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %342 = call i32 @DRMID(%struct.drm_encoder* %341)
  %343 = load i32, i32* %5, align 4
  %344 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %345 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %342, i32 %343, i32 %346)
  %348 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %349 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %348, i32 0, i32 2
  %350 = call i32 @mutex_unlock(i32* %349)
  store i32 0, i32* %3, align 4
  br label %421

351:                                              ; preds = %331
  %352 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %353 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %352, i32 0, i32 3
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 0
  %356 = load i32, i32* %355, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %369

358:                                              ; preds = %351
  %359 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %360 = call i32 @DRMID(%struct.drm_encoder* %359)
  %361 = load i32, i32* %5, align 4
  %362 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %363 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %360, i32 %361, i32 %364)
  %366 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %367 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %366, i32 0, i32 2
  %368 = call i32 @mutex_unlock(i32* %367)
  store i32 0, i32* %3, align 4
  br label %421

369:                                              ; preds = %351
  %370 = load i32, i32* %8, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %374 = call i32 @_dpu_encoder_irq_control(%struct.drm_encoder* %373, i32 0)
  br label %378

375:                                              ; preds = %369
  %376 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %377 = call i32 @_dpu_encoder_resource_control_helper(%struct.drm_encoder* %376, i32 0)
  br label %378

378:                                              ; preds = %375, %372
  %379 = load i32, i32* @DPU_ENC_RC_STATE_IDLE, align 4
  %380 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %381 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %380, i32 0, i32 0
  store i32 %379, i32* %381, align 8
  %382 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %383 = call i32 @DRMID(%struct.drm_encoder* %382)
  %384 = load i32, i32* %5, align 4
  %385 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %386 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %389 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @trace_dpu_enc_rc(i32 %383, i32 %384, i32 %387, i32 %390, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %392 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %393 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %392, i32 0, i32 2
  %394 = call i32 @mutex_unlock(i32* %393)
  br label %410

395:                                              ; preds = %60
  %396 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %397 = call i32 @DRMID(%struct.drm_encoder* %396)
  %398 = load i32, i32* %5, align 4
  %399 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %397, i32 %398)
  %400 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %401 = call i32 @DRMID(%struct.drm_encoder* %400)
  %402 = load i32, i32* %5, align 4
  %403 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %404 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %407 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = call i32 @trace_dpu_enc_rc(i32 %401, i32 %402, i32 %405, i32 %408, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %410

410:                                              ; preds = %395, %378, %314, %251, %182, %139
  %411 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %412 = call i32 @DRMID(%struct.drm_encoder* %411)
  %413 = load i32, i32* %5, align 4
  %414 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %415 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %418 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @trace_dpu_enc_rc(i32 %412, i32 %413, i32 %416, i32 %419, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %421

421:                                              ; preds = %410, %358, %340, %291, %277, %239, %178, %162, %110, %90, %59, %28
  %422 = load i32, i32* %3, align 4
  ret i32 %422
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @trace_dpu_enc_rc(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @_dpu_encoder_irq_control(%struct.drm_encoder*, i32) #1

declare dso_local i32 @_dpu_encoder_resource_control_helper(%struct.drm_encoder*, i32) #1

declare dso_local i32 @dpu_crtc_frame_pending(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
