; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_tx_ui.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_tx_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32, i32 }
%struct.sk_buff = type { i32 }

@MAX_L2HEADER_LEN = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@FLG_LAPD_NET = common dso_local global i32 0, align 4
@UI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.layer2*)* @tx_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_ui(%struct.layer2* %0) #0 {
  %2 = alloca %struct.layer2*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.layer2* %0, %struct.layer2** %2, align 8
  %7 = load i32, i32* @MAX_L2HEADER_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.layer2*, %struct.layer2** %2, align 8
  %12 = load i32, i32* @CMD, align 4
  %13 = call i32 @sethdraddr(%struct.layer2* %11, i32* %10, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @FLG_LAPD_NET, align 4
  %15 = load %struct.layer2*, %struct.layer2** %2, align 8
  %16 = getelementptr inbounds %struct.layer2, %struct.layer2* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 255, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %1
  %22 = load i32, i32* @UI, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %10, i64 %25
  store i32 %22, i32* %26, align 4
  br label %27

27:                                               ; preds = %32, %21
  %28 = load %struct.layer2*, %struct.layer2** %2, align 8
  %29 = getelementptr inbounds %struct.layer2, %struct.layer2* %28, i32 0, i32 0
  %30 = call %struct.sk_buff* @skb_dequeue(i32* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %3, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @skb_push(%struct.sk_buff* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @memcpy(i32 %35, i32* %10, i32 %36)
  %38 = load %struct.layer2*, %struct.layer2** %2, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call i32 @enqueue_ui(%struct.layer2* %38, %struct.sk_buff* %39)
  br label %27

41:                                               ; preds = %27
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sethdraddr(%struct.layer2*, i32*, i32) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #2

declare dso_local i32 @enqueue_ui(%struct.layer2*, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
