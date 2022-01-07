; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c___remap_and_issue_shared_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c___remap_and_issue_shared_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison_cell = type { i32 }
%struct.remap_info = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { i32 }
%struct.dm_thin_endio_hook = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dm_bio_prison_cell*)* @__remap_and_issue_shared_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remap_and_issue_shared_cell(i8* %0, %struct.dm_bio_prison_cell* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dm_bio_prison_cell*, align 8
  %5 = alloca %struct.remap_info*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.dm_thin_endio_hook*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.remap_info*
  store %struct.remap_info* %9, %struct.remap_info** %5, align 8
  br label %10

10:                                               ; preds = %60, %2
  %11 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %12 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %11, i32 0, i32 0
  %13 = call %struct.bio* @bio_list_pop(i32* %12)
  store %struct.bio* %13, %struct.bio** %6, align 8
  %14 = icmp ne %struct.bio* %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %10
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = call i64 @bio_data_dir(%struct.bio* %16)
  %18 = load i64, i64* @WRITE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = load %struct.bio*, %struct.bio** %6, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @op_is_flush(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = call i64 @bio_op(%struct.bio* %27)
  %29 = load i64, i64* @REQ_OP_DISCARD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26, %20, %15
  %32 = load %struct.remap_info*, %struct.remap_info** %5, align 8
  %33 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %32, i32 0, i32 2
  %34 = load %struct.bio*, %struct.bio** %6, align 8
  %35 = call i32 @bio_list_add(i32* %33, %struct.bio* %34)
  br label %60

36:                                               ; preds = %26
  %37 = load %struct.bio*, %struct.bio** %6, align 8
  %38 = call %struct.dm_thin_endio_hook* @dm_per_bio_data(%struct.bio* %37, i32 4)
  store %struct.dm_thin_endio_hook* %38, %struct.dm_thin_endio_hook** %7, align 8
  %39 = load %struct.remap_info*, %struct.remap_info** %5, align 8
  %40 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dm_deferred_entry_inc(i32 %45)
  %47 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %7, align 8
  %48 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.remap_info*, %struct.remap_info** %5, align 8
  %50 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.bio*, %struct.bio** %6, align 8
  %55 = call i32 @inc_all_io_entry(%struct.TYPE_4__* %53, %struct.bio* %54)
  %56 = load %struct.remap_info*, %struct.remap_info** %5, align 8
  %57 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %56, i32 0, i32 0
  %58 = load %struct.bio*, %struct.bio** %6, align 8
  %59 = call i32 @bio_list_add(i32* %57, %struct.bio* %58)
  br label %60

60:                                               ; preds = %36, %31
  br label %10

61:                                               ; preds = %10
  ret void
}

declare dso_local %struct.bio* @bio_list_pop(i32*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @op_is_flush(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local %struct.dm_thin_endio_hook* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @dm_deferred_entry_inc(i32) #1

declare dso_local i32 @inc_all_io_entry(%struct.TYPE_4__*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
