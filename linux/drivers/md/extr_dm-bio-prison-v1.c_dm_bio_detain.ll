; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c_dm_bio_detain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c_dm_bio_detain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison = type { i32 }
%struct.dm_cell_key = type { i32 }
%struct.bio = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bio_detain(%struct.dm_bio_prison* %0, %struct.dm_cell_key* %1, %struct.bio* %2, %struct.dm_bio_prison_cell* %3, %struct.dm_bio_prison_cell** %4) #0 {
  %6 = alloca %struct.dm_bio_prison*, align 8
  %7 = alloca %struct.dm_cell_key*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.dm_bio_prison_cell*, align 8
  %10 = alloca %struct.dm_bio_prison_cell**, align 8
  store %struct.dm_bio_prison* %0, %struct.dm_bio_prison** %6, align 8
  store %struct.dm_cell_key* %1, %struct.dm_cell_key** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store %struct.dm_bio_prison_cell* %3, %struct.dm_bio_prison_cell** %9, align 8
  store %struct.dm_bio_prison_cell** %4, %struct.dm_bio_prison_cell*** %10, align 8
  %11 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %6, align 8
  %12 = load %struct.dm_cell_key*, %struct.dm_cell_key** %7, align 8
  %13 = load %struct.bio*, %struct.bio** %8, align 8
  %14 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %9, align 8
  %15 = load %struct.dm_bio_prison_cell**, %struct.dm_bio_prison_cell*** %10, align 8
  %16 = call i32 @bio_detain(%struct.dm_bio_prison* %11, %struct.dm_cell_key* %12, %struct.bio* %13, %struct.dm_bio_prison_cell* %14, %struct.dm_bio_prison_cell** %15)
  ret i32 %16
}

declare dso_local i32 @bio_detain(%struct.dm_bio_prison*, %struct.dm_cell_key*, %struct.bio*, %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
