; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_abort_syn_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_abort_syn_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.chtls_sock* }
%struct.chtls_sock = type { i32, %struct.chtls_dev*, %struct.request_sock* }
%struct.chtls_dev = type { i32 }
%struct.request_sock = type { i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.listen_ctx = type { %struct.sock* }
%struct.TYPE_2__ = type { i32 }

@CPL_ABORT_NO_RST = common dso_local global i32 0, align 4
@bl_abort_syn_rcv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @abort_syn_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abort_syn_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.listen_ctx*, align 8
  %8 = alloca %struct.chtls_sock*, align 8
  %9 = alloca %struct.chtls_dev*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load %struct.chtls_sock*, %struct.chtls_sock** %14, align 8
  store %struct.chtls_sock* %15, %struct.chtls_sock** %8, align 8
  %16 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %17 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %16, i32 0, i32 2
  %18 = load %struct.request_sock*, %struct.request_sock** %17, align 8
  store %struct.request_sock* %18, %struct.request_sock** %6, align 8
  %19 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %20 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %19, i32 0, i32 1
  %21 = load %struct.chtls_dev*, %struct.chtls_dev** %20, align 8
  store %struct.chtls_dev* %21, %struct.chtls_dev** %9, align 8
  %22 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %23 = icmp ne %struct.request_sock* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %74

25:                                               ; preds = %2
  %26 = load %struct.chtls_dev*, %struct.chtls_dev** %9, align 8
  %27 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %30 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @lookup_stid(i32 %28, i32 %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %74

36:                                               ; preds = %25
  %37 = load i8*, i8** %11, align 8
  %38 = bitcast i8* %37 to %struct.listen_ctx*
  store %struct.listen_ctx* %38, %struct.listen_ctx** %7, align 8
  %39 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %39, i32 0, i32 0
  %41 = load %struct.sock*, %struct.sock** %40, align 8
  store %struct.sock* %41, %struct.sock** %10, align 8
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = call i32 @bh_lock_sock(%struct.sock* %42)
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = call i32 @sock_owned_by_user(%struct.sock* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %36
  %48 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %49 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %12, align 4
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = load %struct.sock*, %struct.sock** %10, align 8
  %53 = call i32 @do_abort_syn_rcv(%struct.sock* %51, %struct.sock* %52)
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load %struct.chtls_dev*, %struct.chtls_dev** %9, align 8
  %57 = load i32, i32* @CPL_ABORT_NO_RST, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @send_abort_rpl(%struct.sock* %54, %struct.sk_buff* %55, %struct.chtls_dev* %56, i32 %57, i32 %58)
  br label %71

60:                                               ; preds = %36
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  store %struct.sock* %61, %struct.sock** %63, align 8
  %64 = load i32, i32* @bl_abort_syn_rcv, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call %struct.TYPE_2__* @BLOG_SKB_CB(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.sock*, %struct.sock** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @__sk_add_backlog(%struct.sock* %68, %struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %60, %47
  %72 = load %struct.sock*, %struct.sock** %10, align 8
  %73 = call i32 @bh_unlock_sock(%struct.sock* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %35, %24
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i8* @lookup_stid(i32, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @do_abort_syn_rcv(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @send_abort_rpl(%struct.sock*, %struct.sk_buff*, %struct.chtls_dev*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @BLOG_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__sk_add_backlog(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
