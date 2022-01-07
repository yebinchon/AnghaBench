; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_register_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_register_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_sb = type { i32 }
%struct.page = type { i32 }
%struct.block_device = type { i32, %struct.cache* }
%struct.cache = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.block_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.page* }
%struct.TYPE_5__ = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cache_alloc(): -ENOMEM\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cache_alloc(): cache device is too small\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cache_alloc(): unknown error\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bcache\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"error calling kobject_add\00", align 1
@bch_register_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"registered cache device %s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"error %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_sb*, %struct.page*, %struct.block_device*, %struct.cache*)* @register_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_cache(%struct.cache_sb* %0, %struct.page* %1, %struct.block_device* %2, %struct.cache* %3) #0 {
  %5 = alloca %struct.cache_sb*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca %struct.cache*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.cache_sb* %0, %struct.cache_sb** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.block_device* %2, %struct.block_device** %7, align 8
  store %struct.cache* %3, %struct.cache** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.block_device*, %struct.block_device** %7, align 8
  %12 = load %struct.cache*, %struct.cache** %8, align 8
  %13 = getelementptr inbounds %struct.cache, %struct.cache* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @bdevname(%struct.block_device* %11, i32 %14)
  %16 = load %struct.cache*, %struct.cache** %8, align 8
  %17 = getelementptr inbounds %struct.cache, %struct.cache* %16, i32 0, i32 2
  %18 = load %struct.cache_sb*, %struct.cache_sb** %5, align 8
  %19 = call i32 @memcpy(i32* %17, %struct.cache_sb* %18, i32 4)
  %20 = load %struct.block_device*, %struct.block_device** %7, align 8
  %21 = load %struct.cache*, %struct.cache** %8, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 5
  store %struct.block_device* %20, %struct.block_device** %22, align 8
  %23 = load %struct.cache*, %struct.cache** %8, align 8
  %24 = load %struct.cache*, %struct.cache** %8, align 8
  %25 = getelementptr inbounds %struct.cache, %struct.cache* %24, i32 0, i32 5
  %26 = load %struct.block_device*, %struct.block_device** %25, align 8
  %27 = getelementptr inbounds %struct.block_device, %struct.block_device* %26, i32 0, i32 1
  store %struct.cache* %23, %struct.cache** %27, align 8
  %28 = load %struct.cache*, %struct.cache** %8, align 8
  %29 = getelementptr inbounds %struct.cache, %struct.cache* %28, i32 0, i32 4
  %30 = load %struct.cache*, %struct.cache** %8, align 8
  %31 = getelementptr inbounds %struct.cache, %struct.cache* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bio_init(%struct.TYPE_6__* %29, i32 %33, i32 1)
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = load %struct.cache*, %struct.cache** %8, align 8
  %37 = getelementptr inbounds %struct.cache, %struct.cache* %36, i32 0, i32 4
  %38 = call %struct.TYPE_7__* @bio_first_bvec_all(%struct.TYPE_6__* %37)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store %struct.page* %35, %struct.page** %39, align 8
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = call i32 @get_page(%struct.page* %40)
  %42 = load %struct.block_device*, %struct.block_device** %7, align 8
  %43 = call i32 @bdev_get_queue(%struct.block_device* %42)
  %44 = call i64 @blk_queue_discard(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %4
  %47 = load %struct.cache*, %struct.cache** %8, align 8
  %48 = getelementptr inbounds %struct.cache, %struct.cache* %47, i32 0, i32 2
  %49 = call i32 @CACHE_DISCARD(i32* %48)
  %50 = load %struct.cache*, %struct.cache** %8, align 8
  %51 = getelementptr inbounds %struct.cache, %struct.cache* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %4
  %53 = load %struct.cache*, %struct.cache** %8, align 8
  %54 = call i32 @cache_alloc(%struct.cache* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load %struct.block_device*, %struct.block_device** %7, align 8
  %59 = load i32, i32* @FMODE_READ, align 4
  %60 = load i32, i32* @FMODE_WRITE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FMODE_EXCL, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @blkdev_put(%struct.block_device* %58, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %78

70:                                               ; preds = %57
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %77

76:                                               ; preds = %70
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %77

77:                                               ; preds = %76, %75
  br label %78

78:                                               ; preds = %77, %69
  br label %111

79:                                               ; preds = %52
  %80 = load %struct.cache*, %struct.cache** %8, align 8
  %81 = getelementptr inbounds %struct.cache, %struct.cache* %80, i32 0, i32 1
  %82 = load %struct.block_device*, %struct.block_device** %7, align 8
  %83 = getelementptr inbounds %struct.block_device, %struct.block_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.TYPE_5__* @part_to_dev(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = call i64 @kobject_add(i32* %81, i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %107

92:                                               ; preds = %79
  %93 = call i32 @mutex_lock(i32* @bch_register_lock)
  %94 = load %struct.cache*, %struct.cache** %8, align 8
  %95 = call i8* @register_cache_set(%struct.cache* %94)
  store i8* %95, i8** %9, align 8
  %96 = call i32 @mutex_unlock(i32* @bch_register_lock)
  %97 = load i8*, i8** %9, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  br label %107

102:                                              ; preds = %92
  %103 = load %struct.cache*, %struct.cache** %8, align 8
  %104 = getelementptr inbounds %struct.cache, %struct.cache* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %99, %89
  %108 = load %struct.cache*, %struct.cache** %8, align 8
  %109 = getelementptr inbounds %struct.cache, %struct.cache* %108, i32 0, i32 1
  %110 = call i32 @kobject_put(i32* %109)
  br label %111

111:                                              ; preds = %107, %78
  %112 = load i8*, i8** %9, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.cache*, %struct.cache** %8, align 8
  %116 = getelementptr inbounds %struct.cache, %struct.cache* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @pr_notice(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %117, i8* %118)
  br label %120

120:                                              ; preds = %114, %111
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

declare dso_local i32 @bdevname(%struct.block_device*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.cache_sb*, i32) #1

declare dso_local i32 @bio_init(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @bio_first_bvec_all(%struct.TYPE_6__*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i64 @blk_queue_discard(i32) #1

declare dso_local i32 @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @CACHE_DISCARD(i32*) #1

declare dso_local i32 @cache_alloc(%struct.cache*) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

declare dso_local i64 @kobject_add(i32*, i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @part_to_dev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @register_cache_set(%struct.cache*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @pr_notice(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
