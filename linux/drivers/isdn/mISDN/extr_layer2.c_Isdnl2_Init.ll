; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_Isdnl2_Init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_Isdnl2_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@debug = common dso_local global i32* null, align 8
@X75SLP = common dso_local global i32 0, align 4
@L2_STATE_COUNT = common dso_local global i32 0, align 4
@l2fsm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@L2_EVENT_COUNT = common dso_local global i32 0, align 4
@strL2Event = common dso_local global i32 0, align 4
@strL2State = common dso_local global i32 0, align 4
@L2FnList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Isdnl2_Init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  store i32* %5, i32** @debug, align 8
  %6 = call i32 @mISDN_register_Bprotocol(i32* @X75SLP)
  %7 = load i32, i32* @L2_STATE_COUNT, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2fsm, i32 0, i32 3), align 4
  %8 = load i32, i32* @L2_EVENT_COUNT, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2fsm, i32 0, i32 2), align 4
  %9 = load i32, i32* @strL2Event, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2fsm, i32 0, i32 1), align 4
  %10 = load i32, i32* @strL2State, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @l2fsm, i32 0, i32 0), align 4
  %11 = load i32, i32* @L2FnList, align 4
  %12 = load i32, i32* @L2FnList, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = call i32 @mISDN_FsmNew(%struct.TYPE_4__* @l2fsm, i32 %11, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %27

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @TEIInit(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %30

25:                                               ; preds = %23
  %26 = call i32 @mISDN_FsmFree(%struct.TYPE_4__* @l2fsm)
  br label %27

27:                                               ; preds = %25, %17
  %28 = call i32 @mISDN_unregister_Bprotocol(i32* @X75SLP)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @mISDN_register_Bprotocol(i32*) #1

declare dso_local i32 @mISDN_FsmNew(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @TEIInit(i32*) #1

declare dso_local i32 @mISDN_FsmFree(%struct.TYPE_4__*) #1

declare dso_local i32 @mISDN_unregister_Bprotocol(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
