; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_rx_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_rx_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.tlsrx_cmp_hdr = type { i32, i32 }
%struct.cpl_rx_tls_cmp = type { i32, i32 }
%struct.chtls_sock = type { %struct.chtls_hws }
%struct.chtls_hws = type { i64, i32 }
%struct.tcp_sock = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TLSRX_HDR_PKT_ERROR_M = common dso_local global i32 0, align 4
@CONTENT_TYPE_ERROR = common dso_local global i32 0, align 4
@TLS_HEADER_LENGTH = common dso_local global i32 0, align 4
@ULPCB_FLAG_TLS_HDR = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @chtls_rx_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_rx_hdr(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tlsrx_cmp_hdr*, align 8
  %6 = alloca %struct.cpl_rx_tls_cmp*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.chtls_sock*, align 8
  %9 = alloca %struct.chtls_hws*, align 8
  %10 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.cpl_rx_tls_cmp* @cplhdr(%struct.sk_buff* %11)
  store %struct.cpl_rx_tls_cmp* %12, %struct.cpl_rx_tls_cmp** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %13)
  store %struct.chtls_sock* %14, %struct.chtls_sock** %8, align 8
  %15 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %16 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %15, i32 0, i32 0
  store %struct.chtls_hws* %16, %struct.chtls_hws** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %17)
  store %struct.tcp_sock* %18, %struct.tcp_sock** %10, align 8
  %19 = load %struct.cpl_rx_tls_cmp*, %struct.cpl_rx_tls_cmp** %6, align 8
  %20 = getelementptr inbounds %struct.cpl_rx_tls_cmp, %struct.cpl_rx_tls_cmp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @skb_reset_transport_header(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @__skb_pull(%struct.sk_buff* %31, i32 8)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.tlsrx_cmp_hdr*
  store %struct.tlsrx_cmp_hdr* %36, %struct.tlsrx_cmp_hdr** %5, align 8
  %37 = load %struct.tlsrx_cmp_hdr*, %struct.tlsrx_cmp_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.tlsrx_cmp_hdr, %struct.tlsrx_cmp_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TLSRX_HDR_PKT_ERROR_M, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i32, i32* @CONTENT_TYPE_ERROR, align 4
  %45 = load %struct.tlsrx_cmp_hdr*, %struct.tlsrx_cmp_hdr** %5, align 8
  %46 = getelementptr inbounds %struct.tlsrx_cmp_hdr, %struct.tlsrx_cmp_hdr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %2
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load i32, i32* @TLS_HEADER_LENGTH, align 4
  %55 = call i32 @__skb_trim(%struct.sk_buff* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.cpl_rx_tls_cmp*, %struct.cpl_rx_tls_cmp** %6, align 8
  %58 = getelementptr inbounds %struct.cpl_rx_tls_cmp, %struct.cpl_rx_tls_cmp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohl(i32 %59)
  %61 = call i64 @CPL_RX_TLS_CMP_PDULENGTH_G(i32 %60)
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load i32, i32* @ULPCB_FLAG_TLS_HDR, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 4
  %74 = load %struct.chtls_hws*, %struct.chtls_hws** %9, align 8
  %75 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %74, i32 0, i32 1
  %76 = call %struct.sk_buff* @__skb_dequeue(i32* %75)
  store %struct.sk_buff* %76, %struct.sk_buff** %7, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %56
  %80 = load %struct.sock*, %struct.sock** %3, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 1
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @__skb_queue_tail(i32* %81, %struct.sk_buff* %82)
  br label %100

84:                                               ; preds = %56
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.chtls_hws*, %struct.chtls_hws** %9, align 8
  %87 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @chtls_set_hdrlen(%struct.sk_buff* %85, i64 %88)
  %90 = load %struct.chtls_hws*, %struct.chtls_hws** %9, align 8
  %91 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.sock*, %struct.sock** %3, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 1
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = call i32 @__skb_queue_tail(i32* %93, %struct.sk_buff* %94)
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 1
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = call i32 @__skb_queue_tail(i32* %97, %struct.sk_buff* %98)
  br label %100

100:                                              ; preds = %84, %79
  %101 = load %struct.sock*, %struct.sock** %3, align 8
  %102 = load i32, i32* @SOCK_DEAD, align 4
  %103 = call i32 @sock_flag(%struct.sock* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %107 = call i32 @check_sk_callbacks(%struct.chtls_sock* %106)
  %108 = load %struct.sock*, %struct.sock** %3, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 0
  %110 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %109, align 8
  %111 = load %struct.sock*, %struct.sock** %3, align 8
  %112 = call i32 %110(%struct.sock* %111)
  br label %113

113:                                              ; preds = %105, %100
  ret void
}

declare dso_local %struct.cpl_rx_tls_cmp* @cplhdr(%struct.sk_buff*) #1

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @CPL_RX_TLS_CMP_PDULENGTH_G(i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @chtls_set_hdrlen(%struct.sk_buff*, i64) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @check_sk_callbacks(%struct.chtls_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
