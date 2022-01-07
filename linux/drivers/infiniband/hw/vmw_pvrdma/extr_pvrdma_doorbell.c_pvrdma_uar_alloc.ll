; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_doorbell.c_pvrdma_uar_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_doorbell.c_pvrdma_uar_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pvrdma_id_table }
%struct.pvrdma_id_table = type { i32, i32, i32, i32, i32, i32 }
%struct.pvrdma_uar_map = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PVRDMA_PCI_RESOURCE_UAR = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_uar_alloc(%struct.pvrdma_dev* %0, %struct.pvrdma_uar_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvrdma_dev*, align 8
  %5 = alloca %struct.pvrdma_uar_map*, align 8
  %6 = alloca %struct.pvrdma_id_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pvrdma_dev* %0, %struct.pvrdma_dev** %4, align 8
  store %struct.pvrdma_uar_map* %1, %struct.pvrdma_uar_map** %5, align 8
  %9 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.pvrdma_id_table* %11, %struct.pvrdma_id_table** %6, align 8
  %12 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %13 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %12, i32 0, i32 3
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %17 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %20 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %23 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @find_next_zero_bit(i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %28 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %2
  %32 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %33 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %36 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %40 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %44 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %46 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %49 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @find_first_zero_bit(i32 %47, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %31, %2
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %55 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %60 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %59, i32 0, i32 3
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %96

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %68 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @set_bit(i32 %66, i32 %69)
  %71 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %72 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %6, align 8
  %77 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %76, i32 0, i32 3
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.pvrdma_uar_map*, %struct.pvrdma_uar_map** %5, align 8
  %82 = getelementptr inbounds %struct.pvrdma_uar_map, %struct.pvrdma_uar_map* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PVRDMA_PCI_RESOURCE_UAR, align 4
  %87 = call i32 @pci_resource_start(i32 %85, i32 %86)
  %88 = load i32, i32* @PAGE_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = load %struct.pvrdma_uar_map*, %struct.pvrdma_uar_map** %5, align 8
  %91 = getelementptr inbounds %struct.pvrdma_uar_map, %struct.pvrdma_uar_map* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load %struct.pvrdma_uar_map*, %struct.pvrdma_uar_map** %5, align 8
  %95 = getelementptr inbounds %struct.pvrdma_uar_map, %struct.pvrdma_uar_map* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %65, %58
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
