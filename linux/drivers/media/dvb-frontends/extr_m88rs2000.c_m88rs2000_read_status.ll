; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88rs2000_state* }
%struct.m88rs2000_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend*, i32)* }

@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@CALL_IS_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @m88rs2000_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs2000_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.m88rs2000_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %8, align 8
  store %struct.m88rs2000_state* %9, %struct.m88rs2000_state** %5, align 8
  %10 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %5, align 8
  %11 = call i32 @m88rs2000_readreg(%struct.m88rs2000_state* %10, i32 140)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 238
  %15 = icmp eq i32 %14, 238
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load i32, i32* @FE_HAS_CARRIER, align 4
  %18 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FE_HAS_VITERBI, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FE_HAS_SYNC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FE_HAS_LOCK, align 4
  %25 = or i32 %23, %24
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %5, align 8
  %28 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.dvb_frontend*, i32)* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %16
  %34 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %5, align 8
  %35 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %37, align 8
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %40 = load i32, i32* @CALL_IS_READ, align 4
  %41 = call i32 %38(%struct.dvb_frontend* %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %16
  br label %43

43:                                               ; preds = %42, %2
  ret i32 0
}

declare dso_local i32 @m88rs2000_readreg(%struct.m88rs2000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
