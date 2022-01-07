; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_send_mapc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_send_mapc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_node = type { i32 }
%struct.its_collection = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.its_collection* }

@its_build_mapc_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.its_node*, %struct.its_collection*, i32)* @its_send_mapc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_send_mapc(%struct.its_node* %0, %struct.its_collection* %1, i32 %2) #0 {
  %4 = alloca %struct.its_node*, align 8
  %5 = alloca %struct.its_collection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.its_cmd_desc, align 8
  store %struct.its_node* %0, %struct.its_node** %4, align 8
  store %struct.its_collection* %1, %struct.its_collection** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.its_collection*, %struct.its_collection** %5, align 8
  %9 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %7, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.its_collection* %8, %struct.its_collection** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %7, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.its_node*, %struct.its_node** %4, align 8
  %19 = load i32, i32* @its_build_mapc_cmd, align 4
  %20 = call i32 @its_send_single_command(%struct.its_node* %18, i32 %19, %struct.its_cmd_desc* %7)
  ret void
}

declare dso_local i32 @its_send_single_command(%struct.its_node*, i32, %struct.its_cmd_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
