; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt200x.c_nxt200x_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt200x.c_nxt200x_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.nxt200x_state* }
%struct.nxt200x_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @nxt200x_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt200x_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nxt200x_state*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.nxt200x_state*, %struct.nxt200x_state** %9, align 8
  store %struct.nxt200x_state* %10, %struct.nxt200x_state** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %14 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %12, i32 161, i32* %13, i32 1)
  %15 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %17 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %15, i32 166, i32* %16, i32 2)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %20, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 32767, %24
  %26 = and i32 %25, 4095
  %27 = mul nsw i32 %26, 16
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  ret i32 0
}

declare dso_local i32 @nxt200x_writebytes(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
