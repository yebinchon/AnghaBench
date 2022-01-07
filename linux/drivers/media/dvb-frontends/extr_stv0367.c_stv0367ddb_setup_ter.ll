; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ddb_setup_ter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ddb_setup_ter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0367_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@R367TER_DEBUG_LT4 = common dso_local global i32 0, align 4
@R367TER_DEBUG_LT5 = common dso_local global i32 0, align 4
@R367TER_DEBUG_LT6 = common dso_local global i32 0, align 4
@R367TER_DEBUG_LT7 = common dso_local global i32 0, align 4
@R367TER_DEBUG_LT8 = common dso_local global i32 0, align 4
@R367TER_DEBUG_LT9 = common dso_local global i32 0, align 4
@R367TER_ANADIGCTRL = common dso_local global i32 0, align 4
@R367TER_DUAL_AD12 = common dso_local global i32 0, align 4
@R367TER_ANACTRL = common dso_local global i32 0, align 4
@R367TER_TOPCTRL = common dso_local global i32 0, align 4
@STV0367_ICSPEED_53125 = common dso_local global i32 0, align 4
@demod_ter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0367_state*)* @stv0367ddb_setup_ter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0367ddb_setup_ter(%struct.stv0367_state* %0) #0 {
  %2 = alloca %struct.stv0367_state*, align 8
  store %struct.stv0367_state* %0, %struct.stv0367_state** %2, align 8
  %3 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %4 = load i32, i32* @R367TER_DEBUG_LT4, align 4
  %5 = call i32 @stv0367_writereg(%struct.stv0367_state* %3, i32 %4, i32 0)
  %6 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %7 = load i32, i32* @R367TER_DEBUG_LT5, align 4
  %8 = call i32 @stv0367_writereg(%struct.stv0367_state* %6, i32 %7, i32 0)
  %9 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %10 = load i32, i32* @R367TER_DEBUG_LT6, align 4
  %11 = call i32 @stv0367_writereg(%struct.stv0367_state* %9, i32 %10, i32 0)
  %12 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %13 = load i32, i32* @R367TER_DEBUG_LT7, align 4
  %14 = call i32 @stv0367_writereg(%struct.stv0367_state* %12, i32 %13, i32 0)
  %15 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %16 = load i32, i32* @R367TER_DEBUG_LT8, align 4
  %17 = call i32 @stv0367_writereg(%struct.stv0367_state* %15, i32 %16, i32 0)
  %18 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %19 = load i32, i32* @R367TER_DEBUG_LT9, align 4
  %20 = call i32 @stv0367_writereg(%struct.stv0367_state* %18, i32 %19, i32 0)
  %21 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %22 = load i32, i32* @R367TER_ANADIGCTRL, align 4
  %23 = call i32 @stv0367_writereg(%struct.stv0367_state* %21, i32 %22, i32 137)
  %24 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %25 = load i32, i32* @R367TER_DUAL_AD12, align 4
  %26 = call i32 @stv0367_writereg(%struct.stv0367_state* %24, i32 %25, i32 4)
  %27 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %28 = load i32, i32* @R367TER_ANACTRL, align 4
  %29 = call i32 @stv0367_writereg(%struct.stv0367_state* %27, i32 %28, i32 13)
  %30 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %31 = load i32, i32* @R367TER_TOPCTRL, align 4
  %32 = call i32 @stv0367_writereg(%struct.stv0367_state* %30, i32 %31, i32 0)
  %33 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %34 = load i32, i32* @STV0367_ICSPEED_53125, align 4
  %35 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %36 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @stv0367_pll_setup(%struct.stv0367_state* %33, i32 %34, i32 %39)
  %41 = call i32 @msleep(i32 50)
  %42 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %43 = load i32, i32* @R367TER_ANACTRL, align 4
  %44 = call i32 @stv0367_writereg(%struct.stv0367_state* %42, i32 %43, i32 0)
  %45 = load i32, i32* @demod_ter, align 4
  %46 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %47 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret void
}

declare dso_local i32 @stv0367_writereg(%struct.stv0367_state*, i32, i32) #1

declare dso_local i32 @stv0367_pll_setup(%struct.stv0367_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
