; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c_dm_cell_get_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c_dm_cell_get_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison_v2 = type { i32 }
%struct.dm_cell_key_v2 = type { i32 }
%struct.bio = type { i32 }
%struct.dm_bio_prison_cell_v2 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_cell_get_v2(%struct.dm_bio_prison_v2* %0, %struct.dm_cell_key_v2* %1, i32 %2, %struct.bio* %3, %struct.dm_bio_prison_cell_v2* %4, %struct.dm_bio_prison_cell_v2** %5) #0 {
  %7 = alloca %struct.dm_bio_prison_v2*, align 8
  %8 = alloca %struct.dm_cell_key_v2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio*, align 8
  %11 = alloca %struct.dm_bio_prison_cell_v2*, align 8
  %12 = alloca %struct.dm_bio_prison_cell_v2**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.dm_bio_prison_v2* %0, %struct.dm_bio_prison_v2** %7, align 8
  store %struct.dm_cell_key_v2* %1, %struct.dm_cell_key_v2** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.bio* %3, %struct.bio** %10, align 8
  store %struct.dm_bio_prison_cell_v2* %4, %struct.dm_bio_prison_cell_v2** %11, align 8
  store %struct.dm_bio_prison_cell_v2** %5, %struct.dm_bio_prison_cell_v2*** %12, align 8
  %15 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %7, align 8
  %16 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %15, i32 0, i32 0
  %17 = load i64, i64* %14, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %7, align 8
  %20 = load %struct.dm_cell_key_v2*, %struct.dm_cell_key_v2** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.bio*, %struct.bio** %10, align 8
  %23 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %11, align 8
  %24 = load %struct.dm_bio_prison_cell_v2**, %struct.dm_bio_prison_cell_v2*** %12, align 8
  %25 = call i32 @__get(%struct.dm_bio_prison_v2* %19, %struct.dm_cell_key_v2* %20, i32 %21, %struct.bio* %22, %struct.dm_bio_prison_cell_v2* %23, %struct.dm_bio_prison_cell_v2** %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %7, align 8
  %27 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %26, i32 0, i32 0
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* %13, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__get(%struct.dm_bio_prison_v2*, %struct.dm_cell_key_v2*, i32, %struct.bio*, %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2**) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
