; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc_watchdog.c_gb_svc_watchdog_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc_watchdog.c_gb_svc_watchdog_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_svc_watchdog_enabled(%struct.gb_svc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_svc*, align 8
  store %struct.gb_svc* %0, %struct.gb_svc** %3, align 8
  %4 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %5 = icmp ne %struct.gb_svc* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %8 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %18

12:                                               ; preds = %6
  %13 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %14 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
