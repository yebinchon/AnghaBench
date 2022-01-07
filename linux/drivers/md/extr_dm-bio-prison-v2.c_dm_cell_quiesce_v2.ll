; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c_dm_cell_quiesce_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c_dm_cell_quiesce_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison_v2 = type { i32 }
%struct.dm_bio_prison_cell_v2 = type { i32 }
%struct.work_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_cell_quiesce_v2(%struct.dm_bio_prison_v2* %0, %struct.dm_bio_prison_cell_v2* %1, %struct.work_struct* %2) #0 {
  %4 = alloca %struct.dm_bio_prison_v2*, align 8
  %5 = alloca %struct.dm_bio_prison_cell_v2*, align 8
  %6 = alloca %struct.work_struct*, align 8
  %7 = alloca i64, align 8
  store %struct.dm_bio_prison_v2* %0, %struct.dm_bio_prison_v2** %4, align 8
  store %struct.dm_bio_prison_cell_v2* %1, %struct.dm_bio_prison_cell_v2** %5, align 8
  store %struct.work_struct* %2, %struct.work_struct** %6, align 8
  %8 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %9 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %13 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %5, align 8
  %14 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %15 = call i32 @__quiesce(%struct.dm_bio_prison_v2* %12, %struct.dm_bio_prison_cell_v2* %13, %struct.work_struct* %14)
  %16 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %17 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__quiesce(%struct.dm_bio_prison_v2*, %struct.dm_bio_prison_cell_v2*, %struct.work_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
