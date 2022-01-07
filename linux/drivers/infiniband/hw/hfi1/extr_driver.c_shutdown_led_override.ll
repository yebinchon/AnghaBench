; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_shutdown_led_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_shutdown_led_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@DCC_CFG_LED_CNTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shutdown_led_override(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %4 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %5 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %4, i32 0, i32 2
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  store %struct.hfi1_devdata* %6, %struct.hfi1_devdata** %3, align 8
  %7 = call i32 (...) @smp_rmb()
  %8 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %9 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %8, i32 0, i32 0
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %14 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %13, i32 0, i32 1
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %17 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %16, i32 0, i32 0
  %18 = call i32 @atomic_set(i32* %17, i32 0)
  %19 = call i32 (...) @smp_wmb()
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %22 = load i32, i32* @DCC_CFG_LED_CNTRL, align 4
  %23 = call i32 @write_csr(%struct.hfi1_devdata* %21, i32 %22, i32 0)
  ret void
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
