; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i64, i32, i32, i32 }

@GB_CONNECTION_STATE_DISABLED = common dso_local global i64 0, align 8
@GB_CONNECTION_STATE_DISCONNECTING = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_connection_disable(%struct.gb_connection* %0) #0 {
  %2 = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %2, align 8
  %3 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %4 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %7 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GB_CONNECTION_STATE_DISABLED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %14 = call i32 @trace_gb_connection_disable(%struct.gb_connection* %13)
  %15 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %16 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %15, i32 0, i32 3
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load i64, i64* @GB_CONNECTION_STATE_DISCONNECTING, align 8
  %19 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %20 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %22 = load i32, i32* @ESHUTDOWN, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @gb_connection_cancel_operations(%struct.gb_connection* %21, i32 %23)
  %25 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %26 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %25, i32 0, i32 3
  %27 = call i32 @spin_unlock_irq(i32* %26)
  %28 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %29 = call i32 @gb_connection_hd_cport_flush(%struct.gb_connection* %28)
  %30 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %31 = call i32 @gb_connection_control_disconnecting(%struct.gb_connection* %30)
  %32 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %33 = call i32 @gb_connection_cport_shutdown_phase_1(%struct.gb_connection* %32)
  %34 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %35 = call i32 @gb_connection_hd_cport_quiesce(%struct.gb_connection* %34)
  %36 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %37 = call i32 @gb_connection_cport_shutdown_phase_2(%struct.gb_connection* %36)
  %38 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %39 = call i32 @gb_connection_control_disconnected(%struct.gb_connection* %38)
  %40 = load i64, i64* @GB_CONNECTION_STATE_DISABLED, align 8
  %41 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %42 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %44 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %12
  %48 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %49 = call i32 @gb_connection_svc_connection_destroy(%struct.gb_connection* %48)
  %50 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %51 = call i32 @gb_connection_hd_cport_clear(%struct.gb_connection* %50)
  %52 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %53 = call i32 @gb_connection_hd_cport_disable(%struct.gb_connection* %52)
  br label %54

54:                                               ; preds = %47, %12
  br label %55

55:                                               ; preds = %54, %11
  %56 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %57 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @trace_gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @gb_connection_cancel_operations(%struct.gb_connection*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @gb_connection_hd_cport_flush(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_control_disconnecting(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_cport_shutdown_phase_1(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_hd_cport_quiesce(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_cport_shutdown_phase_2(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_control_disconnected(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_svc_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_hd_cport_clear(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_hd_cport_disable(%struct.gb_connection*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
