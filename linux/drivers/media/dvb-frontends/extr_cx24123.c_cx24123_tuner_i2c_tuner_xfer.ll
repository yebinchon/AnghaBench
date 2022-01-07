; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_tuner_i2c_tuner_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_tuner_i2c_tuner_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.cx24123_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @cx24123_tuner_i2c_tuner_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_tuner_i2c_tuner_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx24123_state*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %9 = call %struct.cx24123_state* @i2c_get_adapdata(%struct.i2c_adapter* %8)
  store %struct.cx24123_state* %9, %struct.cx24123_state** %7, align 8
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %7, align 8
  %11 = call i32 @cx24123_repeater_mode(%struct.cx24123_state* %10, i32 1, i32 1)
  %12 = load %struct.cx24123_state*, %struct.cx24123_state** %7, align 8
  %13 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @i2c_transfer(i32 %14, %struct.i2c_msg* %15, i32 %16)
  ret i32 %17
}

declare dso_local %struct.cx24123_state* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @cx24123_repeater_mode(%struct.cx24123_state*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
