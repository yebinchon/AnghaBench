; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_remap_and_issue_overwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_remap_and_issue_overwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.pool* }
%struct.pool = type { i32 }
%struct.bio = type { i32 }
%struct.dm_thin_new_mapping = type { i32, %struct.bio* }
%struct.dm_thin_endio_hook = type { %struct.dm_thin_new_mapping* }

@overwrite_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.bio*, i32, %struct.dm_thin_new_mapping*)* @remap_and_issue_overwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remap_and_issue_overwrite(%struct.thin_c* %0, %struct.bio* %1, i32 %2, %struct.dm_thin_new_mapping* %3) #0 {
  %5 = alloca %struct.thin_c*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_thin_new_mapping*, align 8
  %9 = alloca %struct.pool*, align 8
  %10 = alloca %struct.dm_thin_endio_hook*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dm_thin_new_mapping* %3, %struct.dm_thin_new_mapping** %8, align 8
  %11 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %12 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %11, i32 0, i32 0
  %13 = load %struct.pool*, %struct.pool** %12, align 8
  store %struct.pool* %13, %struct.pool** %9, align 8
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = call %struct.dm_thin_endio_hook* @dm_per_bio_data(%struct.bio* %14, i32 8)
  store %struct.dm_thin_endio_hook* %15, %struct.dm_thin_endio_hook** %10, align 8
  %16 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %8, align 8
  %17 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %10, align 8
  %18 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %17, i32 0, i32 0
  store %struct.dm_thin_new_mapping* %16, %struct.dm_thin_new_mapping** %18, align 8
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %8, align 8
  %21 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %20, i32 0, i32 1
  store %struct.bio* %19, %struct.bio** %21, align 8
  %22 = load %struct.bio*, %struct.bio** %6, align 8
  %23 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %8, align 8
  %24 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %23, i32 0, i32 0
  %25 = load i32, i32* @overwrite_endio, align 4
  %26 = call i32 @save_and_set_endio(%struct.bio* %22, i32* %24, i32 %25)
  %27 = load %struct.pool*, %struct.pool** %9, align 8
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = call i32 @inc_all_io_entry(%struct.pool* %27, %struct.bio* %28)
  %30 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %31 = load %struct.bio*, %struct.bio** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @remap_and_issue(%struct.thin_c* %30, %struct.bio* %31, i32 %32)
  ret void
}

declare dso_local %struct.dm_thin_endio_hook* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @save_and_set_endio(%struct.bio*, i32*, i32) #1

declare dso_local i32 @inc_all_io_entry(%struct.pool*, %struct.bio*) #1

declare dso_local i32 @remap_and_issue(%struct.thin_c*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
