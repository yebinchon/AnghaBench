; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_movi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_movi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_collection = type { i32 }
%struct.its_node = type { i32 }
%struct.its_cmd_block = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GITS_CMD_MOVI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* @its_build_movi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_collection* @its_build_movi_cmd(%struct.its_node* %0, %struct.its_cmd_block* %1, %struct.its_cmd_desc* %2) #0 {
  %4 = alloca %struct.its_node*, align 8
  %5 = alloca %struct.its_cmd_block*, align 8
  %6 = alloca %struct.its_cmd_desc*, align 8
  %7 = alloca %struct.its_collection*, align 8
  store %struct.its_node* %0, %struct.its_node** %4, align 8
  store %struct.its_cmd_block* %1, %struct.its_cmd_block** %5, align 8
  store %struct.its_cmd_desc* %2, %struct.its_cmd_desc** %6, align 8
  %8 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %9 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %13 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.its_collection* @dev_event_to_col(%struct.TYPE_6__* %11, i32 %15)
  store %struct.its_collection* %16, %struct.its_collection** %7, align 8
  %17 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %18 = load i32, i32* @GITS_CMD_MOVI, align 4
  %19 = call i32 @its_encode_cmd(%struct.its_cmd_block* %17, i32 %18)
  %20 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %21 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %22 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @its_encode_devid(%struct.its_cmd_block* %20, i32 %26)
  %28 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %29 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %30 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @its_encode_event_id(%struct.its_cmd_block* %28, i32 %32)
  %34 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %35 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %36 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @its_encode_collection(%struct.its_cmd_block* %34, i32 %40)
  %42 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %43 = call i32 @its_fixup_cmd(%struct.its_cmd_block* %42)
  %44 = load %struct.its_collection*, %struct.its_collection** %7, align 8
  %45 = call %struct.its_collection* @valid_col(%struct.its_collection* %44)
  ret %struct.its_collection* %45
}

declare dso_local %struct.its_collection* @dev_event_to_col(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @its_encode_cmd(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_devid(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_event_id(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_collection(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_fixup_cmd(%struct.its_cmd_block*) #1

declare dso_local %struct.its_collection* @valid_col(%struct.its_collection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
