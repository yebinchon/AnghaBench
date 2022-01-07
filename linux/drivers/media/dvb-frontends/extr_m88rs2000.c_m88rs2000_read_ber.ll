; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88rs2000_state* }
%struct.m88rs2000_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @m88rs2000_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs2000_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.m88rs2000_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %10, align 8
  store %struct.m88rs2000_state* %11, %struct.m88rs2000_state** %6, align 8
  %12 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %13 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %12, i32 154, i32 48)
  %14 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %15 = call i32 @m88rs2000_readreg(%struct.m88rs2000_state* %14, i32 216)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %21 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %20, i32 154, i32 176)
  %22 = load i32*, i32** %5, align 8
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %50

23:                                               ; preds = %2
  %24 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %25 = call i32 @m88rs2000_readreg(%struct.m88rs2000_state* %24, i32 215)
  %26 = shl i32 %25, 8
  %27 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %28 = call i32 @m88rs2000_readreg(%struct.m88rs2000_state* %27, i32 214)
  %29 = or i32 %26, %28
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %32 = call i32 @m88rs2000_readreg(%struct.m88rs2000_state* %31, i32 217)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, -8
  %36 = or i32 %35, 4
  %37 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %33, i32 217, i32 %36)
  %38 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, -9
  %41 = or i32 %40, 48
  %42 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %38, i32 216, i32 %41)
  %43 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, -9
  %46 = or i32 %45, 48
  %47 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %43, i32 216, i32 %46)
  %48 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %6, align 8
  %49 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %48, i32 154, i32 176)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %23, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @m88rs2000_writereg(%struct.m88rs2000_state*, i32, i32) #1

declare dso_local i32 @m88rs2000_readreg(%struct.m88rs2000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
