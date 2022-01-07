; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_defer_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_defer_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i32, i32, %struct.pool* }
%struct.pool = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.dm_bio_prison_cell*)* @thin_defer_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thin_defer_cell(%struct.thin_c* %0, %struct.dm_bio_prison_cell* %1) #0 {
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca %struct.dm_bio_prison_cell*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pool*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %3, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %4, align 8
  %7 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %8 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %7, i32 0, i32 2
  %9 = load %struct.pool*, %struct.pool** %8, align 8
  store %struct.pool* %9, %struct.pool** %6, align 8
  %10 = load %struct.pool*, %struct.pool** %6, align 8
  %11 = getelementptr inbounds %struct.pool, %struct.pool* %10, i32 0, i32 0
  %12 = call i32 @throttle_lock(i32* %11)
  %13 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %14 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %18 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %17, i32 0, i32 0
  %19 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %20 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %19, i32 0, i32 1
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  %22 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %23 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.pool*, %struct.pool** %6, align 8
  %27 = getelementptr inbounds %struct.pool, %struct.pool* %26, i32 0, i32 0
  %28 = call i32 @throttle_unlock(i32* %27)
  %29 = load %struct.pool*, %struct.pool** %6, align 8
  %30 = call i32 @wake_worker(%struct.pool* %29)
  ret void
}

declare dso_local i32 @throttle_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @throttle_unlock(i32*) #1

declare dso_local i32 @wake_worker(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
