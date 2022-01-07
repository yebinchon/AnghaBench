; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_sync_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_sync_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_node = type { i32 }
%struct.its_cmd_block = type { i32 }
%struct.its_collection = type { i32 }

@GITS_CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.its_node*, %struct.its_cmd_block*, %struct.its_collection*)* @its_build_sync_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_build_sync_cmd(%struct.its_node* %0, %struct.its_cmd_block* %1, %struct.its_collection* %2) #0 {
  %4 = alloca %struct.its_node*, align 8
  %5 = alloca %struct.its_cmd_block*, align 8
  %6 = alloca %struct.its_collection*, align 8
  store %struct.its_node* %0, %struct.its_node** %4, align 8
  store %struct.its_cmd_block* %1, %struct.its_cmd_block** %5, align 8
  store %struct.its_collection* %2, %struct.its_collection** %6, align 8
  %7 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %8 = load i32, i32* @GITS_CMD_SYNC, align 4
  %9 = call i32 @its_encode_cmd(%struct.its_cmd_block* %7, i32 %8)
  %10 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %11 = load %struct.its_collection*, %struct.its_collection** %6, align 8
  %12 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @its_encode_target(%struct.its_cmd_block* %10, i32 %13)
  %15 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %16 = call i32 @its_fixup_cmd(%struct.its_cmd_block* %15)
  ret void
}

declare dso_local i32 @its_encode_cmd(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_target(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_fixup_cmd(%struct.its_cmd_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
