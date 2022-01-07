; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_doorbell.c_pvrdma_uar_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_doorbell.c_pvrdma_uar_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pvrdma_id_table }
%struct.pvrdma_id_table = type { i32, i32, i32, i32, i32, i32 }
%struct.pvrdma_uar_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvrdma_uar_free(%struct.pvrdma_dev* %0, %struct.pvrdma_uar_map* %1) #0 {
  %3 = alloca %struct.pvrdma_dev*, align 8
  %4 = alloca %struct.pvrdma_uar_map*, align 8
  %5 = alloca %struct.pvrdma_id_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pvrdma_dev* %0, %struct.pvrdma_dev** %3, align 8
  store %struct.pvrdma_uar_map* %1, %struct.pvrdma_uar_map** %4, align 8
  %8 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.pvrdma_id_table* %10, %struct.pvrdma_id_table** %5, align 8
  %11 = load %struct.pvrdma_uar_map*, %struct.pvrdma_uar_map** %4, align 8
  %12 = getelementptr inbounds %struct.pvrdma_uar_map, %struct.pvrdma_uar_map* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %5, align 8
  %15 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %5, align 8
  %20 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %19, i32 0, i32 3
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %5, align 8
  %25 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clear_bit(i32 %23, i32 %26)
  %28 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %5, align 8
  %29 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @min(i32 %30, i32 %31)
  %33 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %5, align 8
  %34 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %5, align 8
  %36 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %5, align 8
  %39 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %5, align 8
  %43 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %5, align 8
  %47 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pvrdma_id_table*, %struct.pvrdma_id_table** %5, align 8
  %49 = getelementptr inbounds %struct.pvrdma_id_table, %struct.pvrdma_id_table* %48, i32 0, i32 3
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
