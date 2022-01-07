; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_chtls_cleanup_rbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_chtls_cleanup_rbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.chtls_sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32 }

@CREDIT_RETURN_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @chtls_cleanup_rbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_cleanup_rbuf(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.chtls_sock*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %10)
  store %struct.chtls_sock* %11, %struct.chtls_sock** %5, align 8
  store i32 15360, i32* %9, align 4
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = load i32, i32* @CREDIT_RETURN_STATE, align 4
  %14 = call i32 @sk_in_state(%struct.sock* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call i32 @chtls_select_window(%struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %20)
  store %struct.tcp_sock* %21, %struct.tcp_sock** %6, align 8
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  br label %58

36:                                               ; preds = %17
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 16384
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %38, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %36
  %51 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @send_rx_credits(%struct.chtls_sock* %51, i32 %52)
  %54 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %55 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %16, %35, %50, %46
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @sk_in_state(%struct.sock*, i32) #1

declare dso_local i32 @chtls_select_window(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @send_rx_credits(%struct.chtls_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
