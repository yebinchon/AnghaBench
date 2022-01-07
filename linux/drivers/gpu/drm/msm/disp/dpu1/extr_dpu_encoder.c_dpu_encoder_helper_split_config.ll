; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_split_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_split_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i64, %struct.TYPE_3__, i32, %struct.dpu_hw_mdp*, i32 }
%struct.TYPE_3__ = type { i64 (%struct.dpu_encoder_phys.0*)* }
%struct.dpu_encoder_phys.0 = type opaque
%struct.dpu_hw_mdp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)* }
%struct.dpu_hw_mdp.1 = type opaque
%struct.split_pipe_cfg = type { i32, i32, i32, i32, i32 }
%struct.dpu_encoder_virt = type { %struct.msm_display_info }
%struct.msm_display_info = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"invalid arg(s), encoder %d\0A\00", align 1
@DRM_MODE_ENCODER_DSI = common dso_local global i64 0, align 8
@ENC_ROLE_SOLO = common dso_local global i64 0, align 8
@ENC_ROLE_MASTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"enable %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_helper_split_config(%struct.dpu_encoder_phys* %0, i32 %1) #0 {
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_virt*, align 8
  %6 = alloca %struct.split_pipe_cfg, align 4
  %7 = alloca %struct.dpu_hw_mdp*, align 8
  %8 = alloca %struct.msm_display_info*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %struct.split_pipe_cfg* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 20, i1 false)
  %10 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %11 = icmp ne %struct.dpu_encoder_phys* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %14 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %13, i32 0, i32 3
  %15 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %14, align 8
  %16 = icmp ne %struct.dpu_hw_mdp* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %19 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17, %12, %2
  %23 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %24 = icmp ne %struct.dpu_encoder_phys* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %117

27:                                               ; preds = %17
  %28 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %29 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(i32 %30)
  store %struct.dpu_encoder_virt* %31, %struct.dpu_encoder_virt** %5, align 8
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %33 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %32, i32 0, i32 3
  %34 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %33, align 8
  store %struct.dpu_hw_mdp* %34, %struct.dpu_hw_mdp** %7, align 8
  %35 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %36 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %35, i32 0, i32 0
  store %struct.msm_display_info* %36, %struct.msm_display_info** %8, align 8
  %37 = load %struct.msm_display_info*, %struct.msm_display_info** %8, align 8
  %38 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DRM_MODE_ENCODER_DSI, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %117

43:                                               ; preds = %27
  %44 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %45 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ENC_ROLE_SOLO, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %7, align 8
  %51 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)*, i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)** %52, align 8
  %54 = icmp ne i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %7, align 8
  %57 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)*, i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)** %58, align 8
  %60 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %7, align 8
  %61 = bitcast %struct.dpu_hw_mdp* %60 to %struct.dpu_hw_mdp.1*
  %62 = call i32 %59(%struct.dpu_hw_mdp.1* %61, %struct.split_pipe_cfg* %6)
  br label %63

63:                                               ; preds = %55, %49
  br label %117

64:                                               ; preds = %43
  %65 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %6, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %67 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %6, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %4, align 4
  %71 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %6, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %64
  %76 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %77 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64 (%struct.dpu_encoder_phys.0*)*, i64 (%struct.dpu_encoder_phys.0*)** %78, align 8
  %80 = icmp ne i64 (%struct.dpu_encoder_phys.0*)* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %83 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64 (%struct.dpu_encoder_phys.0*)*, i64 (%struct.dpu_encoder_phys.0*)** %84, align 8
  %86 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %87 = bitcast %struct.dpu_encoder_phys* %86 to %struct.dpu_encoder_phys.0*
  %88 = call i64 %85(%struct.dpu_encoder_phys.0* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %6, i32 0, i32 2
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %90, %81, %75, %64
  %93 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %94 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ENC_ROLE_MASTER, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %92
  %99 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %100 = getelementptr inbounds %struct.split_pipe_cfg, %struct.split_pipe_cfg* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %7, align 8
  %104 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)*, i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)** %105, align 8
  %107 = icmp ne i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %98
  %109 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %7, align 8
  %110 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)*, i32 (%struct.dpu_hw_mdp.1*, %struct.split_pipe_cfg*)** %111, align 8
  %113 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %7, align 8
  %114 = bitcast %struct.dpu_hw_mdp* %113 to %struct.dpu_hw_mdp.1*
  %115 = call i32 %112(%struct.dpu_hw_mdp.1* %114, %struct.split_pipe_cfg* %6)
  br label %116

116:                                              ; preds = %108, %98
  br label %117

117:                                              ; preds = %22, %42, %63, %116, %92
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DPU_ERROR(i8*, i32) #2

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(i32) #2

declare dso_local i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
