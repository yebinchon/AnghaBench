; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_wd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_wd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssi_protocol = type { %struct.hsi_client* }
%struct.hsi_client = type { i32 }
%struct.timer_list = type { i32 }

@rx_wd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Watchdog triggered\0A\00", align 1
@ssi = common dso_local global %struct.ssi_protocol* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ssip_rx_wd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_rx_wd(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ssi_protocol*, align 8
  %4 = alloca %struct.hsi_client*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %6 = ptrtoint %struct.ssi_protocol* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @rx_wd, align 4
  %9 = call %struct.ssi_protocol* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.ssi_protocol* %9, %struct.ssi_protocol** %3, align 8
  %10 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %11 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %10, i32 0, i32 0
  %12 = load %struct.hsi_client*, %struct.hsi_client** %11, align 8
  store %struct.hsi_client* %12, %struct.hsi_client** %4, align 8
  %13 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %14 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %17 = call i32 @ssip_error(%struct.hsi_client* %16)
  ret void
}

declare dso_local %struct.ssi_protocol* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ssip_error(%struct.hsi_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
