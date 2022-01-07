; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_virt_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_virt_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_connector_state = type { i32 }
%struct.dpu_encoder_virt = type { i32, i32, %struct.dpu_encoder_phys** }
%struct.dpu_encoder_phys = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dpu_encoder_phys*, %struct.drm_crtc_state*, %struct.drm_connector_state*)*, i32 (%struct.dpu_encoder_phys*, %struct.drm_display_mode*, %struct.drm_display_mode*)* }
%struct.dpu_kms = type { i32 }
%struct.msm_display_topology = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"invalid arg(s), drm_enc %d, crtc/conn state %d/%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"mode unsupported, phys idx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @dpu_encoder_virt_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_virt_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.dpu_encoder_virt*, align 8
  %9 = alloca %struct.msm_drm_private*, align 8
  %10 = alloca %struct.dpu_kms*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  %13 = alloca %struct.msm_display_topology, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dpu_encoder_phys*, align 8
  %17 = alloca %struct.msm_display_topology, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %19 = icmp ne %struct.drm_encoder* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %22 = icmp ne %struct.drm_crtc_state* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %25 = icmp ne %struct.drm_connector_state* %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %23, %20, %3
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %28 = icmp ne %struct.drm_encoder* %27, null
  %29 = zext i1 %28 to i32
  %30 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %31 = icmp ne %struct.drm_crtc_state* %30, null
  %32 = zext i1 %31 to i32
  %33 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %34 = icmp ne %struct.drm_connector_state* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %172

39:                                               ; preds = %23
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %41 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %40)
  store %struct.dpu_encoder_virt* %41, %struct.dpu_encoder_virt** %8, align 8
  %42 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %8, align 8
  %43 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %45 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.msm_drm_private*, %struct.msm_drm_private** %47, align 8
  store %struct.msm_drm_private* %48, %struct.msm_drm_private** %9, align 8
  %49 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  %50 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.dpu_kms* @to_dpu_kms(i32 %51)
  store %struct.dpu_kms* %52, %struct.dpu_kms** %10, align 8
  %53 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %54 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %53, i32 0, i32 1
  store %struct.drm_display_mode* %54, %struct.drm_display_mode** %11, align 8
  %55 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %56 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %55, i32 0, i32 0
  store %struct.drm_display_mode* %56, %struct.drm_display_mode** %12, align 8
  %57 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %58 = call i32 @DRMID(%struct.drm_encoder* %57)
  %59 = call i32 @trace_dpu_enc_atomic_check(i32 %58)
  %60 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %61 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %64 = call i32 @_dpu_encoder_adjust_mode(i32 %62, %struct.drm_display_mode* %63)
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %128, %39
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %8, align 8
  %68 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %131

71:                                               ; preds = %65
  %72 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %8, align 8
  %73 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %72, i32 0, i32 2
  %74 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %74, i64 %76
  %78 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %77, align 8
  store %struct.dpu_encoder_phys* %78, %struct.dpu_encoder_phys** %16, align 8
  %79 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %16, align 8
  %80 = icmp ne %struct.dpu_encoder_phys* %79, null
  br i1 %80, label %81, label %96

81:                                               ; preds = %71
  %82 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %16, align 8
  %83 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32 (%struct.dpu_encoder_phys*, %struct.drm_crtc_state*, %struct.drm_connector_state*)*, i32 (%struct.dpu_encoder_phys*, %struct.drm_crtc_state*, %struct.drm_connector_state*)** %84, align 8
  %86 = icmp ne i32 (%struct.dpu_encoder_phys*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %16, align 8
  %89 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dpu_encoder_phys*, %struct.drm_crtc_state*, %struct.drm_connector_state*)*, i32 (%struct.dpu_encoder_phys*, %struct.drm_crtc_state*, %struct.drm_connector_state*)** %90, align 8
  %92 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %16, align 8
  %93 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %94 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %95 = call i32 %91(%struct.dpu_encoder_phys* %92, %struct.drm_crtc_state* %93, %struct.drm_connector_state* %94)
  store i32 %95, i32* %15, align 4
  br label %120

96:                                               ; preds = %81, %71
  %97 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %16, align 8
  %98 = icmp ne %struct.dpu_encoder_phys* %97, null
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %16, align 8
  %101 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32 (%struct.dpu_encoder_phys*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, i32 (%struct.dpu_encoder_phys*, %struct.drm_display_mode*, %struct.drm_display_mode*)** %102, align 8
  %104 = icmp ne i32 (%struct.dpu_encoder_phys*, %struct.drm_display_mode*, %struct.drm_display_mode*)* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %16, align 8
  %107 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32 (%struct.dpu_encoder_phys*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, i32 (%struct.dpu_encoder_phys*, %struct.drm_display_mode*, %struct.drm_display_mode*)** %108, align 8
  %110 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %16, align 8
  %111 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %113 = call i32 %109(%struct.dpu_encoder_phys* %110, %struct.drm_display_mode* %111, %struct.drm_display_mode* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %105
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %115, %105
  br label %119

119:                                              ; preds = %118, %99, %96
  br label %120

120:                                              ; preds = %119, %87
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %8, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  br label %131

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %65

131:                                              ; preds = %123, %65
  %132 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %8, align 8
  %133 = load %struct.dpu_kms*, %struct.dpu_kms** %10, align 8
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %135 = call i32 @dpu_encoder_get_topology(%struct.dpu_encoder_virt* %132, %struct.dpu_kms* %133, %struct.drm_display_mode* %134)
  %136 = getelementptr inbounds %struct.msm_display_topology, %struct.msm_display_topology* %17, i32 0, i32 0
  store i32 %135, i32* %136, align 4
  %137 = bitcast %struct.msm_display_topology* %13 to i8*
  %138 = bitcast %struct.msm_display_topology* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 4, i1 false)
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %161, label %141

141:                                              ; preds = %131
  %142 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %143 = call i64 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %8, align 8
  %147 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load %struct.dpu_kms*, %struct.dpu_kms** %10, align 8
  %152 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %151, i32 0, i32 0
  %153 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %154 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %155 = getelementptr inbounds %struct.msm_display_topology, %struct.msm_display_topology* %13, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dpu_rm_reserve(i32* %152, %struct.drm_encoder* %153, %struct.drm_crtc_state* %154, i32 %156, i32 1)
  store i32 %157, i32* %15, align 4
  %158 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %8, align 8
  %159 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %150, %145, %141
  br label %161

161:                                              ; preds = %160, %131
  %162 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %163 = call i32 @DRMID(%struct.drm_encoder* %162)
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @trace_dpu_enc_atomic_check_flags(i32 %163, i32 %166, i32 %169)
  %171 = load i32, i32* %15, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %161, %26
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @DPU_ERROR(i8*, i32, i32, i32) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt*, i8*) #1

declare dso_local %struct.dpu_kms* @to_dpu_kms(i32) #1

declare dso_local i32 @trace_dpu_enc_atomic_check(i32) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @_dpu_encoder_adjust_mode(i32, %struct.drm_display_mode*) #1

declare dso_local i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt*, i8*, i32) #1

declare dso_local i32 @dpu_encoder_get_topology(%struct.dpu_encoder_virt*, %struct.dpu_kms*, %struct.drm_display_mode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state*) #1

declare dso_local i32 @dpu_rm_reserve(i32*, %struct.drm_encoder*, %struct.drm_crtc_state*, i32, i32) #1

declare dso_local i32 @trace_dpu_enc_atomic_check_flags(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
