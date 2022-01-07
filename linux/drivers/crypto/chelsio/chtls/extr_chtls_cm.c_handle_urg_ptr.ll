; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_handle_urg_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_handle_urg_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i64, i64 }
%struct.sk_buff = type { i64 }
%struct.TYPE_2__ = type { i64 }

@SOCK_URGINLINE = common dso_local global i32 0, align 4
@TCP_URG_NOTYET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @handle_urg_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_urg_ptr(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %4, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @after(i64 %16, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %86

23:                                               ; preds = %15, %2
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @sk_send_sigurg(%struct.sock* %24)
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %23
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %33
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = load i32, i32* @SOCK_URGINLINE, align 4
  %41 = call i32 @sock_flag(%struct.sock* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %79, label %43

43:                                               ; preds = %38
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %43
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = call %struct.sk_buff* @skb_peek(i32* %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %6, align 8
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %51
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %64, %68
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %61
  %75 = load %struct.sock*, %struct.sock** %3, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 @chtls_free_skb(%struct.sock* %75, %struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %74, %61, %51
  br label %79

79:                                               ; preds = %78, %43, %38, %33, %23
  %80 = load i64, i64* @TCP_URG_NOTYET, align 8
  %81 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %82 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %85 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %79, %22
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @after(i64, i64) #1

declare dso_local i32 @sk_send_sigurg(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.TYPE_2__* @ULP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @chtls_free_skb(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
