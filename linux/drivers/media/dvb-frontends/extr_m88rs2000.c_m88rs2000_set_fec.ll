; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_set_fec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_set_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m88rs2000_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m88rs2000_state*, i32)* @m88rs2000_set_fec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs2000_set_fec(%struct.m88rs2000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.m88rs2000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.m88rs2000_state* %0, %struct.m88rs2000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %15 [
    i32 133, label %9
    i32 132, label %10
    i32 131, label %11
    i32 130, label %12
    i32 129, label %13
    i32 128, label %14
  ]

9:                                                ; preds = %2
  store i32 8, i32* %5, align 4
  br label %16

10:                                               ; preds = %2
  store i32 16, i32* %5, align 4
  br label %16

11:                                               ; preds = %2
  store i32 32, i32* %5, align 4
  br label %16

12:                                               ; preds = %2
  store i32 64, i32* %5, align 4
  br label %16

13:                                               ; preds = %2
  store i32 128, i32* %5, align 4
  br label %16

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %2, %14
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %13, %12, %11, %10, %9
  %17 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %3, align 8
  %18 = call i32 @m88rs2000_readreg(%struct.m88rs2000_state* %17, i32 112)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 7
  store i32 %20, i32* %6, align 4
  %21 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %21, i32 112, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %3, align 8
  %27 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %26, i32 118, i32 8)
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @m88rs2000_readreg(%struct.m88rs2000_state*, i32) #1

declare dso_local i32 @m88rs2000_writereg(%struct.m88rs2000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
