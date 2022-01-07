; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_release_l2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_release_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { %struct.TYPE_7__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32, i32*)* }

@FLG_LAPD = common dso_local global i32 0, align 4
@CLOSE_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.layer2*)* @release_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_l2(%struct.layer2* %0) #0 {
  %2 = alloca %struct.layer2*, align 8
  store %struct.layer2* %0, %struct.layer2** %2, align 8
  %3 = load %struct.layer2*, %struct.layer2** %2, align 8
  %4 = getelementptr inbounds %struct.layer2, %struct.layer2* %3, i32 0, i32 6
  %5 = call i32 @mISDN_FsmDelTimer(i32* %4, i32 21)
  %6 = load %struct.layer2*, %struct.layer2** %2, align 8
  %7 = getelementptr inbounds %struct.layer2, %struct.layer2* %6, i32 0, i32 5
  %8 = call i32 @mISDN_FsmDelTimer(i32* %7, i32 16)
  %9 = load %struct.layer2*, %struct.layer2** %2, align 8
  %10 = getelementptr inbounds %struct.layer2, %struct.layer2* %9, i32 0, i32 4
  %11 = call i32 @skb_queue_purge(i32* %10)
  %12 = load %struct.layer2*, %struct.layer2** %2, align 8
  %13 = getelementptr inbounds %struct.layer2, %struct.layer2* %12, i32 0, i32 3
  %14 = call i32 @skb_queue_purge(i32* %13)
  %15 = load %struct.layer2*, %struct.layer2** %2, align 8
  %16 = getelementptr inbounds %struct.layer2, %struct.layer2* %15, i32 0, i32 2
  %17 = call i32 @skb_queue_purge(i32* %16)
  %18 = load %struct.layer2*, %struct.layer2** %2, align 8
  %19 = call i32 @ReleaseWin(%struct.layer2* %18)
  %20 = load i32, i32* @FLG_LAPD, align 4
  %21 = load %struct.layer2*, %struct.layer2** %2, align 8
  %22 = getelementptr inbounds %struct.layer2, %struct.layer2* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %1
  %26 = load %struct.layer2*, %struct.layer2** %2, align 8
  %27 = call i32 @TEIrelease(%struct.layer2* %26)
  %28 = load %struct.layer2*, %struct.layer2** %2, align 8
  %29 = getelementptr inbounds %struct.layer2, %struct.layer2* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %25
  %34 = load %struct.layer2*, %struct.layer2** %2, align 8
  %35 = getelementptr inbounds %struct.layer2, %struct.layer2* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*)** %41, align 8
  %43 = load %struct.layer2*, %struct.layer2** %2, align 8
  %44 = getelementptr inbounds %struct.layer2, %struct.layer2* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* @CLOSE_CHANNEL, align 4
  %51 = call i32 %42(%struct.TYPE_8__* %49, i32 %50, i32* null)
  br label %52

52:                                               ; preds = %33, %25
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.layer2*, %struct.layer2** %2, align 8
  %55 = call i32 @kfree(%struct.layer2* %54)
  ret void
}

declare dso_local i32 @mISDN_FsmDelTimer(i32*, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @ReleaseWin(%struct.layer2*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @TEIrelease(%struct.layer2*) #1

declare dso_local i32 @kfree(%struct.layer2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
