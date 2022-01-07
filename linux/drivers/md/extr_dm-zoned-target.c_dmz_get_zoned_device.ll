; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_get_zoned_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_get_zoned_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i64, i32, %struct.dmz_target* }
%struct.dmz_target = type { %struct.TYPE_7__*, %struct.dmz_dev* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.dmz_dev = type { i32, %struct.TYPE_8__*, i32, i64, i8*, i64, i8*, i32 }
%struct.request_queue = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Get target device failed\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLK_ZONED_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Not a zoned block device\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Partial mapping not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i8*)* @dmz_get_zoned_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_get_zoned_device(%struct.dm_target* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dmz_target*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.dmz_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 4
  %13 = load %struct.dmz_target*, %struct.dmz_target** %12, align 8
  store %struct.dmz_target* %13, %struct.dmz_target** %6, align 8
  %14 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %17 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dm_table_get_mode(i32 %18)
  %20 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %21 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %20, i32 0, i32 0
  %22 = call i32 @dm_get_device(%struct.dm_target* %14, i8* %15, i32 %19, %struct.TYPE_7__** %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %27 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %29 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %28, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %29, align 8
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %153

31:                                               ; preds = %2
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.dmz_dev* @kzalloc(i32 64, i32 %32)
  store %struct.dmz_dev* %33, %struct.dmz_dev** %8, align 8
  %34 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %35 = icmp ne %struct.dmz_dev* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %144

39:                                               ; preds = %31
  %40 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %41 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %46 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %45, i32 0, i32 1
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %46, align 8
  %47 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %48 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %51 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bdevname(%struct.TYPE_8__* %49, i32 %52)
  %54 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %55 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = call i64 @bdev_zoned_model(%struct.TYPE_8__* %56)
  %58 = load i64, i64* @BLK_ZONED_NONE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %39
  %61 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %62 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %62, align 8
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %144

65:                                               ; preds = %39
  %66 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %67 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call %struct.request_queue* @bdev_get_queue(%struct.TYPE_8__* %68)
  store %struct.request_queue* %69, %struct.request_queue** %7, align 8
  %70 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %71 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @i_size_read(i32 %74)
  %76 = load i32, i32* @SECTOR_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %79 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %81 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %84 = call i64 @blk_queue_zone_sectors(%struct.request_queue* %83)
  %85 = trunc i64 %84 to i32
  %86 = sub nsw i32 %85, 1
  %87 = xor i32 %86, -1
  %88 = and i32 %82, %87
  store i32 %88, i32* %9, align 4
  %89 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %90 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %65
  %94 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %95 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %98 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %93
  %102 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %103 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101, %65
  %108 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %109 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %108, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %109, align 8
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %144

112:                                              ; preds = %101, %93
  %113 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %114 = call i64 @blk_queue_zone_sectors(%struct.request_queue* %113)
  %115 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %116 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %115, i32 0, i32 5
  store i64 %114, i64* %116, align 8
  %117 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %118 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @ilog2(i64 %119)
  %121 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %122 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %124 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @dmz_sect2blk(i64 %125)
  %127 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %128 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %130 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @ilog2(i64 %131)
  %133 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %134 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  %135 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %136 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = call i32 @blkdev_nr_zones(%struct.TYPE_8__* %137)
  %139 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %140 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %142 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %143 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %142, i32 0, i32 1
  store %struct.dmz_dev* %141, %struct.dmz_dev** %143, align 8
  store i32 0, i32* %3, align 4
  br label %153

144:                                              ; preds = %107, %60, %36
  %145 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %146 = load %struct.dmz_target*, %struct.dmz_target** %6, align 8
  %147 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %146, i32 0, i32 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = call i32 @dm_put_device(%struct.dm_target* %145, %struct.TYPE_7__* %148)
  %150 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %151 = call i32 @kfree(%struct.dmz_dev* %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %144, %112, %25
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local %struct.dmz_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @bdevname(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @bdev_zoned_model(%struct.TYPE_8__*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.TYPE_8__*) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i64 @blk_queue_zone_sectors(%struct.request_queue*) #1

declare dso_local i8* @ilog2(i64) #1

declare dso_local i64 @dmz_sect2blk(i64) #1

declare dso_local i32 @blkdev_nr_zones(%struct.TYPE_8__*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.dmz_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
