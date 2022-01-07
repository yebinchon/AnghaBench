; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_uld_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_uld_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_gl = type { i32 }
%struct.chtls_dev = type { i32 }
%struct.sk_buff = type { i32 }

@CPL_RX_PKT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RX_PULL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.pkt_gl*)* @chtls_uld_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_uld_rx_handler(i8* %0, i32* %1, %struct.pkt_gl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pkt_gl*, align 8
  %8 = alloca %struct.chtls_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pkt_gl* %2, %struct.pkt_gl** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.chtls_dev*
  store %struct.chtls_dev* %12, %struct.chtls_dev** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @CPL_RX_PKT, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.chtls_dev*, %struct.chtls_dev** %8, align 8
  %23 = load %struct.pkt_gl*, %struct.pkt_gl** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @chtls_recv_packet(%struct.chtls_dev* %22, %struct.pkt_gl* %23, i32* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %50

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %53

29:                                               ; preds = %3
  %30 = load %struct.pkt_gl*, %struct.pkt_gl** %7, align 8
  %31 = icmp ne %struct.pkt_gl* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load %struct.chtls_dev*, %struct.chtls_dev** %8, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @chtls_recv_rsp(%struct.chtls_dev* %33, i32* %34)
  store i32 %35, i32* %4, align 4
  br label %53

36:                                               ; preds = %29
  %37 = load %struct.pkt_gl*, %struct.pkt_gl** %7, align 8
  %38 = call %struct.sk_buff* @cxgb4_pktgl_to_skb(%struct.pkt_gl* %37, i32 128, i32 128)
  store %struct.sk_buff* %38, %struct.sk_buff** %10, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %50

46:                                               ; preds = %36
  %47 = load %struct.chtls_dev*, %struct.chtls_dev** %8, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @chtls_recv(%struct.chtls_dev* %47, %struct.sk_buff** %10, i32* %48)
  store i32 0, i32* %4, align 4
  br label %53

50:                                               ; preds = %45, %27
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %46, %32, %28
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @chtls_recv_packet(%struct.chtls_dev*, %struct.pkt_gl*, i32*) #1

declare dso_local i32 @chtls_recv_rsp(%struct.chtls_dev*, i32*) #1

declare dso_local %struct.sk_buff* @cxgb4_pktgl_to_skb(%struct.pkt_gl*, i32, i32) #1

declare dso_local i32 @chtls_recv(%struct.chtls_dev*, %struct.sk_buff**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
