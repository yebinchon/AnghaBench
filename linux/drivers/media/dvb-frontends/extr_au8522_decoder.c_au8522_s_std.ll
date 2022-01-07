; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_decoder.c_au8522_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_decoder.c_au8522_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.au8522_state = type { i32, i64 }

@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AU8522_ANALOG_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @au8522_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au8522_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.au8522_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.au8522_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.au8522_state* %8, %struct.au8522_state** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %11 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %21 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %23 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AU8522_ANALOG_MODE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.au8522_state*, %struct.au8522_state** %6, align 8
  %29 = call i32 @au8522_video_set(%struct.au8522_state* %28)
  br label %30

30:                                               ; preds = %27, %18
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.au8522_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @au8522_video_set(%struct.au8522_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
