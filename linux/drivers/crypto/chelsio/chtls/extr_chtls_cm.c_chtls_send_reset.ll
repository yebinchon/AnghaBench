; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_send_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.chtls_sock = type { i32 }
%struct.tcp_sock = type { i32, i32 }

@CSK_ABORT_SHUTDOWN = common dso_local global i32 0, align 4
@TCP_SYN_RECV = common dso_local global i64 0, align 8
@CSK_RST_ABORTED = common dso_local global i32 0, align 4
@CSK_TX_DATA_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"send tx flowc error\00", align 1
@CSK_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, %struct.sk_buff*)* @chtls_send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_send_reset(%struct.sock* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.chtls_sock*, align 8
  %8 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %9)
  store %struct.chtls_sock* %10, %struct.chtls_sock** %7, align 8
  %11 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %12 = load i32, i32* @CSK_ABORT_SHUTDOWN, align 4
  %13 = call i64 @csk_flag_nochk(%struct.chtls_sock* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %17 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ true, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TCP_SYN_RECV, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %34 = load i32, i32* @CSK_RST_ABORTED, align 4
  %35 = call i32 @csk_set_flag(%struct.chtls_sock* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %26
  br label %81

37:                                               ; preds = %21
  %38 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %39 = load i32, i32* @CSK_TX_DATA_SENT, align 4
  %40 = call i64 @csk_flag_nochk(%struct.chtls_sock* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %37
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %43)
  store %struct.tcp_sock* %44, %struct.tcp_sock** %8, align 8
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %50 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @send_tx_flowc_wr(%struct.sock* %45, i32 0, i32 %48, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %42
  %57 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %58 = load i32, i32* @CSK_TX_DATA_SENT, align 4
  %59 = call i32 @csk_set_flag(%struct.chtls_sock* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %37
  %61 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %62 = load i32, i32* @CSK_ABORT_RPL_PENDING, align 4
  %63 = call i32 @csk_set_flag(%struct.chtls_sock* %61, i32 %62)
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 @chtls_purge_write_queue(%struct.sock* %64)
  %66 = load %struct.chtls_sock*, %struct.chtls_sock** %7, align 8
  %67 = load i32, i32* @CSK_ABORT_SHUTDOWN, align 4
  %68 = call i32 @csk_set_flag(%struct.chtls_sock* %66, i32 %67)
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TCP_SYN_RECV, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @chtls_send_abort(%struct.sock* %75, i32 %76, %struct.sk_buff* %77)
  br label %80

79:                                               ; preds = %60
  br label %81

80:                                               ; preds = %74
  br label %84

81:                                               ; preds = %79, %36
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = call i32 @kfree_skb(%struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %81, %80
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @csk_flag_nochk(%struct.chtls_sock*, i32) #1

declare dso_local i32 @csk_set_flag(%struct.chtls_sock*, i32) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @send_tx_flowc_wr(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @chtls_purge_write_queue(%struct.sock*) #1

declare dso_local i32 @chtls_send_abort(%struct.sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
