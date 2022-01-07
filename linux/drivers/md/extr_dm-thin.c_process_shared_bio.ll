; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_shared_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_shared_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i32, %struct.pool* }
%struct.pool = type { i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dm_thin_lookup_result = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.dm_cell_key = type { i32 }
%struct.dm_thin_endio_hook = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.bio*, i32, %struct.dm_thin_lookup_result*, %struct.dm_bio_prison_cell*)* @process_shared_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_shared_bio(%struct.thin_c* %0, %struct.bio* %1, i32 %2, %struct.dm_thin_lookup_result* %3, %struct.dm_bio_prison_cell* %4) #0 {
  %6 = alloca %struct.thin_c*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_thin_lookup_result*, align 8
  %10 = alloca %struct.dm_bio_prison_cell*, align 8
  %11 = alloca %struct.dm_bio_prison_cell*, align 8
  %12 = alloca %struct.pool*, align 8
  %13 = alloca %struct.dm_cell_key, align 4
  %14 = alloca %struct.dm_thin_endio_hook*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dm_thin_lookup_result* %3, %struct.dm_thin_lookup_result** %9, align 8
  store %struct.dm_bio_prison_cell* %4, %struct.dm_bio_prison_cell** %10, align 8
  %15 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %16 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %15, i32 0, i32 1
  %17 = load %struct.pool*, %struct.pool** %16, align 8
  store %struct.pool* %17, %struct.pool** %12, align 8
  %18 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %19 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dm_thin_lookup_result*, %struct.dm_thin_lookup_result** %9, align 8
  %22 = getelementptr inbounds %struct.dm_thin_lookup_result, %struct.dm_thin_lookup_result* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @build_data_key(i32 %20, i32 %23, %struct.dm_cell_key* %13)
  %25 = load %struct.pool*, %struct.pool** %12, align 8
  %26 = load %struct.bio*, %struct.bio** %7, align 8
  %27 = call i64 @bio_detain(%struct.pool* %25, %struct.dm_cell_key* %13, %struct.bio* %26, %struct.dm_bio_prison_cell** %11)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %31 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %32 = call i32 @cell_defer_no_holder(%struct.thin_c* %30, %struct.dm_bio_prison_cell* %31)
  br label %84

33:                                               ; preds = %5
  %34 = load %struct.bio*, %struct.bio** %7, align 8
  %35 = call i64 @bio_data_dir(%struct.bio* %34)
  %36 = load i64, i64* @WRITE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.bio*, %struct.bio** %7, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %46 = load %struct.bio*, %struct.bio** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.dm_thin_lookup_result*, %struct.dm_thin_lookup_result** %9, align 8
  %49 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %11, align 8
  %50 = call i32 @break_sharing(%struct.thin_c* %45, %struct.bio* %46, i32 %47, %struct.dm_cell_key* %13, %struct.dm_thin_lookup_result* %48, %struct.dm_bio_prison_cell* %49)
  %51 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %52 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %53 = call i32 @cell_defer_no_holder(%struct.thin_c* %51, %struct.dm_bio_prison_cell* %52)
  br label %84

54:                                               ; preds = %38, %33
  %55 = load %struct.bio*, %struct.bio** %7, align 8
  %56 = call %struct.dm_thin_endio_hook* @dm_per_bio_data(%struct.bio* %55, i32 4)
  store %struct.dm_thin_endio_hook* %56, %struct.dm_thin_endio_hook** %14, align 8
  %57 = load %struct.pool*, %struct.pool** %12, align 8
  %58 = getelementptr inbounds %struct.pool, %struct.pool* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dm_deferred_entry_inc(i32 %59)
  %61 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %14, align 8
  %62 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.pool*, %struct.pool** %12, align 8
  %64 = load %struct.bio*, %struct.bio** %7, align 8
  %65 = call i32 @inc_all_io_entry(%struct.pool* %63, %struct.bio* %64)
  %66 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %67 = load %struct.bio*, %struct.bio** %7, align 8
  %68 = load %struct.dm_thin_lookup_result*, %struct.dm_thin_lookup_result** %9, align 8
  %69 = getelementptr inbounds %struct.dm_thin_lookup_result, %struct.dm_thin_lookup_result* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @remap_and_issue(%struct.thin_c* %66, %struct.bio* %67, i32 %70)
  %72 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %73 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %11, align 8
  %74 = load %struct.dm_thin_lookup_result*, %struct.dm_thin_lookup_result** %9, align 8
  %75 = getelementptr inbounds %struct.dm_thin_lookup_result, %struct.dm_thin_lookup_result* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @remap_and_issue_shared_cell(%struct.thin_c* %72, %struct.dm_bio_prison_cell* %73, i32 %76)
  %78 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %79 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %10, align 8
  %80 = load %struct.dm_thin_lookup_result*, %struct.dm_thin_lookup_result** %9, align 8
  %81 = getelementptr inbounds %struct.dm_thin_lookup_result, %struct.dm_thin_lookup_result* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @remap_and_issue_shared_cell(%struct.thin_c* %78, %struct.dm_bio_prison_cell* %79, i32 %82)
  br label %84

84:                                               ; preds = %29, %54, %44
  ret void
}

declare dso_local i32 @build_data_key(i32, i32, %struct.dm_cell_key*) #1

declare dso_local i64 @bio_detain(%struct.pool*, %struct.dm_cell_key*, %struct.bio*, %struct.dm_bio_prison_cell**) #1

declare dso_local i32 @cell_defer_no_holder(%struct.thin_c*, %struct.dm_bio_prison_cell*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @break_sharing(%struct.thin_c*, %struct.bio*, i32, %struct.dm_cell_key*, %struct.dm_thin_lookup_result*, %struct.dm_bio_prison_cell*) #1

declare dso_local %struct.dm_thin_endio_hook* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @dm_deferred_entry_inc(i32) #1

declare dso_local i32 @inc_all_io_entry(%struct.pool*, %struct.bio*) #1

declare dso_local i32 @remap_and_issue(%struct.thin_c*, %struct.bio*, i32) #1

declare dso_local i32 @remap_and_issue_shared_cell(%struct.thin_c*, %struct.dm_bio_prison_cell*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
