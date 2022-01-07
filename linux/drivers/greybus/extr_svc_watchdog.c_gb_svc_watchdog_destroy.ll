; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc_watchdog.c_gb_svc_watchdog_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc_watchdog.c_gb_svc_watchdog_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { %struct.gb_svc_watchdog* }
%struct.gb_svc_watchdog = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_svc_watchdog_destroy(%struct.gb_svc* %0) #0 {
  %2 = alloca %struct.gb_svc*, align 8
  %3 = alloca %struct.gb_svc_watchdog*, align 8
  store %struct.gb_svc* %0, %struct.gb_svc** %2, align 8
  %4 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %5 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %4, i32 0, i32 0
  %6 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %5, align 8
  store %struct.gb_svc_watchdog* %6, %struct.gb_svc_watchdog** %3, align 8
  %7 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %3, align 8
  %8 = icmp ne %struct.gb_svc_watchdog* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %3, align 8
  %12 = getelementptr inbounds %struct.gb_svc_watchdog, %struct.gb_svc_watchdog* %11, i32 0, i32 0
  %13 = call i32 @unregister_pm_notifier(i32* %12)
  %14 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %15 = call i32 @gb_svc_watchdog_disable(%struct.gb_svc* %14)
  %16 = load %struct.gb_svc*, %struct.gb_svc** %2, align 8
  %17 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %16, i32 0, i32 0
  store %struct.gb_svc_watchdog* null, %struct.gb_svc_watchdog** %17, align 8
  %18 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %3, align 8
  %19 = call i32 @kfree(%struct.gb_svc_watchdog* %18)
  br label %20

20:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @unregister_pm_notifier(i32*) #1

declare dso_local i32 @gb_svc_watchdog_disable(%struct.gb_svc*) #1

declare dso_local i32 @kfree(%struct.gb_svc_watchdog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
