; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_send_flowc_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_send_flowc_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.fw_flowc_wr = type { i32 }
%struct.chtls_sock = type { i32, i32 }
%struct.tcp_sock = type { i32 }
%struct.sk_buff = type { i32 }

@CSK_TX_DATA_SENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ULPCB_FLAG_NO_HDR = common dso_local global i32 0, align 4
@ULPCB_FLAG_NO_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.fw_flowc_wr*, i32)* @send_flowc_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_flowc_wr(%struct.sock* %0, %struct.fw_flowc_wr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.fw_flowc_wr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.chtls_sock*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.fw_flowc_wr* %1, %struct.fw_flowc_wr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %13)
  store %struct.chtls_sock* %14, %struct.chtls_sock** %8, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %15)
  store %struct.tcp_sock* %16, %struct.tcp_sock** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 16
  store i32 %18, i32* %11, align 4
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = load i32, i32* @CSK_TX_DATA_SENT, align 4
  %21 = call i64 @csk_flag(%struct.sock* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.sk_buff* @create_flowc_wr_skb(%struct.sock* %24, %struct.fw_flowc_wr* %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %70

33:                                               ; preds = %23
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = load i32, i32* @ULPCB_FLAG_NO_HDR, align 4
  %37 = load i32, i32* @ULPCB_FLAG_NO_APPEND, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @skb_entail(%struct.sock* %34, %struct.sk_buff* %35, i32 %38)
  store i32 0, i32* %4, align 4
  br label %70

40:                                               ; preds = %3
  %41 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %42 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %45 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @cxgb4_immdata_send(i32 %43, i32 %46, %struct.fw_flowc_wr* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %70

54:                                               ; preds = %40
  %55 = load %struct.sock*, %struct.sock** %5, align 8
  %56 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call %struct.sk_buff* @create_flowc_wr_skb(%struct.sock* %55, %struct.fw_flowc_wr* %56, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %10, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %70

64:                                               ; preds = %54
  %65 = load %struct.sock*, %struct.sock** %5, align 8
  %66 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call i32 @send_or_defer(%struct.sock* %65, %struct.tcp_sock* %66, %struct.sk_buff* %67, i32 0)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %61, %52, %33, %30
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @csk_flag(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @create_flowc_wr_skb(%struct.sock*, %struct.fw_flowc_wr*, i32) #1

declare dso_local i32 @skb_entail(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @cxgb4_immdata_send(i32, i32, %struct.fw_flowc_wr*, i32) #1

declare dso_local i32 @send_or_defer(%struct.sock*, %struct.tcp_sock*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
