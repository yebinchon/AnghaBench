; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_hd.c_gb_hd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_hd.c_gb_hd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gb_host_device = type { i32, i32, i64 }

@gb_hd_bus_id_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @gb_hd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_hd_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.gb_host_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.gb_host_device* @to_gb_host_device(%struct.device* %4)
  store %struct.gb_host_device* %5, %struct.gb_host_device** %3, align 8
  %6 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %7 = call i32 @trace_gb_hd_release(%struct.gb_host_device* %6)
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %9 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %14 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @gb_svc_put(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %19 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ida_simple_remove(i32* @gb_hd_bus_id_map, i32 %20)
  %22 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %23 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %22, i32 0, i32 0
  %24 = call i32 @ida_destroy(i32* %23)
  %25 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %26 = call i32 @kfree(%struct.gb_host_device* %25)
  ret void
}

declare dso_local %struct.gb_host_device* @to_gb_host_device(%struct.device*) #1

declare dso_local i32 @trace_gb_hd_release(%struct.gb_host_device*) #1

declare dso_local i32 @gb_svc_put(i64) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @ida_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.gb_host_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
