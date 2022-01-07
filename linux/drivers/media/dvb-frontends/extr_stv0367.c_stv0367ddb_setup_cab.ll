; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ddb_setup_cab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ddb_setup_cab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0367_state = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

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
@STV0367_ICSPEED_58000 = common dso_local global i32 0, align 4
@demod_cab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0367_state*)* @stv0367ddb_setup_cab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0367ddb_setup_cab(%struct.stv0367_state* %0) #0 {
  %2 = alloca %struct.stv0367_state*, align 8
  store %struct.stv0367_state* %0, %struct.stv0367_state** %2, align 8
  %3 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %4 = load i32, i32* @R367TER_DEBUG_LT4, align 4
  %5 = call i32 @stv0367_writereg(%struct.stv0367_state* %3, i32 %4, i32 0)
  %6 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %7 = load i32, i32* @R367TER_DEBUG_LT5, align 4
  %8 = call i32 @stv0367_writereg(%struct.stv0367_state* %6, i32 %7, i32 1)
  %9 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %10 = load i32, i32* @R367TER_DEBUG_LT6, align 4
  %11 = call i32 @stv0367_writereg(%struct.stv0367_state* %9, i32 %10, i32 6)
  %12 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %13 = load i32, i32* @R367TER_DEBUG_LT7, align 4
  %14 = call i32 @stv0367_writereg(%struct.stv0367_state* %12, i32 %13, i32 3)
  %15 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %16 = load i32, i32* @R367TER_DEBUG_LT8, align 4
  %17 = call i32 @stv0367_writereg(%struct.stv0367_state* %15, i32 %16, i32 0)
  %18 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %19 = load i32, i32* @R367TER_DEBUG_LT9, align 4
  %20 = call i32 @stv0367_writereg(%struct.stv0367_state* %18, i32 %19, i32 0)
  %21 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %22 = load i32, i32* @R367TER_ANADIGCTRL, align 4
  %23 = call i32 @stv0367_writereg(%struct.stv0367_state* %21, i32 %22, i32 139)
  %24 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %25 = load i32, i32* @R367TER_DUAL_AD12, align 4
  %26 = call i32 @stv0367_writereg(%struct.stv0367_state* %24, i32 %25, i32 4)
  %27 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %28 = load i32, i32* @R367TER_ANACTRL, align 4
  %29 = call i32 @stv0367_writereg(%struct.stv0367_state* %27, i32 %28, i32 13)
  %30 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %31 = load i32, i32* @R367TER_TOPCTRL, align 4
  %32 = call i32 @stv0367_writereg(%struct.stv0367_state* %30, i32 %31, i32 16)
  %33 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %34 = load i32, i32* @STV0367_ICSPEED_58000, align 4
  %35 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %36 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @stv0367_pll_setup(%struct.stv0367_state* %33, i32 %34, i32 %39)
  %41 = call i32 @msleep(i32 50)
  %42 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %43 = load i32, i32* @R367TER_ANACTRL, align 4
  %44 = call i32 @stv0367_writereg(%struct.stv0367_state* %42, i32 %43, i32 0)
  %45 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %46 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %45, i32 0, i32 2
  %47 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %48 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @stv0367cab_get_mclk(i32* %46, i32 %51)
  %53 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %54 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %58 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %57, i32 0, i32 2
  %59 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %60 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @stv0367cab_get_adc_freq(i32* %58, i32 %63)
  %65 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %66 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @demod_cab, align 4
  %70 = load %struct.stv0367_state*, %struct.stv0367_state** %2, align 8
  %71 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  ret void
}

declare dso_local i32 @stv0367_writereg(%struct.stv0367_state*, i32, i32) #1

declare dso_local i32 @stv0367_pll_setup(%struct.stv0367_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stv0367cab_get_mclk(i32*, i32) #1

declare dso_local i32 @stv0367cab_get_adc_freq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
