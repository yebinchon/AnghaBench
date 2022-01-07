; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_disable_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_disable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i64, i32, i32 }

@GB_CONNECTION_STATE_ENABLED = common dso_local global i64 0, align 8
@GB_CONNECTION_STATE_ENABLED_TX = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_connection_disable_rx(%struct.gb_connection* %0) #0 {
  %2 = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %2, align 8
  %3 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %4 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %7 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %10 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GB_CONNECTION_STATE_ENABLED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %16 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %15, i32 0, i32 2
  %17 = call i32 @spin_unlock_irq(i32* %16)
  br label %31

18:                                               ; preds = %1
  %19 = load i64, i64* @GB_CONNECTION_STATE_ENABLED_TX, align 8
  %20 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %21 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %23 = load i32, i32* @ESHUTDOWN, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @gb_connection_flush_incoming_operations(%struct.gb_connection* %22, i32 %24)
  %26 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %27 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %26, i32 0, i32 2
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %30 = call i32 @trace_gb_connection_disable(%struct.gb_connection* %29)
  br label %31

31:                                               ; preds = %18, %14
  %32 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %33 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @gb_connection_flush_incoming_operations(%struct.gb_connection*, i32) #1

declare dso_local i32 @trace_gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
