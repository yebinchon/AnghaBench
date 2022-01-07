; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_listen_notify_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_listen_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.chtls_listen = type { i32, i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @listen_notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listen_notify_handler(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.chtls_listen*, align 8
  %8 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.chtls_listen*
  store %struct.chtls_listen* %11, %struct.chtls_listen** %7, align 8
  %12 = load i64, i64* %5, align 8
  switch i64 %12, label %33 [
    i64 129, label %13
    i64 128, label %23
  ]

13:                                               ; preds = %3
  %14 = load %struct.chtls_listen*, %struct.chtls_listen** %7, align 8
  %15 = getelementptr inbounds %struct.chtls_listen, %struct.chtls_listen* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.chtls_listen*, %struct.chtls_listen** %7, align 8
  %18 = getelementptr inbounds %struct.chtls_listen, %struct.chtls_listen* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @chtls_listen_start(i32 %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.chtls_listen*, %struct.chtls_listen** %7, align 8
  %22 = call i32 @kfree(%struct.chtls_listen* %21)
  br label %33

23:                                               ; preds = %3
  %24 = load %struct.chtls_listen*, %struct.chtls_listen** %7, align 8
  %25 = getelementptr inbounds %struct.chtls_listen, %struct.chtls_listen* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.chtls_listen*, %struct.chtls_listen** %7, align 8
  %28 = getelementptr inbounds %struct.chtls_listen, %struct.chtls_listen* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @chtls_listen_stop(i32 %26, i32 %29)
  %31 = load %struct.chtls_listen*, %struct.chtls_listen** %7, align 8
  %32 = call i32 @kfree(%struct.chtls_listen* %31)
  br label %33

33:                                               ; preds = %3, %23, %13
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @chtls_listen_start(i32, i32) #1

declare dso_local i32 @kfree(%struct.chtls_listen*) #1

declare dso_local i32 @chtls_listen_stop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
