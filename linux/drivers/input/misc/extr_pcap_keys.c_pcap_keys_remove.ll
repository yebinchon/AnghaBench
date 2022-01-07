; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcap_keys.c_pcap_keys_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcap_keys.c_pcap_keys_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pcap_keys = type { i32, i32 }

@PCAP_IRQ_ONOFF = common dso_local global i32 0, align 4
@PCAP_IRQ_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcap_keys_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_keys_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.pcap_keys*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.pcap_keys* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.pcap_keys* %5, %struct.pcap_keys** %3, align 8
  %6 = load %struct.pcap_keys*, %struct.pcap_keys** %3, align 8
  %7 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCAP_IRQ_ONOFF, align 4
  %10 = call i32 @pcap_to_irq(i32 %8, i32 %9)
  %11 = load %struct.pcap_keys*, %struct.pcap_keys** %3, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.pcap_keys* %11)
  %13 = load %struct.pcap_keys*, %struct.pcap_keys** %3, align 8
  %14 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCAP_IRQ_MIC, align 4
  %17 = call i32 @pcap_to_irq(i32 %15, i32 %16)
  %18 = load %struct.pcap_keys*, %struct.pcap_keys** %3, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.pcap_keys* %18)
  %20 = load %struct.pcap_keys*, %struct.pcap_keys** %3, align 8
  %21 = getelementptr inbounds %struct.pcap_keys, %struct.pcap_keys* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @input_unregister_device(i32 %22)
  %24 = load %struct.pcap_keys*, %struct.pcap_keys** %3, align 8
  %25 = call i32 @kfree(%struct.pcap_keys* %24)
  ret i32 0
}

declare dso_local %struct.pcap_keys* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @free_irq(i32, %struct.pcap_keys*) #1

declare dso_local i32 @pcap_to_irq(i32, i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.pcap_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
