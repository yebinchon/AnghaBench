; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_decoder.c_au8522_video_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_decoder.c_au8522_video_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au8522_state = type { i32 }

@AU8522_INPUT_CONTROL_REG081H_CVBS_CH1 = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H_CVBS_CH2 = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H_CVBS_CH3 = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H_CVBS_CH4 = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH13 = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH24 = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H_CVBS_CH4_SIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au8522_state*)* @au8522_video_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au8522_video_set(%struct.au8522_state* %0) #0 {
  %2 = alloca %struct.au8522_state*, align 8
  %3 = alloca i32, align 4
  store %struct.au8522_state* %0, %struct.au8522_state** %2, align 8
  %4 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %5 = call i32 @au8522_writereg(%struct.au8522_state* %4, i32 164, i32 32)
  %6 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %7 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %39 [
    i32 134, label %9
    i32 133, label %14
    i32 132, label %19
    i32 131, label %24
    i32 129, label %29
    i32 128, label %34
    i32 130, label %40
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_CVBS_CH1, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @au8522_setup_cvbs_mode(%struct.au8522_state* %11, i32 %12)
  br label %45

14:                                               ; preds = %1
  %15 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_CVBS_CH2, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @au8522_setup_cvbs_mode(%struct.au8522_state* %16, i32 %17)
  br label %45

19:                                               ; preds = %1
  %20 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_CVBS_CH3, align 4
  store i32 %20, i32* %3, align 4
  %21 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @au8522_setup_cvbs_mode(%struct.au8522_state* %21, i32 %22)
  br label %45

24:                                               ; preds = %1
  %25 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_CVBS_CH4, align 4
  store i32 %25, i32* %3, align 4
  %26 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @au8522_setup_cvbs_mode(%struct.au8522_state* %26, i32 %27)
  br label %45

29:                                               ; preds = %1
  %30 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH13, align 4
  store i32 %30, i32* %3, align 4
  %31 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @au8522_setup_svideo_mode(%struct.au8522_state* %31, i32 %32)
  br label %45

34:                                               ; preds = %1
  %35 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH24, align 4
  store i32 %35, i32* %3, align 4
  %36 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @au8522_setup_svideo_mode(%struct.au8522_state* %36, i32 %37)
  br label %45

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %1, %39
  %41 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_CVBS_CH4_SIF, align 4
  store i32 %41, i32* %3, align 4
  %42 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @au8522_setup_cvbs_tuner_mode(%struct.au8522_state* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %34, %29, %24, %19, %14, %9
  ret void
}

declare dso_local i32 @au8522_writereg(%struct.au8522_state*, i32, i32) #1

declare dso_local i32 @au8522_setup_cvbs_mode(%struct.au8522_state*, i32) #1

declare dso_local i32 @au8522_setup_svideo_mode(%struct.au8522_state*, i32) #1

declare dso_local i32 @au8522_setup_cvbs_tuner_mode(%struct.au8522_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
