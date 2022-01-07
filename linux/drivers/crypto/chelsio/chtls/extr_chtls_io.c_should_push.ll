; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_should_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_should_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.chtls_sock = type { i64, i64, %struct.chtls_dev* }
%struct.chtls_dev = type { i32 }
%struct.tcp_sock = type { i32 }

@TCP_NAGLE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @should_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_push(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.chtls_sock*, align 8
  %5 = alloca %struct.chtls_dev*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %7)
  store %struct.chtls_sock* %8, %struct.chtls_sock** %4, align 8
  %9 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %10 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %9, i32 0, i32 2
  %11 = load %struct.chtls_dev*, %struct.chtls_dev** %10, align 8
  store %struct.chtls_dev* %11, %struct.chtls_dev** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %6, align 8
  %14 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %15 = icmp ne %struct.chtls_dev* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %19 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.chtls_sock*, %struct.chtls_sock** %4, align 8
  %22 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %17
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TCP_NAGLE_OFF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %25, %17
  %33 = phi i1 [ true, %17 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
