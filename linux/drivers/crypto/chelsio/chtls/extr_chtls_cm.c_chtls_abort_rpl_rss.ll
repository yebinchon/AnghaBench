; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_abort_rpl_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_abort_rpl_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_abort_rpl_rss = type { i32 }
%struct.chtls_sock = type { i32, %struct.chtls_dev* }
%struct.chtls_dev = type { i32 }

@RSS_HDR = common dso_local global i32 0, align 4
@CSK_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@CSK_ABORT_REQ_RCVD = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @chtls_abort_rpl_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_abort_rpl_rss(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cpl_abort_rpl_rss*, align 8
  %6 = alloca %struct.chtls_sock*, align 8
  %7 = alloca %struct.chtls_dev*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.cpl_abort_rpl_rss* @cplhdr(%struct.sk_buff* %8)
  %10 = load i32, i32* @RSS_HDR, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cpl_abort_rpl_rss, %struct.cpl_abort_rpl_rss* %9, i64 %11
  store %struct.cpl_abort_rpl_rss* %12, %struct.cpl_abort_rpl_rss** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %13)
  store %struct.chtls_sock* %14, %struct.chtls_sock** %6, align 8
  %15 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %16 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %15, i32 0, i32 1
  %17 = load %struct.chtls_dev*, %struct.chtls_dev** %16, align 8
  store %struct.chtls_dev* %17, %struct.chtls_dev** %7, align 8
  %18 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %19 = load i32, i32* @CSK_ABORT_RPL_PENDING, align 4
  %20 = call i64 @csk_flag_nochk(%struct.chtls_sock* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %2
  %23 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %24 = load i32, i32* @CSK_ABORT_RPL_PENDING, align 4
  %25 = call i32 @csk_reset_flag(%struct.chtls_sock* %23, i32 %24)
  %26 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %27 = load i32, i32* @CSK_ABORT_REQ_RCVD, align 4
  %28 = call i64 @csk_flag_nochk(%struct.chtls_sock* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %22
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TCP_SYN_SENT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.chtls_dev*, %struct.chtls_dev** %7, align 8
  %38 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %41 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cpl_abort_rpl_rss*, %struct.cpl_abort_rpl_rss** %5, align 8
  %44 = call i32 @GET_TID(%struct.cpl_abort_rpl_rss* %43)
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cxgb4_remove_tid(i32 %39, i32 %42, i32 %44, i32 %47)
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = call i32 @sock_put(%struct.sock* %49)
  br label %51

51:                                               ; preds = %36, %30
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = call i32 @chtls_release_resources(%struct.sock* %52)
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = call i32 @chtls_conn_done(%struct.sock* %54)
  br label %56

56:                                               ; preds = %51, %22
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  ret void
}

declare dso_local %struct.cpl_abort_rpl_rss* @cplhdr(%struct.sk_buff*) #1

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i64 @csk_flag_nochk(%struct.chtls_sock*, i32) #1

declare dso_local i32 @csk_reset_flag(%struct.chtls_sock*, i32) #1

declare dso_local i32 @cxgb4_remove_tid(i32, i32, i32, i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_abort_rpl_rss*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @chtls_release_resources(%struct.sock*) #1

declare dso_local i32 @chtls_conn_done(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
