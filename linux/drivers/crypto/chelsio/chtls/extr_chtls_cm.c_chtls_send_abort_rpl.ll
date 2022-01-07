; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_send_abort_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_send_abort_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.chtls_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.cpl_abort_req_rss = type { i32 }
%struct.chtls_sock = type { i32, %struct.l2t_entry* }
%struct.l2t_entry = type { i32 }

@RSS_HDR = common dso_local global i32 0, align 4
@send_defer_abort_rpl = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@TCP_SYN_RECV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.chtls_dev*, i32, i32)* @chtls_send_abort_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_send_abort_rpl(%struct.sock* %0, %struct.sk_buff* %1, %struct.chtls_dev* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.chtls_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpl_abort_req_rss*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.chtls_sock*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.l2t_entry*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.chtls_dev* %2, %struct.chtls_dev** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.cpl_abort_req_rss* @cplhdr(%struct.sk_buff* %16)
  %18 = load i32, i32* @RSS_HDR, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %17, i64 %19
  store %struct.cpl_abort_req_rss* %20, %struct.cpl_abort_req_rss** %11, align 8
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %21)
  store %struct.chtls_sock* %22, %struct.chtls_sock** %13, align 8
  %23 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %11, align 8
  %24 = call i32 @GET_TID(%struct.cpl_abort_req_rss* %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i32 (...) @gfp_any()
  %27 = call %struct.sk_buff* @get_cpl_skb(%struct.sk_buff* %25, i32 4, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %12, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 1
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %11, align 8
  %36 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.chtls_dev*, %struct.chtls_dev** %8, align 8
  %39 = load i32, i32* @send_defer_abort_rpl, align 4
  %40 = call i32 @t4_defer_reply(%struct.sk_buff* %37, %struct.chtls_dev* %38, i32 %39)
  br label %85

41:                                               ; preds = %5
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @set_abort_rpl_wr(%struct.sk_buff* %42, i32 %43, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @set_wr_txq(%struct.sk_buff* %46, i32 %47, i32 %48)
  %50 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %51 = call i64 @csk_conn_inline(%struct.chtls_sock* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %41
  %54 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %55 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %54, i32 0, i32 1
  %56 = load %struct.l2t_entry*, %struct.l2t_entry** %55, align 8
  store %struct.l2t_entry* %56, %struct.l2t_entry** %15, align 8
  %57 = load %struct.l2t_entry*, %struct.l2t_entry** %15, align 8
  %58 = icmp ne %struct.l2t_entry* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TCP_SYN_RECV, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %67 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = load %struct.l2t_entry*, %struct.l2t_entry** %15, align 8
  %71 = call i32 @cxgb4_l2t_send(i32 %68, %struct.sk_buff* %69, %struct.l2t_entry* %70)
  br label %85

72:                                               ; preds = %59, %53
  br label %73

73:                                               ; preds = %72, %41
  %74 = load %struct.chtls_dev*, %struct.chtls_dev** %8, align 8
  %75 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = call i32 @cxgb4_ofld_send(i32 %80, %struct.sk_buff* %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  br label %85

85:                                               ; preds = %73, %65, %30
  ret void
}

declare dso_local %struct.cpl_abort_req_rss* @cplhdr(%struct.sk_buff*) #1

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @GET_TID(%struct.cpl_abort_req_rss*) #1

declare dso_local %struct.sk_buff* @get_cpl_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @t4_defer_reply(%struct.sk_buff*, %struct.chtls_dev*, i32) #1

declare dso_local i32 @set_abort_rpl_wr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @csk_conn_inline(%struct.chtls_sock*) #1

declare dso_local i32 @cxgb4_l2t_send(i32, %struct.sk_buff*, %struct.l2t_entry*) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
