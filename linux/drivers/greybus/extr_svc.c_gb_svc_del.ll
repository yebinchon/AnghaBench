; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_svc_del(%struct.gb_svc* %0) #0 {
  %2 = alloca %struct.gb_svc*, align 8
  store %struct.gb_svc* %0, %struct.gb_svc** %2, align 8
  %3 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %4 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @gb_connection_disable_rx(i32 %5)
  %7 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %8 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %7, i32 0, i32 2
  %9 = call i64 @device_is_registered(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %13 = call i32 @gb_svc_debugfs_exit(%struct.gb_svc* %12)
  %14 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %15 = call i32 @gb_svc_watchdog_destroy(%struct.gb_svc* %14)
  %16 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %17 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %16, i32 0, i32 2
  %18 = call i32 @device_del(i32* %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %21 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @flush_workqueue(i32 %22)
  %24 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %25 = call i32 @gb_svc_remove_modules(%struct.gb_svc* %24)
  %26 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %27 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gb_connection_disable(i32 %28)
  ret void
}

declare dso_local i32 @gb_connection_disable_rx(i32) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @gb_svc_debugfs_exit(%struct.gb_svc*) #1

declare dso_local i32 @gb_svc_watchdog_destroy(%struct.gb_svc*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @gb_svc_remove_modules(%struct.gb_svc*) #1

declare dso_local i32 @gb_connection_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
