; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_tls_copy_tx_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_tls_copy_tx_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ulptx_sc_memrd = type { i8*, i8* }
%struct.chtls_sock = type { %struct.chtls_dev*, %struct.chtls_hws }
%struct.chtls_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.chtls_hws = type { i32, i32 }
%struct.ulptx_idata = type { i8*, i8* }

@ULP_TX_SC_NOOP = common dso_local global i32 0, align 4
@ULP_TX_SC_MEMRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tls_copy_tx_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_copy_tx_key(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ulptx_sc_memrd*, align 8
  %6 = alloca %struct.chtls_sock*, align 8
  %7 = alloca %struct.chtls_dev*, align 8
  %8 = alloca %struct.ulptx_idata*, align 8
  %9 = alloca %struct.chtls_hws*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %12)
  store %struct.chtls_sock* %13, %struct.chtls_sock** %6, align 8
  %14 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %15 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %14, i32 0, i32 1
  store %struct.chtls_hws* %15, %struct.chtls_hws** %9, align 8
  %16 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %17 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %16, i32 0, i32 0
  %18 = load %struct.chtls_dev*, %struct.chtls_dev** %17, align 8
  store %struct.chtls_dev* %18, %struct.chtls_dev** %7, align 8
  store i32 32, i32* %10, align 4
  %19 = load %struct.chtls_dev*, %struct.chtls_dev** %7, align 8
  %20 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.chtls_hws*, %struct.chtls_hws** %9, align 8
  %24 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @keyid_to_addr(i32 %22, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @__skb_push(%struct.sk_buff* %27, i32 %28)
  %30 = inttoptr i64 %29 to %struct.ulptx_idata*
  store %struct.ulptx_idata* %30, %struct.ulptx_idata** %8, align 8
  %31 = load %struct.ulptx_idata*, %struct.ulptx_idata** %8, align 8
  %32 = icmp ne %struct.ulptx_idata* %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %2
  %34 = load i32, i32* @ULP_TX_SC_NOOP, align 4
  %35 = call i32 @ULPTX_CMD_V(i32 %34)
  %36 = call i8* @htonl(i32 %35)
  %37 = load %struct.ulptx_idata*, %struct.ulptx_idata** %8, align 8
  %38 = getelementptr inbounds %struct.ulptx_idata, %struct.ulptx_idata* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = call i8* @htonl(i32 0)
  %40 = load %struct.ulptx_idata*, %struct.ulptx_idata** %8, align 8
  %41 = getelementptr inbounds %struct.ulptx_idata, %struct.ulptx_idata* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ulptx_idata*, %struct.ulptx_idata** %8, align 8
  %43 = getelementptr inbounds %struct.ulptx_idata, %struct.ulptx_idata* %42, i64 1
  %44 = bitcast %struct.ulptx_idata* %43 to %struct.ulptx_sc_memrd*
  store %struct.ulptx_sc_memrd* %44, %struct.ulptx_sc_memrd** %5, align 8
  %45 = load i32, i32* @ULP_TX_SC_MEMRD, align 4
  %46 = call i32 @ULPTX_CMD_V(i32 %45)
  %47 = call i32 @ULP_TX_SC_MORE_V(i32 1)
  %48 = or i32 %46, %47
  %49 = load %struct.chtls_hws*, %struct.chtls_hws** %9, align 8
  %50 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 4
  %53 = call i32 @ULPTX_LEN16_V(i32 %52)
  %54 = or i32 %48, %53
  %55 = call i8* @htonl(i32 %54)
  %56 = load %struct.ulptx_sc_memrd*, %struct.ulptx_sc_memrd** %5, align 8
  %57 = getelementptr inbounds %struct.ulptx_sc_memrd, %struct.ulptx_sc_memrd* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i8* @htonl(i32 %58)
  %60 = load %struct.ulptx_sc_memrd*, %struct.ulptx_sc_memrd** %5, align 8
  %61 = getelementptr inbounds %struct.ulptx_sc_memrd, %struct.ulptx_sc_memrd* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %33, %2
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @keyid_to_addr(i32, i32) #1

declare dso_local i64 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @ULPTX_CMD_V(i32) #1

declare dso_local i32 @ULP_TX_SC_MORE_V(i32) #1

declare dso_local i32 @ULPTX_LEN16_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
