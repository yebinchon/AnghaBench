; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_fsm_signaltype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_fsm_signaltype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_CAB_NOAGC = common dso_local global i32 0, align 4
@FE_CAB_NOTIMING = common dso_local global i32 0, align 4
@FE_CAB_TIMINGOK = common dso_local global i32 0, align 4
@FE_CAB_NOCARRIER = common dso_local global i32 0, align 4
@FE_CAB_CARRIEROK = common dso_local global i32 0, align 4
@FE_CAB_NOBLIND = common dso_local global i32 0, align 4
@FE_CAB_BLINDOK = common dso_local global i32 0, align 4
@FE_CAB_NODEMOD = common dso_local global i32 0, align 4
@FE_CAB_DEMODOK = common dso_local global i32 0, align 4
@FE_CAB_NOSIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stv0367cab_fsm_signaltype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367cab_fsm_signaltype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @FE_CAB_NOAGC, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %32 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
    i32 7, label %16
    i32 8, label %18
    i32 10, label %20
    i32 11, label %22
    i32 12, label %24
    i32 13, label %26
    i32 14, label %28
    i32 15, label %30
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @FE_CAB_NOAGC, align 4
  store i32 %7, i32* %3, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load i32, i32* @FE_CAB_NOTIMING, align 4
  store i32 %9, i32* %3, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load i32, i32* @FE_CAB_TIMINGOK, align 4
  store i32 %11, i32* %3, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* @FE_CAB_NOCARRIER, align 4
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load i32, i32* @FE_CAB_CARRIEROK, align 4
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load i32, i32* @FE_CAB_NOBLIND, align 4
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load i32, i32* @FE_CAB_BLINDOK, align 4
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load i32, i32* @FE_CAB_NODEMOD, align 4
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load i32, i32* @FE_CAB_DEMODOK, align 4
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load i32, i32* @FE_CAB_DEMODOK, align 4
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %1
  %27 = load i32, i32* @FE_CAB_NODEMOD, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @FE_CAB_NOBLIND, align 4
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @FE_CAB_NOSIGNAL, align 4
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
