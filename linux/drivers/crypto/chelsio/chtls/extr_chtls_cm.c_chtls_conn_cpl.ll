; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_conn_cpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_conn_cpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_peer_close = type { i32 }
%struct.sock = type { i32 }
%struct.rss_header = type { i32 }

@RSS_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*, %struct.sk_buff*)* @chtls_conn_cpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_conn_cpl(%struct.chtls_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cpl_peer_close*, align 8
  %7 = alloca void (%struct.sock*, %struct.sk_buff*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.cpl_peer_close* @cplhdr(%struct.sk_buff* %11)
  %13 = load i32, i32* @RSS_HDR, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cpl_peer_close, %struct.cpl_peer_close* %12, i64 %14
  store %struct.cpl_peer_close* %15, %struct.cpl_peer_close** %6, align 8
  %16 = load %struct.cpl_peer_close*, %struct.cpl_peer_close** %6, align 8
  %17 = call i32 @GET_TID(%struct.cpl_peer_close* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.cpl_peer_close* @cplhdr(%struct.sk_buff* %18)
  %20 = bitcast %struct.cpl_peer_close* %19 to %struct.rss_header*
  %21 = getelementptr inbounds %struct.rss_header, %struct.rss_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %24 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.sock* @lookup_tid(i32 %25, i32 %26)
  store %struct.sock* %27, %struct.sock** %9, align 8
  %28 = load %struct.sock*, %struct.sock** %9, align 8
  %29 = icmp ne %struct.sock* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %43

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %37 [
    i32 128, label %33
    i32 129, label %34
    i32 131, label %35
    i32 130, label %36
  ]

33:                                               ; preds = %31
  store void (%struct.sock*, %struct.sk_buff*)* @chtls_peer_close, void (%struct.sock*, %struct.sk_buff*)** %7, align 8
  br label %38

34:                                               ; preds = %31
  store void (%struct.sock*, %struct.sk_buff*)* @chtls_close_con_rpl, void (%struct.sock*, %struct.sk_buff*)** %7, align 8
  br label %38

35:                                               ; preds = %31
  store void (%struct.sock*, %struct.sk_buff*)* @chtls_abort_req_rss, void (%struct.sock*, %struct.sk_buff*)** %7, align 8
  br label %38

36:                                               ; preds = %31
  store void (%struct.sock*, %struct.sk_buff*)* @chtls_abort_rpl_rss, void (%struct.sock*, %struct.sk_buff*)** %7, align 8
  br label %38

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %36, %35, %34, %33
  %39 = load void (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*, %struct.sk_buff*)** %7, align 8
  %40 = load %struct.sock*, %struct.sock** %9, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @process_cpl_msg(void (%struct.sock*, %struct.sk_buff*)* %39, %struct.sock* %40, %struct.sk_buff* %41)
  store i32 0, i32* %3, align 4
  br label %46

43:                                               ; preds = %37, %30
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.cpl_peer_close* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_peer_close*) #1

declare dso_local %struct.sock* @lookup_tid(i32, i32) #1

declare dso_local void @chtls_peer_close(%struct.sock*, %struct.sk_buff*) #1

declare dso_local void @chtls_close_con_rpl(%struct.sock*, %struct.sk_buff*) #1

declare dso_local void @chtls_abort_req_rss(%struct.sock*, %struct.sk_buff*) #1

declare dso_local void @chtls_abort_rpl_rss(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @process_cpl_msg(void (%struct.sock*, %struct.sk_buff*)*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
