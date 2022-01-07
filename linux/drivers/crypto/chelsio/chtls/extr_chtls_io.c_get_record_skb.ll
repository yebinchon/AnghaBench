; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_get_record_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_get_record_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.chtls_sock = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@TX_TLSHDR_LEN = common dso_local global i64 0, align 8
@KEY_ON_MEM_SZ = common dso_local global i64 0, align 8
@ULPCB_FLAG_NEED_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, i32, i32)* @get_record_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @get_record_skb(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.chtls_sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %9)
  store %struct.chtls_sock* %10, %struct.chtls_sock** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ 0, %13 ], [ %15, %14 ]
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @TX_TLSHDR_LEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @KEY_ON_MEM_SZ, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @max_ivs_size(%struct.sock* %23, i32 %24)
  %26 = add nsw i64 %22, %25
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.sk_buff* @alloc_skb(i64 %26, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call i64 @likely(%struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %16
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load i64, i64* @TX_TLSHDR_LEN, align 8
  %37 = load i64, i64* @KEY_ON_MEM_SZ, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @max_ivs_size(%struct.sock* %39, i32 %40)
  %42 = add nsw i64 %38, %41
  %43 = call i32 @skb_reserve(%struct.sk_buff* %35, i64 %42)
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load i32, i32* @ULPCB_FLAG_NEED_HDR, align 4
  %47 = call i32 @skb_entail(%struct.sock* %44, %struct.sk_buff* %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i32 @skb_reset_transport_header(%struct.sk_buff* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = call %struct.TYPE_8__* @ULP_SKB_CB(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %56 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call %struct.TYPE_8__* @ULP_SKB_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %34, %16
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %65
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @max_ivs_size(%struct.sock*, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_entail(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @ULP_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
