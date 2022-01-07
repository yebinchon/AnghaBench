; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c_gb_connection_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i64, i32, i32, i32, i32, i32 }

@GB_CONNECTION_STATE_DISABLED = common dso_local global i64 0, align 8
@gb_connection_mutex = common dso_local global i32 0, align 4
@gb_connections_lock = common dso_local global i32 0, align 4
@CPORT_ID_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_connection_destroy(%struct.gb_connection* %0) #0 {
  %2 = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %2, align 8
  %3 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %4 = icmp ne %struct.gb_connection* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %45

6:                                                ; preds = %1
  %7 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %8 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GB_CONNECTION_STATE_DISABLED, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %17 = call i32 @gb_connection_disable(%struct.gb_connection* %16)
  br label %18

18:                                               ; preds = %15, %6
  %19 = call i32 @mutex_lock(i32* @gb_connection_mutex)
  %20 = call i32 @spin_lock_irq(i32* @gb_connections_lock)
  %21 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %22 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %21, i32 0, i32 5
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %25 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %24, i32 0, i32 4
  %26 = call i32 @list_del(i32* %25)
  %27 = call i32 @spin_unlock_irq(i32* @gb_connections_lock)
  %28 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %29 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @destroy_workqueue(i32 %30)
  %32 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %33 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %36 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @gb_hd_cport_release(i32 %34, i32 %37)
  %39 = load i32, i32* @CPORT_ID_BAD, align 4
  %40 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %41 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = call i32 @mutex_unlock(i32* @gb_connection_mutex)
  %43 = load %struct.gb_connection*, %struct.gb_connection** %2, align 8
  %44 = call i32 @gb_connection_put(%struct.gb_connection* %43)
  br label %45

45:                                               ; preds = %18, %5
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @gb_hd_cport_release(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gb_connection_put(%struct.gb_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
