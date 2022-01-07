; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1432.c_s5h1432_set_channel_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1432.c_s5h1432_set_channel_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.s5h1432_state* }
%struct.s5h1432_state = type { i32 }

@S5H1432_I2C_TOP_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @s5h1432_set_channel_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1432_set_channel_bandwidth(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5h1432_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.s5h1432_state*, %struct.s5h1432_state** %9, align 8
  store %struct.s5h1432_state* %10, %struct.s5h1432_state** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.s5h1432_state*, %struct.s5h1432_state** %6, align 8
  %12 = load i32, i32* @S5H1432_I2C_TOP_ADDR, align 4
  %13 = call i32 @s5h1432_readreg(%struct.s5h1432_state* %11, i32 %12, i32 46)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, -13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %25 [
    i32 6, label %17
    i32 7, label %20
    i32 8, label %23
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, 8
  store i32 %19, i32* %7, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, 4
  store i32 %22, i32* %7, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %7, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

26:                                               ; preds = %23, %20, %17
  %27 = load %struct.s5h1432_state*, %struct.s5h1432_state** %6, align 8
  %28 = load i32, i32* @S5H1432_I2C_TOP_ADDR, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @s5h1432_writereg(%struct.s5h1432_state* %27, i32 %28, i32 46, i32 %29)
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @s5h1432_readreg(%struct.s5h1432_state*, i32, i32) #1

declare dso_local i32 @s5h1432_writereg(%struct.s5h1432_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
