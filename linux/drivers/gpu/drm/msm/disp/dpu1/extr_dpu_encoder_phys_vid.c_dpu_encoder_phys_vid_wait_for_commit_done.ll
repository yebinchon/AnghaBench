; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_wait_for_commit_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_wait_for_commit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.dpu_hw_ctl* }
%struct.dpu_hw_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.dpu_hw_ctl.0*)* }
%struct.dpu_hw_ctl.0 = type opaque

@.str = private unnamed_addr constant [16 x i8] c"vblank timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_vid_wait_for_commit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_phys_vid_wait_for_commit_done(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca %struct.dpu_hw_ctl*, align 8
  %5 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %7 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %6, i32 0, i32 1
  %8 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %7, align 8
  store %struct.dpu_hw_ctl* %8, %struct.dpu_hw_ctl** %4, align 8
  %9 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %10 = icmp ne %struct.dpu_hw_ctl* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %14 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %17 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.dpu_hw_ctl.0*)*, i64 (%struct.dpu_hw_ctl.0*)** %18, align 8
  %20 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %21 = bitcast %struct.dpu_hw_ctl* %20 to %struct.dpu_hw_ctl.0*
  %22 = call i64 %19(%struct.dpu_hw_ctl.0* %21)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @msecs_to_jiffies(i32 50)
  %26 = call i32 @wait_event_timeout(i32 %15, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %12
  %30 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %29, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
