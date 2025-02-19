; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_send_mapd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_send_mapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_device = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.its_device* }

@its_build_mapd_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.its_device*, i32)* @its_send_mapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_send_mapd(%struct.its_device* %0, i32 %1) #0 {
  %3 = alloca %struct.its_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.its_cmd_desc, align 8
  store %struct.its_device* %0, %struct.its_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.its_device*, %struct.its_device** %3, align 8
  %7 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %5, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.its_device* %6, %struct.its_device** %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.its_device*, %struct.its_device** %3, align 8
  %17 = getelementptr inbounds %struct.its_device, %struct.its_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @its_build_mapd_cmd, align 4
  %20 = call i32 @its_send_single_command(i32 %18, i32 %19, %struct.its_cmd_desc* %5)
  ret void
}

declare dso_local i32 @its_send_single_command(i32, i32, %struct.its_cmd_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
