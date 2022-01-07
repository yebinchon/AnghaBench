; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_start_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_start_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32 }
%struct.sock = type { i64, i64, i32 }
%struct.chtls_listen = type { %struct.sock*, %struct.chtls_dev* }
%struct.TYPE_2__ = type { i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@listen_backlog_rcv = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@notify_mutex = common dso_local global i32 0, align 4
@listen_notify_list = common dso_local global i32 0, align 4
@CHTLS_LISTEN_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*, %struct.sock*)* @chtls_start_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtls_start_listen(%struct.chtls_dev* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.chtls_listen*, align 8
  %7 = alloca i32, align 4
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %5, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IPPROTO_TCP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EPROTONOSUPPORT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PF_INET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @LOOPBACK(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EADDRNOTAVAIL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %22, %16
  %33 = load i32, i32* @listen_backlog_rcv, align 4
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.chtls_listen* @kmalloc(i32 16, i32 %36)
  store %struct.chtls_listen* %37, %struct.chtls_listen** %6, align 8
  %38 = load %struct.chtls_listen*, %struct.chtls_listen** %6, align 8
  %39 = icmp ne %struct.chtls_listen* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %32
  %44 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %45 = load %struct.chtls_listen*, %struct.chtls_listen** %6, align 8
  %46 = getelementptr inbounds %struct.chtls_listen, %struct.chtls_listen* %45, i32 0, i32 1
  store %struct.chtls_dev* %44, %struct.chtls_dev** %46, align 8
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = load %struct.chtls_listen*, %struct.chtls_listen** %6, align 8
  %49 = getelementptr inbounds %struct.chtls_listen, %struct.chtls_listen* %48, i32 0, i32 0
  store %struct.sock* %47, %struct.sock** %49, align 8
  %50 = call i32 @mutex_lock(i32* @notify_mutex)
  %51 = load i32, i32* @CHTLS_LISTEN_START, align 4
  %52 = load %struct.chtls_listen*, %struct.chtls_listen** %6, align 8
  %53 = call i32 @raw_notifier_call_chain(i32* @listen_notify_list, i32 %51, %struct.chtls_listen* %52)
  store i32 %53, i32* %7, align 4
  %54 = call i32 @mutex_unlock(i32* @notify_mutex)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %43, %40, %29, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @LOOPBACK(i32) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.chtls_listen* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @raw_notifier_call_chain(i32*, i32, %struct.chtls_listen*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
