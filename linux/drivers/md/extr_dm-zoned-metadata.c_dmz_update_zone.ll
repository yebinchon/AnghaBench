; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_update_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_update_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_zone = type { i32, i32 }
%struct.blk_zone = type { i64, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Get zone %u report failed\00", align 1
@DMZ_OFFLINE = common dso_local global i32 0, align 4
@DMZ_READ_ONLY = common dso_local global i32 0, align 4
@BLK_ZONE_COND_OFFLINE = common dso_local global i64 0, align 8
@BLK_ZONE_COND_READONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, %struct.dm_zone*)* @dmz_update_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_update_zone(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_zone, align 8
  %9 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %5, align 8
  store i32 1, i32* %6, align 4
  %10 = call i32 (...) @memalloc_noio_save()
  store i32 %10, i32* %7, align 4
  %11 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %12 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %17 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %18 = call i32 @dmz_start_sect(%struct.dmz_metadata* %16, %struct.dm_zone* %17)
  %19 = call i32 @blkdev_report_zones(i32 %15, i32 %18, %struct.blk_zone* %8, i32* %6)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @memalloc_noio_restore(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %32 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %35 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %36 = call i32 @dmz_id(%struct.dmz_metadata* %34, %struct.dm_zone* %35)
  %37 = call i32 @dmz_dev_err(%struct.TYPE_2__* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %85

39:                                               ; preds = %27
  %40 = load i32, i32* @DMZ_OFFLINE, align 4
  %41 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %42 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %41, i32 0, i32 1
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  %44 = load i32, i32* @DMZ_READ_ONLY, align 4
  %45 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %46 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %45, i32 0, i32 1
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  %48 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %8, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BLK_ZONE_COND_OFFLINE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load i32, i32* @DMZ_OFFLINE, align 4
  %54 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %55 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %54, i32 0, i32 1
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  br label %68

57:                                               ; preds = %39
  %58 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BLK_ZONE_COND_READONLY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* @DMZ_READ_ONLY, align 4
  %64 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %65 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %64, i32 0, i32 1
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %70 = call i64 @dmz_is_seq(%struct.dm_zone* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %8, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %8, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %74, %76
  %78 = call i32 @dmz_sect2blk(i64 %77)
  %79 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %80 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %84

81:                                               ; preds = %68
  %82 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %83 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %72
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %30
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memalloc_noio_save(...) #1

declare dso_local i32 @blkdev_report_zones(i32, i32, %struct.blk_zone*, i32*) #1

declare dso_local i32 @dmz_start_sect(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @memalloc_noio_restore(i32) #1

declare dso_local i32 @dmz_dev_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @dmz_is_seq(%struct.dm_zone*) #1

declare dso_local i32 @dmz_sect2blk(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
