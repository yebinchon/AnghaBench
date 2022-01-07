; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_reset_compl_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_reset_compl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i32 }

@ISHTP_DEV_INIT_CLIENTS = common dso_local global i32 0, align 4
@ISHTP_HBM_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_reset_compl_handler(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  %3 = load i32, i32* @ISHTP_DEV_INIT_CLIENTS, align 4
  %4 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %5 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @ISHTP_HBM_START, align 4
  %7 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %8 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %10 = call i32 @ishtp_hbm_start_req(%struct.ishtp_device* %9)
  ret void
}

declare dso_local i32 @ishtp_hbm_start_req(%struct.ishtp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
