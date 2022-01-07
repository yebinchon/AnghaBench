; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_set_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hidpp_ff_private_data* }
%struct.hidpp_ff_private_data = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Setting gain to %d.\0A\00", align 1
@HIDPP_FF_EFFECTID_NONE = common dso_local global i32 0, align 4
@HIDPP_FF_SET_GLOBAL_GAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32)* @hidpp_ff_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpp_ff_set_gain(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidpp_ff_private_data*, align 8
  %6 = alloca [4 x i32], align 16
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %10, align 8
  store %struct.hidpp_ff_private_data* %11, %struct.hidpp_ff_private_data** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @dbg_hid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %21, align 4
  %22 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %5, align 8
  %23 = load i32, i32* @HIDPP_FF_EFFECTID_NONE, align 4
  %24 = load i32, i32* @HIDPP_FF_SET_GLOBAL_GAINS, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = call i32 @hidpp_ff_queue_work(%struct.hidpp_ff_private_data* %22, i32 %23, i32 %24, i32* %25, i32 %27)
  ret void
}

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i32 @hidpp_ff_queue_work(%struct.hidpp_ff_private_data*, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
