; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_remap_and_issue_shared_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_remap_and_issue_shared_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.bio = type { i32 }
%struct.remap_info = type { i32, i32, %struct.thin_c* }

@__remap_and_issue_shared_cell = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.dm_bio_prison_cell*, i32)* @remap_and_issue_shared_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remap_and_issue_shared_cell(%struct.thin_c* %0, %struct.dm_bio_prison_cell* %1, i32 %2) #0 {
  %4 = alloca %struct.thin_c*, align 8
  %5 = alloca %struct.dm_bio_prison_cell*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.remap_info, align 8
  store %struct.thin_c* %0, %struct.thin_c** %4, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %10 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %8, i32 0, i32 2
  store %struct.thin_c* %9, %struct.thin_c** %10, align 8
  %11 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %8, i32 0, i32 1
  %12 = call i32 @bio_list_init(i32* %11)
  %13 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %8, i32 0, i32 0
  %14 = call i32 @bio_list_init(i32* %13)
  %15 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %16 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @__remap_and_issue_shared_cell, align 4
  %19 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %5, align 8
  %20 = call i32 @cell_visit_release(i32 %17, i32 %18, %struct.remap_info* %8, %struct.dm_bio_prison_cell* %19)
  br label %21

21:                                               ; preds = %25, %3
  %22 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %8, i32 0, i32 1
  %23 = call %struct.bio* @bio_list_pop(i32* %22)
  store %struct.bio* %23, %struct.bio** %7, align 8
  %24 = icmp ne %struct.bio* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = call i32 @thin_defer_bio(%struct.thin_c* %26, %struct.bio* %27)
  br label %21

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %34, %29
  %31 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %8, i32 0, i32 0
  %32 = call %struct.bio* @bio_list_pop(i32* %31)
  store %struct.bio* %32, %struct.bio** %7, align 8
  %33 = icmp ne %struct.bio* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %36 = load %struct.bio*, %struct.bio** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @remap_and_issue(%struct.thin_c* %35, %struct.bio* %36, i32 %37)
  br label %30

39:                                               ; preds = %30
  ret void
}

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @cell_visit_release(i32, i32, %struct.remap_info*, %struct.dm_bio_prison_cell*) #1

declare dso_local %struct.bio* @bio_list_pop(i32*) #1

declare dso_local i32 @thin_defer_bio(%struct.thin_c*, %struct.bio*) #1

declare dso_local i32 @remap_and_issue(%struct.thin_c*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
