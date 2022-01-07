; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_mapd_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_build_mapd_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_collection = type { i32 }
%struct.its_node = type { i32 }
%struct.its_cmd_block = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ITS_ITT_ALIGN = common dso_local global i32 0, align 4
@GITS_CMD_MAPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_collection* (%struct.its_node*, %struct.its_cmd_block*, %struct.its_cmd_desc*)* @its_build_mapd_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_collection* @its_build_mapd_cmd(%struct.its_node* %0, %struct.its_cmd_block* %1, %struct.its_cmd_desc* %2) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ilog2(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %17 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @virt_to_phys(i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @ITS_ITT_ALIGN, align 4
  %25 = call i64 @ALIGN(i64 %23, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %27 = load i32, i32* @GITS_CMD_MAPD, align 4
  %28 = call i32 @its_encode_cmd(%struct.its_cmd_block* %26, i32 %27)
  %29 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %30 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %31 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @its_encode_devid(%struct.its_cmd_block* %29, i32 %35)
  %37 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub nsw i64 %38, 1
  %40 = call i32 @its_encode_size(%struct.its_cmd_block* %37, i64 %39)
  %41 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @its_encode_itt(%struct.its_cmd_block* %41, i64 %42)
  %44 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %45 = load %struct.its_cmd_desc*, %struct.its_cmd_desc** %6, align 8
  %46 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @its_encode_valid(%struct.its_cmd_block* %44, i32 %48)
  %50 = load %struct.its_cmd_block*, %struct.its_cmd_block** %5, align 8
  %51 = call i32 @its_fixup_cmd(%struct.its_cmd_block* %50)
  ret %struct.its_collection* null
}

declare dso_local i64 @ilog2(i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @its_encode_cmd(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_devid(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_encode_size(%struct.its_cmd_block*, i64) #1

declare dso_local i32 @its_encode_itt(%struct.its_cmd_block*, i64) #1

declare dso_local i32 @its_encode_valid(%struct.its_cmd_block*, i32) #1

declare dso_local i32 @its_fixup_cmd(%struct.its_cmd_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
