; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_playback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hidpp_ff_private_data* }
%struct.hidpp_ff_private_data = type { i32 }

@HIDPP_FF_EFFECT_STATE_PLAY = common dso_local global i32 0, align 4
@HIDPP_FF_EFFECT_STATE_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"St%sing playback of effect %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"art\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"opp\00", align 1
@HIDPP_FF_SET_EFFECT_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32)* @hidpp_ff_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_ff_playback(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hidpp_ff_private_data*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %10 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %12, align 8
  store %struct.hidpp_ff_private_data* %13, %struct.hidpp_ff_private_data** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @HIDPP_FF_EFFECT_STATE_PLAY, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @HIDPP_FF_EFFECT_STATE_STOP, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dbg_hid(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  %29 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @HIDPP_FF_SET_EFFECT_STATE, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = call i32 @hidpp_ff_queue_work(%struct.hidpp_ff_private_data* %29, i32 %30, i32 %31, i32* %32, i32 %34)
  ret i32 %35
}

declare dso_local i32 @dbg_hid(i8*, i8*, i32) #1

declare dso_local i32 @hidpp_ff_queue_work(%struct.hidpp_ff_private_data*, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
