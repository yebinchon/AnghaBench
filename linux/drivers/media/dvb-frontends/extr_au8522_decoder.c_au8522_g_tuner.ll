; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_decoder.c_au8522_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_decoder.c_au8522_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32, i32 }
%struct.au8522_state = type { i32 }

@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_SAP = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @au8522_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au8522_g_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_tuner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.au8522_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.au8522_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.au8522_state* %10, %struct.au8522_state** %6, align 8
  %11 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %12 = call i32 @au8522_readreg(%struct.au8522_state* %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %14 = call i32 @au8522_readreg(%struct.au8522_state* %13, i32 126)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 162
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 16
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %22, i32 0, i32 0
  store i32 65535, i32* %23, align 4
  br label %27

24:                                               ; preds = %17, %2
  %25 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %29 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @V4L2_TUNER_CAP_SAP, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %44 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  ret i32 0
}

declare dso_local %struct.au8522_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @au8522_readreg(%struct.au8522_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
