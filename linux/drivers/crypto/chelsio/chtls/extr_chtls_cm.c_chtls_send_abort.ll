; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_send_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_send_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_abort_req = type { i32, i32, i32 }
%struct.chtls_sock = type { i32, i32, i32, i32 }
%struct.tcp_sock = type { i32 }

@CPL_ABORT_REQ = common dso_local global i32 0, align 4
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@CSK_TX_DATA_SENT = common dso_local global i32 0, align 4
@abort_arp_failure = common dso_local global i32 0, align 4
@CPL_ABORT_SEND_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, %struct.sk_buff*)* @chtls_send_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_send_abort(%struct.sock* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.cpl_abort_req*, align 8
  %8 = alloca %struct.chtls_sock*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %10)
  store %struct.chtls_sock* %11, %struct.chtls_sock** %8, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %18 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sk_buff* @alloc_ctrl_skb(i32 %19, i32 12)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  br label %21

21:                                               ; preds = %16, %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i64 @skb_put(%struct.sk_buff* %22, i32 12)
  %24 = inttoptr i64 %23 to %struct.cpl_abort_req*
  store %struct.cpl_abort_req* %24, %struct.cpl_abort_req** %7, align 8
  %25 = load %struct.cpl_abort_req*, %struct.cpl_abort_req** %7, align 8
  %26 = load i32, i32* @CPL_ABORT_REQ, align 4
  %27 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %28 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @INIT_TP_WR_CPL(%struct.cpl_abort_req* %25, i32 %26, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %33 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 1
  %36 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %31, i32 %37)
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @htonl(i32 %41)
  %43 = load %struct.cpl_abort_req*, %struct.cpl_abort_req** %7, align 8
  %44 = getelementptr inbounds %struct.cpl_abort_req, %struct.cpl_abort_req* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %46 = load i32, i32* @CSK_TX_DATA_SENT, align 4
  %47 = call i32 @csk_flag_nochk(%struct.chtls_sock* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.cpl_abort_req*, %struct.cpl_abort_req** %7, align 8
  %52 = getelementptr inbounds %struct.cpl_abort_req, %struct.cpl_abort_req* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.cpl_abort_req*, %struct.cpl_abort_req** %7, align 8
  %55 = getelementptr inbounds %struct.cpl_abort_req, %struct.cpl_abort_req* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %58 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @abort_arp_failure, align 4
  %61 = call i32 @t4_set_arp_err_handler(%struct.sk_buff* %56, i32 %59, i32 %60)
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @CPL_ABORT_SEND_RST, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @send_or_defer(%struct.sock* %62, %struct.tcp_sock* %63, %struct.sk_buff* %64, i32 %68)
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_ctrl_skb(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @INIT_TP_WR_CPL(%struct.cpl_abort_req*, i32, i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @csk_flag_nochk(%struct.chtls_sock*, i32) #1

declare dso_local i32 @t4_set_arp_err_handler(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @send_or_defer(%struct.sock*, %struct.tcp_sock*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
