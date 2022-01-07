; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_prepare_for_kickoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_prepare_for_kickoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { %struct.dpu_hw_ctl* }
%struct.dpu_hw_ctl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_hw_ctl.0*)* }
%struct.dpu_hw_ctl.0 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"invalid encoder/parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ctl %d reset failure: %d\0A\00", align 1
@INTR_IDX_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_vid_prepare_for_kickoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_vid_prepare_for_kickoff(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.dpu_hw_ctl*, align 8
  %4 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %5 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %6 = icmp ne %struct.dpu_encoder_phys* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %42

9:                                                ; preds = %1
  %10 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %11 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %10, i32 0, i32 0
  %12 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %11, align 8
  store %struct.dpu_hw_ctl* %12, %struct.dpu_hw_ctl** %3, align 8
  %13 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %14 = icmp ne %struct.dpu_hw_ctl* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %17 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %18, align 8
  %20 = icmp ne i32 (%struct.dpu_hw_ctl.0*)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %9
  br label %42

22:                                               ; preds = %15
  %23 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %24 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %25, align 8
  %27 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %28 = bitcast %struct.dpu_hw_ctl* %27 to %struct.dpu_hw_ctl.0*
  %29 = call i32 %26(%struct.dpu_hw_ctl.0* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %34 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %35 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @DPU_ERROR_VIDENC(%struct.dpu_encoder_phys* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %40 = load i32, i32* @INTR_IDX_VSYNC, align 4
  %41 = call i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys* %39, i32 %40)
  br label %42

42:                                               ; preds = %7, %21, %32, %22
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @DPU_ERROR_VIDENC(%struct.dpu_encoder_phys*, i8*, i32, i32) #1

declare dso_local i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
