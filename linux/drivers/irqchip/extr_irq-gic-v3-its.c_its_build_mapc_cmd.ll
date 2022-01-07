; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_mapc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_mapc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_collection = type { i32, i32 }
%struct.its_node = type { i32 }
%struct.its_cmd_block = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.its_collection*, i32 }

@GITS_CMD_MAPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* @its_build_mapc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_collection* @its_build_mapc_cmd(%struct.its_node* %0, %struct.its_cmd_block* %1, %struct.its_cmd_desc* %2) #0 {
  %4 = alloca %struct.its_node*, align 8
  %5 = alloca %struct.its_cmd_block*, align 8
  %6 = alloca %struct.its_cmd_desc*, align 8
  store %struct.its_node* %0, %struct.its_node** %4, align 8
  store %struct.its_cmd_block* %1, %struct.its_cmd_block** %5, align 8
  store %struct.its_cmd_desc* %2, %struct.its_cmd_desc** %6, align 8
  %7 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %8 = load i32, i32* @GITS_CMD_MAPC, align 4
  %9 = call i32 @its_encode_cmd(%struct.its_cmd_block* %7, i32 %8)
  %10 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %11 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %12 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.its_collection*, %struct.its_collection** %13, align 8
  %15 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @its_encode_collection(%struct.its_cmd_block* %10, i32 %16)
  %18 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %19 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %20 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.its_collection*, %struct.its_collection** %21, align 8
  %23 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @its_encode_target(%struct.its_cmd_block* %18, i32 %24)
  %26 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %27 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %28 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @its_encode_valid(%struct.its_cmd_block* %26, i32 %30)
  %32 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %33 = call i32 @its_fixup_cmd(%struct.its_cmd_block* %32)
  %34 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %35 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.its_collection*, %struct.its_collection** %36, align 8
  ret %struct.its_collection* %37
}

declare dso_local i32 @its_encode_cmd(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_collection(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_target(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_valid(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_fixup_cmd(%struct.its_cmd_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
