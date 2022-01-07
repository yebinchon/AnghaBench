; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_fifo_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_fifo_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnet_device = type { i64, i32 }

@FWNET_NO_FIFO_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwnet_device*)* @fwnet_fifo_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwnet_fifo_stop(%struct.fwnet_device* %0) #0 {
  %2 = alloca %struct.fwnet_device*, align 8
  store %struct.fwnet_device* %0, %struct.fwnet_device** %2, align 8
  %3 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %4 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @FWNET_NO_FIFO_ADDR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %11 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %10, i32 0, i32 1
  %12 = call i32 @fw_core_remove_address_handler(i32* %11)
  %13 = load i64, i64* @FWNET_NO_FIFO_ADDR, align 8
  %14 = load %struct.fwnet_device*, %struct.fwnet_device** %2, align 8
  %15 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @fw_core_remove_address_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
