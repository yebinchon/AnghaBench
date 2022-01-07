; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls.h_send_or_defer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls.h_send_or_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.chtls_sock = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.tcp_sock*, %struct.sk_buff*, i32)* @send_or_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_or_defer(%struct.sock* %0, %struct.tcp_sock* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.chtls_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.tcp_sock* %1, %struct.tcp_sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %10)
  store %struct.chtls_sock* %11, %struct.chtls_sock** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load %struct.chtls_sock*, %struct.chtls_sock** %9, align 8
  %16 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = load %struct.chtls_sock*, %struct.chtls_sock** %9, align 8
  %20 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cxgb4_l2t_send(i32 %17, %struct.sk_buff* %18, i32 %21)
  br label %29

23:                                               ; preds = %4
  %24 = load %struct.chtls_sock*, %struct.chtls_sock** %9, align 8
  %25 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call i32 @cxgb4_ofld_send(i32 %26, %struct.sk_buff* %27)
  br label %29

29:                                               ; preds = %23, %14
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @cxgb4_l2t_send(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
