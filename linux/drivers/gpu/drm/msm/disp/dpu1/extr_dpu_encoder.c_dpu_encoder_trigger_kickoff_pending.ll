; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_trigger_kickoff_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_trigger_kickoff_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys**, %struct.msm_display_info }
%struct.dpu_encoder_phys = type { %struct.dpu_hw_ctl* }
%struct.dpu_hw_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.1*)* }
%struct.dpu_hw_ctl.0 = type opaque
%struct.dpu_hw_ctl.1 = type opaque
%struct.msm_display_info = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@MSM_DISPLAY_CAP_CMD_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_trigger_kickoff_pending(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_hw_ctl*, align 8
  %7 = alloca %struct.msm_display_info*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = icmp ne %struct.drm_encoder* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %87

12:                                               ; preds = %1
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %13)
  store %struct.dpu_encoder_virt* %14, %struct.dpu_encoder_virt** %3, align 8
  %15 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %15, i32 0, i32 3
  store %struct.msm_display_info* %16, %struct.msm_display_info** %7, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %84, %12
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %20 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %87

23:                                               ; preds = %17
  %24 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %25 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %24, i32 0, i32 2
  %26 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %26, i64 %28
  %30 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %29, align 8
  store %struct.dpu_encoder_phys* %30, %struct.dpu_encoder_phys** %4, align 8
  %31 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %32 = icmp ne %struct.dpu_encoder_phys* %31, null
  br i1 %32, label %33, label %83

33:                                               ; preds = %23
  %34 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %35 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %34, i32 0, i32 0
  %36 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %35, align 8
  %37 = icmp ne %struct.dpu_hw_ctl* %36, null
  br i1 %37, label %38, label %83

38:                                               ; preds = %33
  %39 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %40 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %39, i32 0, i32 0
  %41 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %40, align 8
  store %struct.dpu_hw_ctl* %41, %struct.dpu_hw_ctl** %6, align 8
  %42 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %43 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (%struct.dpu_hw_ctl.1*)*, i32 (%struct.dpu_hw_ctl.1*)** %44, align 8
  %46 = icmp ne i32 (%struct.dpu_hw_ctl.1*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %49 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (%struct.dpu_hw_ctl.1*)*, i32 (%struct.dpu_hw_ctl.1*)** %50, align 8
  %52 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %53 = bitcast %struct.dpu_hw_ctl* %52 to %struct.dpu_hw_ctl.1*
  %54 = call i32 %51(%struct.dpu_hw_ctl.1* %53)
  br label %55

55:                                               ; preds = %47, %38
  %56 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %57 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %58 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %57, i32 0, i32 1
  %59 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %58, align 8
  %60 = icmp eq %struct.dpu_encoder_phys* %56, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %63 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MSM_DISPLAY_CAP_CMD_MODE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %70 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %71, align 8
  %73 = icmp ne i32 (%struct.dpu_hw_ctl.0*)* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %76 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %77, align 8
  %79 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %80 = bitcast %struct.dpu_hw_ctl* %79 to %struct.dpu_hw_ctl.0*
  %81 = call i32 %78(%struct.dpu_hw_ctl.0* %80)
  br label %82

82:                                               ; preds = %74, %68, %61, %55
  br label %83

83:                                               ; preds = %82, %33, %23
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %17

87:                                               ; preds = %10, %17
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
