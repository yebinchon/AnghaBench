; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_snr_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_snr_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0367_state* }
%struct.stv0367_state = type { i32 }

@F367CAB_QAM_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv0367cab_snr_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367cab_snr_power(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv0367_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.stv0367_state*, %struct.stv0367_state** %7, align 8
  store %struct.stv0367_state* %8, %struct.stv0367_state** %4, align 8
  %9 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %10 = load i32, i32* @F367CAB_QAM_MODE, align 4
  %11 = call i32 @stv0367_readbits(%struct.stv0367_state* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %20 [
    i32 129, label %13
    i32 132, label %14
    i32 130, label %15
    i32 128, label %16
    i32 133, label %17
    i32 131, label %18
    i32 134, label %19
  ]

13:                                               ; preds = %1
  store i32 21904, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  store i32 20480, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  store i32 23040, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  store i32 21504, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  store i32 23616, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  store i32 21760, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  store i32 21280, i32* %2, align 4
  br label %22

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19, %18, %17, %16, %15, %14, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @stv0367_readbits(%struct.stv0367_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
