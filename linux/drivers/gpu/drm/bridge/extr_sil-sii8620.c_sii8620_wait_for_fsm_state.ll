; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_wait_for_fsm_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_wait_for_fsm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }

@REG_COC_STAT_0 = common dso_local global i32 0, align 4
@MSK_COC_STAT_0_FSM_STATE = common dso_local global i32 0, align 4
@BIT_COC_STAT_0_PLL_LOCKED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii8620*, i32)* @sii8620_wait_for_fsm_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii8620_wait_for_fsm_state(%struct.sii8620* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sii8620*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %13 = load i32, i32* @REG_COC_STAT_0, align 4
  %14 = call i32 @sii8620_readb(%struct.sii8620* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MSK_COC_STAT_0_FSM_STATE, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %37

21:                                               ; preds = %11
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @BIT_COC_STAT_0_PLL_LOCKED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %21
  %30 = call i32 @usleep_range(i32 4000, i32 6000)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %26, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @sii8620_readb(%struct.sii8620*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
