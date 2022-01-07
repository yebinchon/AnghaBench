; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_tx_skb_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_tx_skb_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ulp_skb_cb = type { i32 }

@ULPCB_FLAG_NO_HDR = common dso_local global i32 0, align 4
@ULPCB_FLAG_NEED_HDR = common dso_local global i32 0, align 4
@ULPCB_FLAG_NO_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @tx_skb_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_skb_finalize(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ulp_skb_cb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call %struct.ulp_skb_cb* @ULP_SKB_CB(%struct.sk_buff* %4)
  store %struct.ulp_skb_cb* %5, %struct.ulp_skb_cb** %3, align 8
  %6 = load %struct.ulp_skb_cb*, %struct.ulp_skb_cb** %3, align 8
  %7 = getelementptr inbounds %struct.ulp_skb_cb, %struct.ulp_skb_cb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ULPCB_FLAG_NO_HDR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ULPCB_FLAG_NEED_HDR, align 4
  %14 = load %struct.ulp_skb_cb*, %struct.ulp_skb_cb** %3, align 8
  %15 = getelementptr inbounds %struct.ulp_skb_cb, %struct.ulp_skb_cb* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @ULPCB_FLAG_NO_APPEND, align 4
  %18 = load %struct.ulp_skb_cb*, %struct.ulp_skb_cb** %3, align 8
  %19 = getelementptr inbounds %struct.ulp_skb_cb, %struct.ulp_skb_cb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  ret void
}

declare dso_local %struct.ulp_skb_cb* @ULP_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
