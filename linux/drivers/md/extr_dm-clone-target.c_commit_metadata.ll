; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_commit_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_commit_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CM_READ_ONLY = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dm_clone_metadata_commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone*)* @commit_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_metadata(%struct.clone* %0) #0 {
  %2 = alloca %struct.clone*, align 8
  %3 = alloca i32, align 4
  store %struct.clone* %0, %struct.clone** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.clone*, %struct.clone** %2, align 8
  %5 = getelementptr inbounds %struct.clone, %struct.clone* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.clone*, %struct.clone** %2, align 8
  %8 = getelementptr inbounds %struct.clone, %struct.clone* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dm_clone_changed_this_transaction(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.clone*, %struct.clone** %2, align 8
  %15 = call i64 @get_clone_mode(%struct.clone* %14)
  %16 = load i64, i64* @CM_READ_ONLY, align 8
  %17 = icmp sge i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %13
  %25 = load %struct.clone*, %struct.clone** %2, align 8
  %26 = getelementptr inbounds %struct.clone, %struct.clone* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dm_clone_metadata_commit(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.clone*, %struct.clone** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @__metadata_operation_failed(%struct.clone* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %50

36:                                               ; preds = %24
  %37 = load %struct.clone*, %struct.clone** %2, align 8
  %38 = getelementptr inbounds %struct.clone, %struct.clone* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @dm_clone_is_hydration_done(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.clone*, %struct.clone** %2, align 8
  %44 = getelementptr inbounds %struct.clone, %struct.clone* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dm_table_event(i32 %47)
  br label %49

49:                                               ; preds = %42, %36
  br label %50

50:                                               ; preds = %49, %32, %21, %12
  %51 = load %struct.clone*, %struct.clone** %2, align 8
  %52 = getelementptr inbounds %struct.clone, %struct.clone* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dm_clone_changed_this_transaction(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_clone_mode(%struct.clone*) #1

declare dso_local i32 @dm_clone_metadata_commit(i32) #1

declare dso_local i32 @__metadata_operation_failed(%struct.clone*, i8*, i32) #1

declare dso_local i64 @dm_clone_is_hydration_done(i32) #1

declare dso_local i32 @dm_table_event(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
