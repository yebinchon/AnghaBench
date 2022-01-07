; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_get_symbolrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_get_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0297_state = type { i32 }

@STV0297_CLOCK_KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0297_state*)* @stv0297_get_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0297_get_symbolrate(%struct.stv0297_state* %0) #0 {
  %2 = alloca %struct.stv0297_state*, align 8
  %3 = alloca i32, align 4
  store %struct.stv0297_state* %0, %struct.stv0297_state** %2, align 8
  %4 = load %struct.stv0297_state*, %struct.stv0297_state** %2, align 8
  %5 = call i32 @stv0297_readreg(%struct.stv0297_state* %4, i32 85)
  %6 = load %struct.stv0297_state*, %struct.stv0297_state** %2, align 8
  %7 = call i32 @stv0297_readreg(%struct.stv0297_state* %6, i32 86)
  %8 = shl i32 %7, 8
  %9 = or i32 %5, %8
  %10 = load %struct.stv0297_state*, %struct.stv0297_state** %2, align 8
  %11 = call i32 @stv0297_readreg(%struct.stv0297_state* %10, i32 87)
  %12 = shl i32 %11, 16
  %13 = or i32 %9, %12
  %14 = load %struct.stv0297_state*, %struct.stv0297_state** %2, align 8
  %15 = call i32 @stv0297_readreg(%struct.stv0297_state* %14, i32 88)
  %16 = shl i32 %15, 24
  %17 = or i32 %13, %16
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @STV0297_CLOCK_KHZ, align 4
  %19 = load i32, i32* %3, align 4
  %20 = mul nsw i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 32
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @stv0297_readreg(%struct.stv0297_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
