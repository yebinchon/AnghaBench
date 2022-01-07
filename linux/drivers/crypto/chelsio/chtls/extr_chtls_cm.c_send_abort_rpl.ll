; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_send_abort_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_send_abort_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.chtls_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.cpl_abort_req_rss = type { i32 }
%struct.chtls_sock = type { i32, %struct.l2t_entry* }
%struct.l2t_entry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@TCP_SYN_RECV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.chtls_dev*, i32, i32)* @send_abort_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_abort_rpl(%struct.sock* %0, %struct.sk_buff* %1, %struct.chtls_dev* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.chtls_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpl_abort_req_rss*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.chtls_sock*, align 8
  %14 = alloca %struct.l2t_entry*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.chtls_dev* %2, %struct.chtls_dev** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.cpl_abort_req_rss* @cplhdr(%struct.sk_buff* %15)
  store %struct.cpl_abort_req_rss* %16, %struct.cpl_abort_req_rss** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %17)
  store %struct.chtls_sock* %18, %struct.chtls_sock** %13, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %12, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 %24, 1
  %26 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %11, align 8
  %27 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.chtls_dev*, %struct.chtls_dev** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i32 @send_defer_abort_rpl(%struct.chtls_dev* %28, %struct.sk_buff* %29)
  br label %76

31:                                               ; preds = %5
  %32 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %33 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %11, align 8
  %34 = call i32 @GET_TID(%struct.cpl_abort_req_rss* %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @set_abort_rpl_wr(%struct.sk_buff* %32, i32 %34, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @set_wr_txq(%struct.sk_buff* %39, i32 %40, i32 %41)
  %43 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %44 = call i64 @csk_conn_inline(%struct.chtls_sock* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %31
  %47 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %48 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %47, i32 0, i32 1
  %49 = load %struct.l2t_entry*, %struct.l2t_entry** %48, align 8
  store %struct.l2t_entry* %49, %struct.l2t_entry** %14, align 8
  %50 = load %struct.l2t_entry*, %struct.l2t_entry** %14, align 8
  %51 = icmp ne %struct.l2t_entry* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TCP_SYN_RECV, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.chtls_sock*, %struct.chtls_sock** %13, align 8
  %60 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = load %struct.l2t_entry*, %struct.l2t_entry** %14, align 8
  %64 = call i32 @cxgb4_l2t_send(i32 %61, %struct.sk_buff* %62, %struct.l2t_entry* %63)
  br label %76

65:                                               ; preds = %52, %46
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.chtls_dev*, %struct.chtls_dev** %8, align 8
  %68 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %75 = call i32 @cxgb4_ofld_send(i32 %73, %struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %66, %58, %23
  ret void
}

declare dso_local %struct.cpl_abort_req_rss* @cplhdr(%struct.sk_buff*) #1

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @send_defer_abort_rpl(%struct.chtls_dev*, %struct.sk_buff*) #1

declare dso_local i32 @set_abort_rpl_wr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_abort_req_rss*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @csk_conn_inline(%struct.chtls_sock*) #1

declare dso_local i32 @cxgb4_l2t_send(i32, %struct.sk_buff*, %struct.l2t_entry*) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
