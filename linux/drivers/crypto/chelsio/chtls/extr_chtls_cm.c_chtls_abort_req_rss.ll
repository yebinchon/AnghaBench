; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_abort_req_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_abort_req_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*)*, i32, %struct.chtls_sock* }
%struct.chtls_sock = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_abort_req_rss = type { i32 }
%struct.tcp_sock = type { i32, i32 }

@RSS_HDR = common dso_local global i32 0, align 4
@CPL_ABORT_NO_RST = common dso_local global i32 0, align 4
@TCP_SYN_RECV = common dso_local global i64 0, align 8
@CSK_ABORT_REQ_RCVD = common dso_local global i32 0, align 4
@CSK_ABORT_SHUTDOWN = common dso_local global i32 0, align 4
@CSK_TX_DATA_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"send_tx_flowc error\00", align 1
@CSK_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @chtls_abort_req_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_abort_req_rss(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cpl_abort_req_rss*, align 8
  %6 = alloca %struct.chtls_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.cpl_abort_req_rss* @cplhdr(%struct.sk_buff* %10)
  %12 = load i32, i32* @RSS_HDR, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %11, i64 %13
  store %struct.cpl_abort_req_rss* %14, %struct.cpl_abort_req_rss** %5, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 3
  %17 = load %struct.chtls_sock*, %struct.chtls_sock** %16, align 8
  store %struct.chtls_sock* %17, %struct.chtls_sock** %6, align 8
  %18 = load i32, i32* @CPL_ABORT_NO_RST, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %20 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %5, align 8
  %23 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_neg_adv(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TCP_SYN_RECV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @chtls_set_tcb_tflag(%struct.sock* %34, i32 0, i32 0)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  br label %118

39:                                               ; preds = %2
  %40 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %41 = load i32, i32* @CSK_ABORT_REQ_RCVD, align 4
  %42 = call i32 @csk_reset_flag(%struct.chtls_sock* %40, i32 %41)
  %43 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %44 = load i32, i32* @CSK_ABORT_SHUTDOWN, align 4
  %45 = call i32 @csk_flag_nochk(%struct.chtls_sock* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %39
  %48 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %49 = load i32, i32* @CSK_TX_DATA_SENT, align 4
  %50 = call i32 @csk_flag_nochk(%struct.chtls_sock* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %47
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %53)
  store %struct.tcp_sock* %54, %struct.tcp_sock** %9, align 8
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @send_tx_flowc_wr(%struct.sock* %55, i32 0, i32 %58, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %52
  %67 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %68 = load i32, i32* @CSK_TX_DATA_SENT, align 4
  %69 = call i32 @csk_set_flag(%struct.chtls_sock* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %47, %39
  %71 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %72 = load i32, i32* @CSK_ABORT_SHUTDOWN, align 4
  %73 = call i32 @csk_set_flag(%struct.chtls_sock* %71, i32 %72)
  %74 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %75 = load i32, i32* @CSK_ABORT_RPL_PENDING, align 4
  %76 = call i32 @csk_flag_nochk(%struct.chtls_sock* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @ETIMEDOUT, align 4
  %80 = load %struct.sock*, %struct.sock** %3, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = load i32, i32* @SOCK_DEAD, align 4
  %84 = call i32 @sock_flag(%struct.sock* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %78
  %87 = load %struct.sock*, %struct.sock** %3, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 1
  %89 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %88, align 8
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = call i32 %89(%struct.sock* %90)
  br label %92

92:                                               ; preds = %86, %78
  %93 = load %struct.sock*, %struct.sock** %3, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TCP_SYN_RECV, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.sock*, %struct.sock** %3, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @abort_syn_rcv(%struct.sock* %99, %struct.sk_buff* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %118

104:                                              ; preds = %98, %92
  %105 = load %struct.sock*, %struct.sock** %3, align 8
  %106 = call i32 @chtls_release_resources(%struct.sock* %105)
  %107 = load %struct.sock*, %struct.sock** %3, align 8
  %108 = call i32 @chtls_conn_done(%struct.sock* %107)
  br label %109

109:                                              ; preds = %104, %70
  %110 = load %struct.sock*, %struct.sock** %3, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %113 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @chtls_send_abort_rpl(%struct.sock* %110, %struct.sk_buff* %111, i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %103, %36
  ret void
}

declare dso_local %struct.cpl_abort_req_rss* @cplhdr(%struct.sk_buff*) #1

declare dso_local i64 @is_neg_adv(i32) #1

declare dso_local i32 @chtls_set_tcb_tflag(%struct.sock*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @csk_reset_flag(%struct.chtls_sock*, i32) #1

declare dso_local i32 @csk_flag_nochk(%struct.chtls_sock*, i32) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @send_tx_flowc_wr(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @csk_set_flag(%struct.chtls_sock*, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @abort_syn_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @chtls_release_resources(%struct.sock*) #1

declare dso_local i32 @chtls_conn_done(%struct.sock*) #1

declare dso_local i32 @chtls_send_abort_rpl(%struct.sock*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
