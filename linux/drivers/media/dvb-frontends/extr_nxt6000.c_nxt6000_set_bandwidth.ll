; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt6000.c_nxt6000_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt6000.c_nxt6000_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxt6000_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OFDM_TRL_NOMINALRATE_1 = common dso_local global i32 0, align 4
@OFDM_TRL_NOMINALRATE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxt6000_state*, i32)* @nxt6000_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt6000_set_bandwidth(%struct.nxt6000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nxt6000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nxt6000_state* %0, %struct.nxt6000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %12 [
    i32 6000000, label %9
    i32 7000000, label %10
    i32 8000000, label %11
  ]

9:                                                ; preds = %2
  store i32 21943, i32* %6, align 4
  br label %15

10:                                               ; preds = %2
  store i32 25600, i32* %6, align 4
  br label %15

11:                                               ; preds = %2
  store i32 29257, i32* %6, align 4
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %11, %10, %9
  %16 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %17 = load i32, i32* @OFDM_TRL_NOMINALRATE_1, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 255
  %20 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %16, i32 %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %15
  %25 = load %struct.nxt6000_state*, %struct.nxt6000_state** %4, align 8
  %26 = load i32, i32* @OFDM_TRL_NOMINALRATE_2, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = call i32 @nxt6000_writereg(%struct.nxt6000_state* %25, i32 %26, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %22, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @nxt6000_writereg(%struct.nxt6000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
