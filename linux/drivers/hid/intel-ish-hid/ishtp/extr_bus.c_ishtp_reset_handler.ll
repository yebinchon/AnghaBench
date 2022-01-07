; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i64, i64, i32 }

@ISHTP_DEV_RESETTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_reset_handler(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca i64, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  %4 = load i32, i32* @ISHTP_DEV_RESETTING, align 4
  %5 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %6 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %5, i32 0, i32 3
  store i32 %4, i32* %6, align 8
  %7 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %8 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %7, i32 0, i32 0
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %12 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %14 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %16 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %20 = call i32 @ishtp_bus_remove_all_clients(%struct.ishtp_device* %19, i32 1)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ishtp_bus_remove_all_clients(%struct.ishtp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
