; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c___inc_remap_and_issue_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c___inc_remap_and_issue_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison_cell = type { i32 }
%struct.remap_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32 }

@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dm_bio_prison_cell*)* @__inc_remap_and_issue_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__inc_remap_and_issue_cell(i8* %0, %struct.dm_bio_prison_cell* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dm_bio_prison_cell*, align 8
  %5 = alloca %struct.remap_info*, align 8
  %6 = alloca %struct.bio*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.remap_info*
  store %struct.remap_info* %8, %struct.remap_info** %5, align 8
  br label %9

9:                                                ; preds = %42, %2
  %10 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %4, align 8
  %11 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %10, i32 0, i32 0
  %12 = call %struct.bio* @bio_list_pop(i32* %11)
  store %struct.bio* %12, %struct.bio** %6, align 8
  %13 = icmp ne %struct.bio* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %9
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @op_is_flush(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.bio*, %struct.bio** %6, align 8
  %22 = call i64 @bio_op(%struct.bio* %21)
  %23 = load i64, i64* @REQ_OP_DISCARD, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20, %14
  %26 = load %struct.remap_info*, %struct.remap_info** %5, align 8
  %27 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %26, i32 0, i32 2
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = call i32 @bio_list_add(i32* %27, %struct.bio* %28)
  br label %42

30:                                               ; preds = %20
  %31 = load %struct.remap_info*, %struct.remap_info** %5, align 8
  %32 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  %37 = call i32 @inc_all_io_entry(i32 %35, %struct.bio* %36)
  %38 = load %struct.remap_info*, %struct.remap_info** %5, align 8
  %39 = getelementptr inbounds %struct.remap_info, %struct.remap_info* %38, i32 0, i32 0
  %40 = load %struct.bio*, %struct.bio** %6, align 8
  %41 = call i32 @bio_list_add(i32* %39, %struct.bio* %40)
  br label %42

42:                                               ; preds = %30, %25
  br label %9

43:                                               ; preds = %9
  ret void
}

declare dso_local %struct.bio* @bio_list_pop(i32*) #1

declare dso_local i64 @op_is_flush(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @inc_all_io_entry(i32, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
