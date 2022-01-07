; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_reset_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_reset_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"gpio dir: %x: val: %x, pwm_pos: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*)* @dib7000p_reset_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_reset_gpio(%struct.dib7000p_state* %0) #0 {
  %2 = alloca %struct.dib7000p_state*, align 8
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %2, align 8
  %3 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %4 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %7 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %10 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %12)
  %14 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %16 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %14, i32 1029, i32 %17)
  %19 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %20 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %21 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %19, i32 1030, i32 %22)
  %24 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %25 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %26 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %24, i32 1032, i32 %28)
  %30 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %31 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %32 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %30, i32 1037, i32 %34)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
