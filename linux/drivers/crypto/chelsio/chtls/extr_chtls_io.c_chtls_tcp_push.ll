; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_chtls_tcp_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_chtls_tcp_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.chtls_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ULPCB_FLAG_NO_APPEND = common dso_local global i32 0, align 4
@ULPCB_FLAG_HOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chtls_tcp_push(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.chtls_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %9)
  store %struct.chtls_sock* %10, %struct.chtls_sock** %5, align 8
  %11 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %12 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %11, i32 0, i32 0
  %13 = call i32 @skb_queue_len(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %2
  %18 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %19 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %18, i32 0, i32 0
  %20 = call %struct.sk_buff* @skb_peek_tail(i32* %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %7, align 8
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %21)
  store %struct.tcp_sock* %22, %struct.tcp_sock** %8, align 8
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i32 @mark_urg(%struct.tcp_sock* %23, i32 %24, %struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ULPCB_FLAG_NO_APPEND, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %17
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @corked(%struct.tcp_sock* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* @ULPCB_FLAG_HOLD, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 4
  br label %72

46:                                               ; preds = %34, %17
  %47 = load i32, i32* @ULPCB_FLAG_HOLD, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %71

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ULPCB_FLAG_NO_APPEND, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = call i64 @should_push(%struct.sock* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %56
  %69 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %70 = call i32 @chtls_push_frames(%struct.chtls_sock* %69, i32 1)
  br label %71

71:                                               ; preds = %68, %64, %46
  br label %72

72:                                               ; preds = %39, %71, %2
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @mark_urg(%struct.tcp_sock*, i32, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @corked(%struct.tcp_sock*, i32) #1

declare dso_local i64 @should_push(%struct.sock*) #1

declare dso_local i32 @chtls_push_frames(%struct.chtls_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
