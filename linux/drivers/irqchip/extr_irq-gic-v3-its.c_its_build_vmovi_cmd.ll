; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_vmovi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_vmovi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_vpe = type { i32 }
%struct.its_node = type { i32 }
%struct.its_cmd_block = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GITS_CMD_VMOVI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_vpe* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* @its_build_vmovi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_vpe* @its_build_vmovi_cmd(%struct.its_node* %0, %struct.its_cmd_block* %1, %struct.its_cmd_desc* %2) #0 {
  %4 = alloca %struct.its_node*, align 8
  %5 = alloca %struct.its_cmd_block*, align 8
  %6 = alloca %struct.its_cmd_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.its_node* %0, %struct.its_node** %4, align 8
  store %struct.its_cmd_block* %1, %struct.its_cmd_block** %5, align 8
  store %struct.its_cmd_desc* %2, %struct.its_cmd_desc** %6, align 8
  %8 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %9 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %15 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  br label %21

20:                                               ; preds = %3
  store i32 1023, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %13
  %22 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %23 = load i32, i32* @GITS_CMD_VMOVI, align 4
  %24 = call i32 @its_encode_cmd(%struct.its_cmd_block* %22, i32 %23)
  %25 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %26 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %27 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @its_encode_devid(%struct.its_cmd_block* %25, i32 %31)
  %33 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %34 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %35 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @its_encode_vpeid(%struct.its_cmd_block* %33, i32 %39)
  %41 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %42 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %43 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @its_encode_event_id(%struct.its_cmd_block* %41, i32 %45)
  %47 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @its_encode_db_phys_id(%struct.its_cmd_block* %47, i32 %48)
  %50 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %51 = call i32 @its_encode_db_valid(%struct.its_cmd_block* %50, i32 1)
  %52 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %53 = call i32 @its_fixup_cmd(%struct.its_cmd_block* %52)
  %54 = load %struct.its_node*, %struct.its_node** %4, align 8
  %55 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %56 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call %struct.its_vpe* @valid_vpe(%struct.its_node* %54, %struct.TYPE_6__* %58)
  ret %struct.its_vpe* %59
}

declare dso_local i32 @its_encode_cmd(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_devid(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_vpeid(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_event_id(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_db_phys_id(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_db_valid(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_fixup_cmd(%struct.its_cmd_block*) #1

declare dso_local %struct.its_vpe* @valid_vpe(%struct.its_node*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
