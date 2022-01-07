; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_get_next_dframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_get_next_dframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { i32, i32*, i32, i64 }

@FLG_TX_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_next_dframe(%struct.dchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dchannel*, align 8
  store %struct.dchannel* %0, %struct.dchannel** %3, align 8
  %4 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %5 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %4, i32 0, i32 3
  store i64 0, i64* %5, align 8
  %6 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %7 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %6, i32 0, i32 2
  %8 = call i32* @skb_dequeue(i32* %7)
  %9 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %10 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %9, i32 0, i32 1
  store i32* %8, i32** %10, align 8
  %11 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %12 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %17 = call i32 @confirm_Dsend(%struct.dchannel* %16)
  store i32 1, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %20 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @FLG_TX_BUSY, align 4
  %22 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %23 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %22, i32 0, i32 0
  %24 = call i32 @test_and_clear_bit(i32 %21, i32* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32* @skb_dequeue(i32*) #1

declare dso_local i32 @confirm_Dsend(%struct.dchannel*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
