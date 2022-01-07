; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_vmovp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_vmovp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_vpe = type { i32 }
%struct.its_node = type { i64 }
%struct.its_cmd_block = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@GITS_CMD_VMOVP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* @its_build_vmovp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_vpe* @its_build_vmovp_cmd(%struct.its_node* %0, %struct.its_cmd_block* %1, %struct.its_cmd_desc* %2) #0 {
  %4 = alloca %struct.its_node*, align 8
  %5 = alloca %struct.its_cmd_block*, align 8
  %6 = alloca %struct.its_cmd_desc*, align 8
  %7 = alloca i64, align 8
  store %struct.its_node* %0, %struct.its_node** %4, align 8
  store %struct.its_cmd_block* %1, %struct.its_cmd_block** %5, align 8
  store %struct.its_cmd_desc* %2, %struct.its_cmd_desc** %6, align 8
  %8 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %9 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.its_node*, %struct.its_node** %4, align 8
  %15 = getelementptr inbounds %struct.its_node, %struct.its_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  store i64 %17, i64* %7, align 8
  %18 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %19 = load i32, i32* @GITS_CMD_VMOVP, align 4
  %20 = call i32 @its_encode_cmd(%struct.its_cmd_block* %18, i32 %19)
  %21 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %22 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %23 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @its_encode_seq_num(%struct.its_cmd_block* %21, i32 %25)
  %27 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %28 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %29 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @its_encode_its_list(%struct.its_cmd_block* %27, i32 %31)
  %33 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %34 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %35 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @its_encode_vpeid(%struct.its_cmd_block* %33, i32 %39)
  %41 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @its_encode_target(%struct.its_cmd_block* %41, i64 %42)
  %44 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %45 = call i32 @its_fixup_cmd(%struct.its_cmd_block* %44)
  %46 = load %struct.its_node*, %struct.its_node** %4, align 8
  %47 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %48 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call %struct.its_vpe* @valid_vpe(%struct.its_node* %46, %struct.TYPE_6__* %50)
  ret %struct.its_vpe* %51
}

declare dso_local i32 @its_encode_cmd(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_seq_num(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_its_list(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_vpeid(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_target(%struct.its_cmd_block*, i64) #1

declare dso_local i32 @its_fixup_cmd(%struct.its_cmd_block*) #1

declare dso_local %struct.its_vpe* @valid_vpe(%struct.its_node*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
