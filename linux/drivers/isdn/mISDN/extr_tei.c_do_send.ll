; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_tei.c_do_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_tei.c_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manager = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 (i32, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }

@MGR_PH_ACTIVE = common dso_local global i32 0, align 4
@MGR_PH_NOTREADY = common dso_local global i32 0, align 4
@EV_UI = common dso_local global i32 0, align 4
@MISDN_ID_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.manager*)* @do_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_send(%struct.manager* %0) #0 {
  %2 = alloca %struct.manager*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.manager* %0, %struct.manager** %2, align 8
  %4 = load i32, i32* @MGR_PH_ACTIVE, align 4
  %5 = load %struct.manager*, %struct.manager** %2, align 8
  %6 = getelementptr inbounds %struct.manager, %struct.manager* %5, i32 0, i32 1
  %7 = call i32 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load i32, i32* @MGR_PH_NOTREADY, align 4
  %12 = load %struct.manager*, %struct.manager** %2, align 8
  %13 = getelementptr inbounds %struct.manager, %struct.manager* %12, i32 0, i32 1
  %14 = call i32 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %10
  %17 = load %struct.manager*, %struct.manager** %2, align 8
  %18 = getelementptr inbounds %struct.manager, %struct.manager* %17, i32 0, i32 4
  %19 = call %struct.sk_buff* @skb_dequeue(i32* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @MGR_PH_NOTREADY, align 4
  %24 = load %struct.manager*, %struct.manager** %2, align 8
  %25 = getelementptr inbounds %struct.manager, %struct.manager* %24, i32 0, i32 1
  %26 = call i32 @test_and_clear_bit(i32 %23, i32* %25)
  br label %58

27:                                               ; preds = %16
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @mISDN_HEAD_ID(%struct.sk_buff* %28)
  %30 = load %struct.manager*, %struct.manager** %2, align 8
  %31 = getelementptr inbounds %struct.manager, %struct.manager* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.manager*, %struct.manager** %2, align 8
  %33 = getelementptr inbounds %struct.manager, %struct.manager* %32, i32 0, i32 3
  %34 = load i32, i32* @EV_UI, align 4
  %35 = call i32 @mISDN_FsmEvent(i32* %33, i32 %34, i32* null)
  %36 = load %struct.manager*, %struct.manager** %2, align 8
  %37 = getelementptr inbounds %struct.manager, %struct.manager* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64 (i32, %struct.sk_buff*)*, i64 (i32, %struct.sk_buff*)** %38, align 8
  %40 = load %struct.manager*, %struct.manager** %2, align 8
  %41 = getelementptr inbounds %struct.manager, %struct.manager* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i64 %39(i32 %43, %struct.sk_buff* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %27
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @dev_kfree_skb(%struct.sk_buff* %48)
  %50 = load i32, i32* @MGR_PH_NOTREADY, align 4
  %51 = load %struct.manager*, %struct.manager** %2, align 8
  %52 = getelementptr inbounds %struct.manager, %struct.manager* %51, i32 0, i32 1
  %53 = call i32 @test_and_clear_bit(i32 %50, i32* %52)
  %54 = load i32, i32* @MISDN_ID_NONE, align 4
  %55 = load %struct.manager*, %struct.manager** %2, align 8
  %56 = getelementptr inbounds %struct.manager, %struct.manager* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %47, %27
  br label %58

58:                                               ; preds = %9, %22, %57, %10
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mISDN_HEAD_ID(%struct.sk_buff*) #1

declare dso_local i32 @mISDN_FsmEvent(i32*, i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
