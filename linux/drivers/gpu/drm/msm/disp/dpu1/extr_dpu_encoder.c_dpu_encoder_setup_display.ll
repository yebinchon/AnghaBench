; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_setup_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_setup_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_virt = type { i32, i32, %struct.dpu_encoder_phys**, i32, i32, i32, i32* }
%struct.dpu_encoder_phys = type { i32, i32 }
%struct.dpu_kms = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.msm_display_info = type { i32, i32, i32, i32* }
%struct.dpu_enc_phys_init_params = type { i32, i32, i32*, i32*, i32*, %struct.dpu_kms* }

@.str = private unnamed_addr constant [31 x i8] c"invalid arg(s), enc %d kms %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dpu_encoder_parent_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@INTF_DSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"unsupported display interface type\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"dsi_info->num_of_h_tiles %d\0A\00", align 1
@MSM_DISPLAY_CAP_CMD_MODE = common dso_local global i32 0, align 4
@MSM_DISPLAY_CAP_VID_MODE = common dso_local global i32 0, align 4
@ENC_ROLE_MASTER = common dso_local global i32 0, align 4
@ENC_ROLE_SLAVE = common dso_local global i32 0, align 4
@ENC_ROLE_SOLO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"h_tile_instance %d = %d, split_role %d\0A\00", align 1
@INTF_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"could not get intf: type %d, id %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to add phys encs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_virt*, %struct.dpu_kms*, %struct.msm_display_info*)* @dpu_encoder_setup_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_setup_display(%struct.dpu_encoder_virt* %0, %struct.dpu_kms* %1, %struct.msm_display_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_virt*, align 8
  %6 = alloca %struct.dpu_kms*, align 8
  %7 = alloca %struct.msm_display_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpu_enc_phys_init_params, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dpu_encoder_phys*, align 8
  store %struct.dpu_encoder_virt* %0, %struct.dpu_encoder_virt** %5, align 8
  store %struct.dpu_kms* %1, %struct.dpu_kms** %6, align 8
  store %struct.msm_display_info* %2, %struct.msm_display_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %15 = icmp ne %struct.dpu_encoder_virt* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.dpu_kms*, %struct.dpu_kms** %6, align 8
  %18 = icmp ne %struct.dpu_kms* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %21 = icmp ne %struct.dpu_encoder_virt* %20, null
  %22 = zext i1 %21 to i32
  %23 = load %struct.dpu_kms*, %struct.dpu_kms** %6, align 8
  %24 = icmp ne %struct.dpu_kms* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %204

29:                                               ; preds = %16
  %30 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %31 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %30, i32 0, i32 6
  store i32* null, i32** %31, align 8
  %32 = call i32 @memset(%struct.dpu_enc_phys_init_params* %11, i32 0, i32 40)
  %33 = load %struct.dpu_kms*, %struct.dpu_kms** %6, align 8
  %34 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %11, i32 0, i32 5
  store %struct.dpu_kms* %33, %struct.dpu_kms** %34, align 8
  %35 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %36 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %11, i32 0, i32 4
  store i32* %36, i32** %37, align 8
  %38 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %11, i32 0, i32 3
  store i32* @dpu_encoder_parent_ops, i32** %38, align 8
  %39 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %40 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %11, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  %42 = call i32 (i8*, ...) @DPU_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %44 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %48 [
    i32 128, label %46
  ]

46:                                               ; preds = %29
  %47 = load i32, i32* @INTF_DSI, align 4
  store i32 %47, i32* %10, align 4
  br label %53

48:                                               ; preds = %29
  %49 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %50 = call i32 (%struct.dpu_encoder_virt*, i8*, ...) @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %204

53:                                               ; preds = %46
  %54 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %55 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  %60 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %61 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @DPU_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %65 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MSM_DISPLAY_CAP_CMD_MODE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %53
  %71 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %72 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MSM_DISPLAY_CAP_VID_MODE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70, %53
  %78 = load %struct.dpu_kms*, %struct.dpu_kms** %6, align 8
  %79 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %86 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %77, %70
  %88 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %89 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %88, i32 0, i32 1
  %90 = call i32 @mutex_lock(i32* %89)
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %168, %87
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %94 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br label %101

101:                                              ; preds = %97, %91
  %102 = phi i1 [ false, %91 ], [ %100, %97 ]
  br i1 %102, label %103, label %171

103:                                              ; preds = %101
  %104 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %105 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %12, align 4
  %111 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %112 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %125

115:                                              ; preds = %103
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @ENC_ROLE_MASTER, align 4
  %120 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %11, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  br label %124

121:                                              ; preds = %115
  %122 = load i32, i32* @ENC_ROLE_SLAVE, align 4
  %123 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %11, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %118
  br label %128

125:                                              ; preds = %103
  %126 = load i32, i32* @ENC_ROLE_SOLO, align 4
  %127 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %11, i32 0, i32 1
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %124
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %12, align 4
  %131 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %11, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @DPU_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %129, i32 %130, i32 %132)
  %134 = load %struct.dpu_kms*, %struct.dpu_kms** %6, align 8
  %135 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @dpu_encoder_get_intf(%struct.TYPE_4__* %136, i32 %137, i32 %138)
  %140 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %11, i32 0, i32 0
  store i32 %139, i32* %140, align 8
  %141 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %11, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @INTF_MAX, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %128
  %146 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 (%struct.dpu_encoder_virt*, i8*, ...) @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %145, %128
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %167, label %155

155:                                              ; preds = %152
  %156 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %157 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %160 = call i32 @dpu_encoder_virt_add_phys_encs(i32 %158, %struct.dpu_encoder_virt* %159, %struct.dpu_enc_phys_init_params* %11)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %165 = call i32 (%struct.dpu_encoder_virt*, i8*, ...) @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %155
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %91

171:                                              ; preds = %101
  store i32 0, i32* %9, align 4
  br label %172

172:                                              ; preds = %196, %171
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %175 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %172
  %179 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %180 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %179, i32 0, i32 2
  %181 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %181, i64 %183
  %185 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %184, align 8
  store %struct.dpu_encoder_phys* %185, %struct.dpu_encoder_phys** %13, align 8
  %186 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %13, align 8
  %187 = icmp ne %struct.dpu_encoder_phys* %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %178
  %189 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %13, align 8
  %190 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %189, i32 0, i32 1
  %191 = call i32 @atomic_set(i32* %190, i32 0)
  %192 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %13, align 8
  %193 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %192, i32 0, i32 0
  %194 = call i32 @atomic_set(i32* %193, i32 0)
  br label %195

195:                                              ; preds = %188, %178
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %172

199:                                              ; preds = %172
  %200 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %201 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %200, i32 0, i32 1
  %202 = call i32 @mutex_unlock(i32* %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %199, %48, %19
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32 @DPU_ERROR(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.dpu_enc_phys_init_params*, i32, i32) #1

declare dso_local i32 @DPU_DEBUG(i8*, ...) #1

declare dso_local i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt*, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dpu_encoder_get_intf(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dpu_encoder_virt_add_phys_encs(i32, %struct.dpu_encoder_virt*, %struct.dpu_enc_phys_init_params*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
