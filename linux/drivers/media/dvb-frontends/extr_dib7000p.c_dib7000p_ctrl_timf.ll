; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_ctrl_timf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_ctrl_timf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @dib7000p_ctrl_timf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_ctrl_timf(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib7000p_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  store %struct.dib7000p_state* %10, %struct.dib7000p_state** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %20 [
    i32 129, label %12
    i32 128, label %16
    i32 130, label %19
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.dib7000p_state*, %struct.dib7000p_state** %7, align 8
  %15 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.dib7000p_state*, %struct.dib7000p_state** %7, align 8
  %18 = call i32 @dib7000p_update_timf(%struct.dib7000p_state* %17)
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %3, %19, %16, %12
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %7, align 8
  %22 = load %struct.dib7000p_state*, %struct.dib7000p_state** %7, align 8
  %23 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dib7000p_set_bandwidth(%struct.dib7000p_state* %21, i32 %24)
  %26 = load %struct.dib7000p_state*, %struct.dib7000p_state** %7, align 8
  %27 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  ret i32 %28
}

declare dso_local i32 @dib7000p_update_timf(%struct.dib7000p_state*) #1

declare dso_local i32 @dib7000p_set_bandwidth(%struct.dib7000p_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
