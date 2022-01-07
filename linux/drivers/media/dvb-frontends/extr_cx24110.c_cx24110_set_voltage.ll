; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24110.c_cx24110_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24110.c_cx24110_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24110_state* }
%struct.cx24110_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @cx24110_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24110_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  store %struct.cx24110_state* %9, %struct.cx24110_state** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %25 [
    i32 129, label %11
    i32 128, label %18
  ]

11:                                               ; preds = %2
  %12 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %13 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %14 = call i32 @cx24110_readreg(%struct.cx24110_state* %13, i32 118)
  %15 = and i32 %14, 59
  %16 = or i32 %15, 192
  %17 = call i32 @cx24110_writereg(%struct.cx24110_state* %12, i32 118, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %20 = load %struct.cx24110_state*, %struct.cx24110_state** %6, align 8
  %21 = call i32 @cx24110_readreg(%struct.cx24110_state* %20, i32 118)
  %22 = and i32 %21, 59
  %23 = or i32 %22, 64
  %24 = call i32 @cx24110_writereg(%struct.cx24110_state* %19, i32 118, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %18, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @cx24110_writereg(%struct.cx24110_state*, i32, i32) #1

declare dso_local i32 @cx24110_readreg(%struct.cx24110_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
