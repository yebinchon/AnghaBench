; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1420.c_s5h1420_getfec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1420.c_s5h1420_getfec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5h1420_state = type { i32 }

@FEC_1_2 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@FEC_5_6 = common dso_local global i32 0, align 4
@FEC_6_7 = common dso_local global i32 0, align 4
@FEC_7_8 = common dso_local global i32 0, align 4
@FEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5h1420_state*)* @s5h1420_getfec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1420_getfec(%struct.s5h1420_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5h1420_state*, align 8
  store %struct.s5h1420_state* %0, %struct.s5h1420_state** %3, align 8
  %4 = load %struct.s5h1420_state*, %struct.s5h1420_state** %3, align 8
  %5 = call i32 @s5h1420_readreg(%struct.s5h1420_state* %4, i32 50)
  %6 = and i32 %5, 7
  switch i32 %6, label %19 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
    i32 5, label %17
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @FEC_1_2, align 4
  store i32 %8, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @FEC_2_3, align 4
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @FEC_3_4, align 4
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @FEC_5_6, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @FEC_6_7, align 4
  store i32 %16, i32* %2, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @FEC_7_8, align 4
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @FEC_NONE, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %17, %15, %13, %11, %9, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @s5h1420_readreg(%struct.s5h1420_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
