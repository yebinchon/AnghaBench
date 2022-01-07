; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_vmapp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_vmapp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_vpe = type { i32 }
%struct.its_node = type { i64 }
%struct.its_cmd_block = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@GITS_CMD_VMAPP = common dso_local global i32 0, align 4
@LPI_NRBITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* @its_build_vmapp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_vpe* @its_build_vmapp_cmd(%struct.its_node* %0, %struct.its_cmd_block* %1, %struct.its_cmd_desc* %2) #0 {
  %4 = alloca %struct.its_node*, align 8
  %5 = alloca %struct.its_cmd_block*, align 8
  %6 = alloca %struct.its_cmd_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.its_node* %0, %struct.its_node** %4, align 8
  store %struct.its_cmd_block* %1, %struct.its_cmd_block** %5, align 8
  store %struct.its_cmd_desc* %2, %struct.its_cmd_desc** %6, align 8
  %9 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %10 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @page_address(i32 %14)
  %16 = call i64 @virt_to_phys(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %18 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.its_node*, %struct.its_node** %4, align 8
  %24 = getelementptr inbounds %struct.its_node, %struct.its_node* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  store i64 %26, i64* %8, align 8
  %27 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %28 = load i32, i32* @GITS_CMD_VMAPP, align 4
  %29 = call i32 @its_encode_cmd(%struct.its_cmd_block* %27, i32 %28)
  %30 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %31 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %32 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @its_encode_vpeid(%struct.its_cmd_block* %30, i32 %36)
  %38 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %39 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %40 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @its_encode_valid(%struct.its_cmd_block* %38, i32 %42)
  %44 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @its_encode_target(%struct.its_cmd_block* %44, i64 %45)
  %47 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @its_encode_vpt_addr(%struct.its_cmd_block* %47, i64 %48)
  %50 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %51 = load i64, i64* @LPI_NRBITS, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @its_encode_vpt_size(%struct.its_cmd_block* %50, i64 %52)
  %54 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %55 = call i32 @its_fixup_cmd(%struct.its_cmd_block* %54)
  %56 = load %struct.its_node*, %struct.its_node** %4, align 8
  %57 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %58 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = call %struct.its_vpe* @valid_vpe(%struct.its_node* %56, %struct.TYPE_6__* %60)
  ret %struct.its_vpe* %61
}

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @its_encode_cmd(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_vpeid(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_valid(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_target(%struct.its_cmd_block*, i64) #1

declare dso_local i32 @its_encode_vpt_addr(%struct.its_cmd_block*, i64) #1

declare dso_local i32 @its_encode_vpt_size(%struct.its_cmd_block*, i64) #1

declare dso_local i32 @its_fixup_cmd(%struct.its_cmd_block*) #1

declare dso_local %struct.its_vpe* @valid_vpe(%struct.its_node*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
