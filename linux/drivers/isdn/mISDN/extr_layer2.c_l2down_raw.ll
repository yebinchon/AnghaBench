; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2down_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2down_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.mISDNhead = type { i64 }

@PH_DATA_REQ = common dso_local global i64 0, align 8
@FLG_L1_NOTREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.layer2*, %struct.sk_buff*)* @l2down_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2down_raw(%struct.layer2* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.layer2*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mISDNhead*, align 8
  store %struct.layer2* %0, %struct.layer2** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = call %struct.mISDNhead* @mISDN_HEAD_P(%struct.sk_buff* %7)
  store %struct.mISDNhead* %8, %struct.mISDNhead** %6, align 8
  %9 = load %struct.mISDNhead*, %struct.mISDNhead** %6, align 8
  %10 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PH_DATA_REQ, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i32, i32* @FLG_L1_NOTREADY, align 4
  %16 = load %struct.layer2*, %struct.layer2** %4, align 8
  %17 = getelementptr inbounds %struct.layer2, %struct.layer2* %16, i32 0, i32 2
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.layer2*, %struct.layer2** %4, align 8
  %22 = getelementptr inbounds %struct.layer2, %struct.layer2* %21, i32 0, i32 1
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @skb_queue_tail(i32* %22, %struct.sk_buff* %23)
  store i32 0, i32* %3, align 4
  br label %34

25:                                               ; preds = %14
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @mISDN_HEAD_ID(%struct.sk_buff* %26)
  %28 = load %struct.layer2*, %struct.layer2** %4, align 8
  %29 = getelementptr inbounds %struct.layer2, %struct.layer2* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.layer2*, %struct.layer2** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @l2down_skb(%struct.layer2* %31, %struct.sk_buff* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.mISDNhead* @mISDN_HEAD_P(%struct.sk_buff*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @mISDN_HEAD_ID(%struct.sk_buff*) #1

declare dso_local i32 @l2down_skb(%struct.layer2*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
