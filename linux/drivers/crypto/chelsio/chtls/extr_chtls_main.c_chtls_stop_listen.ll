; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_stop_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_stop_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32 }
%struct.sock = type { i64 }
%struct.chtls_listen = type { %struct.sock*, %struct.chtls_dev* }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@notify_mutex = common dso_local global i32 0, align 4
@listen_notify_list = common dso_local global i32 0, align 4
@CHTLS_LISTEN_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chtls_dev*, %struct.sock*)* @chtls_stop_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_stop_listen(%struct.chtls_dev* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.chtls_dev*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.chtls_listen*, align 8
  store %struct.chtls_dev* %0, %struct.chtls_dev** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %4, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IPPROTO_TCP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.chtls_listen* @kmalloc(i32 16, i32 %13)
  store %struct.chtls_listen* %14, %struct.chtls_listen** %5, align 8
  %15 = load %struct.chtls_listen*, %struct.chtls_listen** %5, align 8
  %16 = icmp ne %struct.chtls_listen* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %30

18:                                               ; preds = %12
  %19 = load %struct.chtls_dev*, %struct.chtls_dev** %3, align 8
  %20 = load %struct.chtls_listen*, %struct.chtls_listen** %5, align 8
  %21 = getelementptr inbounds %struct.chtls_listen, %struct.chtls_listen* %20, i32 0, i32 1
  store %struct.chtls_dev* %19, %struct.chtls_dev** %21, align 8
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = load %struct.chtls_listen*, %struct.chtls_listen** %5, align 8
  %24 = getelementptr inbounds %struct.chtls_listen, %struct.chtls_listen* %23, i32 0, i32 0
  store %struct.sock* %22, %struct.sock** %24, align 8
  %25 = call i32 @mutex_lock(i32* @notify_mutex)
  %26 = load i32, i32* @CHTLS_LISTEN_STOP, align 4
  %27 = load %struct.chtls_listen*, %struct.chtls_listen** %5, align 8
  %28 = call i32 @raw_notifier_call_chain(i32* @listen_notify_list, i32 %26, %struct.chtls_listen* %27)
  %29 = call i32 @mutex_unlock(i32* @notify_mutex)
  br label %30

30:                                               ; preds = %18, %17, %11
  ret void
}

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
