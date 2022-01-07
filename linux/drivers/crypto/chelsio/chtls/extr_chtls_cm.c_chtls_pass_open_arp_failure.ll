; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_pass_open_arp_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_pass_open_arp_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32 }
%struct.chtls_sock = type { %struct.request_sock*, %struct.chtls_dev* }
%struct.chtls_dev = type { i32 }
%struct.listen_ctx = type { %struct.sock* }
%struct.TYPE_2__ = type { i32 }

@CSK_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@bl_pass_open_abort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @chtls_pass_open_arp_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_pass_open_arp_failure(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.chtls_sock*, align 8
  %7 = alloca %struct.chtls_dev*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %10)
  store %struct.chtls_sock* %11, %struct.chtls_sock** %6, align 8
  %12 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %13 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %12, i32 0, i32 1
  %14 = load %struct.chtls_dev*, %struct.chtls_dev** %13, align 8
  store %struct.chtls_dev* %14, %struct.chtls_dev** %7, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = load i32, i32* @CSK_ABORT_RPL_PENDING, align 4
  %17 = call i64 @csk_flag(%struct.sock* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @kfree_skb(%struct.sk_buff* %20)
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %24 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %23, i32 0, i32 0
  %25 = load %struct.request_sock*, %struct.request_sock** %24, align 8
  store %struct.request_sock* %25, %struct.request_sock** %5, align 8
  %26 = load %struct.chtls_dev*, %struct.chtls_dev** %7, align 8
  %27 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %30 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @lookup_stid(i32 %28, i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to %struct.listen_ctx*
  %35 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %34, i32 0, i32 0
  %36 = load %struct.sock*, %struct.sock** %35, align 8
  store %struct.sock* %36, %struct.sock** %8, align 8
  %37 = load %struct.sock*, %struct.sock** %8, align 8
  %38 = call i32 @bh_lock_sock(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %8, align 8
  %40 = call i32 @sock_owned_by_user(%struct.sock* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %22
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @pass_open_abort(%struct.sock* %43, %struct.sock* %44, %struct.sk_buff* %45)
  br label %55

47:                                               ; preds = %22
  %48 = load i32, i32* @bl_pass_open_abort, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call %struct.TYPE_2__* @BLOG_SKB_CB(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.sock*, %struct.sock** %8, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @__sk_add_backlog(%struct.sock* %52, %struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.sock*, %struct.sock** %8, align 8
  %57 = call i32 @bh_unlock_sock(%struct.sock* %56)
  br label %58

58:                                               ; preds = %55, %19
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i64 @csk_flag(%struct.sock*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @lookup_stid(i32, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @pass_open_abort(%struct.sock*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @BLOG_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__sk_add_backlog(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
