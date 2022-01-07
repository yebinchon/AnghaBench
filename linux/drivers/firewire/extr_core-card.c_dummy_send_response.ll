; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_dummy_send_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_dummy_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_packet = type { i32 (%struct.fw_packet*, %struct.fw_card.0*, i32)* }
%struct.fw_card.0 = type opaque

@RCODE_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_packet*)* @dummy_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy_send_response(%struct.fw_card* %0, %struct.fw_packet* %1) #0 {
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca %struct.fw_packet*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %4, align 8
  %5 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %6 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %5, i32 0, i32 0
  %7 = load i32 (%struct.fw_packet*, %struct.fw_card.0*, i32)*, i32 (%struct.fw_packet*, %struct.fw_card.0*, i32)** %6, align 8
  %8 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %9 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %10 = bitcast %struct.fw_card* %9 to %struct.fw_card.0*
  %11 = load i32, i32* @RCODE_CANCELLED, align 4
  %12 = call i32 %7(%struct.fw_packet* %8, %struct.fw_card.0* %10, i32 %11)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
