; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_enable_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_enable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i64, i32 }

@GB_CONNECTION_STATE_ENABLED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GB_CONNECTION_STATE_ENABLED_TX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_connection_enable_tx(%struct.gb_connection* %0) #0 {
  %2 = alloca %struct.gb_connection*, align 8
  %3 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %5 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %8 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GB_CONNECTION_STATE_ENABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %17 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GB_CONNECTION_STATE_ENABLED_TX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %31

22:                                               ; preds = %15
  %23 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %24 = call i32 @_gb_connection_enable(%struct.gb_connection* %23, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %29 = call i32 @trace_gb_connection_enable(%struct.gb_connection* %28)
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %21, %12
  %32 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %33 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_gb_connection_enable(%struct.gb_connection*, i32) #1

declare dso_local i32 @trace_gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
