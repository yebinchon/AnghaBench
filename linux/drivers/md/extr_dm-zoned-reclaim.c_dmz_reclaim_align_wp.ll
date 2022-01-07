; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_align_wp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_align_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_reclaim = type { %struct.TYPE_2__*, %struct.dmz_metadata* }
%struct.TYPE_2__ = type { i32 }
%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Align zone %u wp %llu to %llu (wp+%u) blocks failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_reclaim*, %struct.dm_zone*, i32)* @dmz_reclaim_align_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_reclaim_align_wp(%struct.dmz_reclaim* %0, %struct.dm_zone* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmz_reclaim*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmz_metadata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dmz_reclaim* %0, %struct.dmz_reclaim** %5, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %13 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %12, i32 0, i32 1
  %14 = load %struct.dmz_metadata*, %struct.dmz_metadata** %13, align 8
  store %struct.dmz_metadata* %14, %struct.dmz_metadata** %8, align 8
  %15 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %16 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %69

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %34 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %39 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %40 = call i64 @dmz_start_sect(%struct.dmz_metadata* %38, %struct.dm_zone* %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @dmz_blk2sect(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @dmz_blk2sect(i32 %44)
  %46 = load i32, i32* @GFP_NOIO, align 4
  %47 = call i32 @blkdev_issue_zeroout(i32 %37, i64 %43, i64 %45, i32 %46, i32 0)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %29
  %51 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %5, align 8
  %52 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %55 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %56 = call i32 @dmz_id(%struct.dmz_metadata* %54, %struct.dm_zone* %55)
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @dmz_dev_err(%struct.TYPE_2__* %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %56, i64 %58, i64 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %69

65:                                               ; preds = %29
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %68 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %50, %26, %21
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @blkdev_issue_zeroout(i32, i64, i64, i32, i32) #1

declare dso_local i64 @dmz_start_sect(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i64 @dmz_blk2sect(i32) #1

declare dso_local i32 @dmz_dev_err(%struct.TYPE_2__*, i8*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
