; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_prepared_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_prepared_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_new_mapping = type { i32, i32, %struct.TYPE_3__*, i32, i64, %struct.bio*, %struct.thin_c* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32 }
%struct.thin_c = type { %struct.pool*, i32 }
%struct.pool = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"dm_thin_insert_block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_thin_new_mapping*)* @process_prepared_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_prepared_mapping(%struct.dm_thin_new_mapping* %0) #0 {
  %2 = alloca %struct.dm_thin_new_mapping*, align 8
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca %struct.pool*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.dm_thin_new_mapping* %0, %struct.dm_thin_new_mapping** %2, align 8
  %7 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %8 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %7, i32 0, i32 6
  %9 = load %struct.thin_c*, %struct.thin_c** %8, align 8
  store %struct.thin_c* %9, %struct.thin_c** %3, align 8
  %10 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %11 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %10, i32 0, i32 0
  %12 = load %struct.pool*, %struct.pool** %11, align 8
  store %struct.pool* %12, %struct.pool** %4, align 8
  %13 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %14 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %13, i32 0, i32 5
  %15 = load %struct.bio*, %struct.bio** %14, align 8
  store %struct.bio* %15, %struct.bio** %5, align 8
  %16 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %17 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.pool*, %struct.pool** %4, align 8
  %22 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %23 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @cell_error(%struct.pool* %21, %struct.TYPE_3__* %24)
  br label %92

26:                                               ; preds = %1
  %27 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %28 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %31 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %34 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dm_thin_insert_block(i32 %29, i32 %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %26
  %40 = load %struct.pool*, %struct.pool** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @metadata_operation_failed(%struct.pool* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.pool*, %struct.pool** %4, align 8
  %44 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %45 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = call i32 @cell_error(%struct.pool* %43, %struct.TYPE_3__* %46)
  br label %92

48:                                               ; preds = %26
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = icmp ne %struct.bio* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %53 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %54 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %57 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @inc_remap_and_issue_cell(%struct.thin_c* %52, %struct.TYPE_3__* %55, i32 %58)
  %60 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = call i32 @complete_overwrite_bio(%struct.thin_c* %60, %struct.bio* %61)
  br label %91

63:                                               ; preds = %48
  %64 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %65 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %64, i32 0, i32 0
  %66 = load %struct.pool*, %struct.pool** %65, align 8
  %67 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %68 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @inc_all_io_entry(%struct.pool* %66, i32 %71)
  %73 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %74 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %75 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %80 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @remap_and_issue(%struct.thin_c* %73, i32 %78, i32 %81)
  %83 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %84 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %85 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %88 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @inc_remap_and_issue_cell(%struct.thin_c* %83, %struct.TYPE_3__* %86, i32 %89)
  br label %91

91:                                               ; preds = %63, %51
  br label %92

92:                                               ; preds = %91, %39, %20
  %93 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %94 = getelementptr inbounds %struct.dm_thin_new_mapping, %struct.dm_thin_new_mapping* %93, i32 0, i32 0
  %95 = call i32 @list_del(i32* %94)
  %96 = load %struct.dm_thin_new_mapping*, %struct.dm_thin_new_mapping** %2, align 8
  %97 = load %struct.pool*, %struct.pool** %4, align 8
  %98 = getelementptr inbounds %struct.pool, %struct.pool* %97, i32 0, i32 0
  %99 = call i32 @mempool_free(%struct.dm_thin_new_mapping* %96, i32* %98)
  ret void
}

declare dso_local i32 @cell_error(%struct.pool*, %struct.TYPE_3__*) #1

declare dso_local i32 @dm_thin_insert_block(i32, i32, i32) #1

declare dso_local i32 @metadata_operation_failed(%struct.pool*, i8*, i32) #1

declare dso_local i32 @inc_remap_and_issue_cell(%struct.thin_c*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @complete_overwrite_bio(%struct.thin_c*, %struct.bio*) #1

declare dso_local i32 @inc_all_io_entry(%struct.pool*, i32) #1

declare dso_local i32 @remap_and_issue(%struct.thin_c*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mempool_free(%struct.dm_thin_new_mapping*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
