; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_cached_dev_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_cached_dev_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, %struct.bcache_device, i32, %struct.TYPE_5__, i32, i32, i64 }
%struct.bcache_device = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.closure = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SB_LABEL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"DRIVER=bcache\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"CACHED_UUID=%pU\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"CACHED_LABEL=%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"I/O disabled on cached dev %s\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"cached dev %s is running already\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BDEV_STATE_NONE = common dso_local global i64 0, align 8
@BDEV_STATE_STALE = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"bcache\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Couldn't create bcache dev <-> disk sysfs symlinks\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cached_dev_status_update = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"bcache_status_update\00", align 1
@.str.10 = private unnamed_addr constant [104 x i8] c"failed to create bcache_status_update kthread, continue to run without monitoring backing device status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_cached_dev_run(%struct.cached_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cached_dev*, align 8
  %4 = alloca %struct.bcache_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8*], align 16
  %7 = alloca %struct.closure, align 4
  store %struct.cached_dev* %0, %struct.cached_dev** %3, align 8
  %8 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %8, i32 0, i32 1
  store %struct.bcache_device* %9, %struct.bcache_device** %4, align 8
  %10 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SB_LABEL_SIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmemdup_nul(i32 %13, i32 %14, i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %21 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @kasprintf(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i8* %24, i8** %18, align 8
  %25 = getelementptr inbounds i8*, i8** %18, i64 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i8* [ %27, %29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %30 ]
  %33 = call i8* @kasprintf(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  store i8* %33, i8** %25, align 8
  %34 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* null, i8** %34, align 8
  %35 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %36 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %41 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 2
  %48 = load i8*, i8** %47, align 16
  %49 = call i32 @kfree(i8* %48)
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @kfree(i8* %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %160

54:                                               ; preds = %31
  %55 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %56 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %55, i32 0, i32 5
  %57 = call i64 @atomic_xchg(i32* %56, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 2
  %64 = load i8*, i8** %63, align 16
  %65 = call i32 @kfree(i8* %64)
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %69 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %160

74:                                               ; preds = %54
  %75 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %76 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %74
  %80 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %81 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %80, i32 0, i32 3
  %82 = call i64 @BDEV_STATE(%struct.TYPE_5__* %81)
  %83 = load i64, i64* @BDEV_STATE_NONE, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = call i32 @closure_init_stack(%struct.closure* %7)
  %87 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %88 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %87, i32 0, i32 3
  %89 = load i32, i32* @BDEV_STATE_STALE, align 4
  %90 = call i32 @SET_BDEV_STATE(%struct.TYPE_5__* %88, i32 %89)
  %91 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %92 = call i32 @bch_write_bdev_super(%struct.cached_dev* %91, %struct.closure* %7)
  %93 = call i32 @closure_sync(%struct.closure* %7)
  br label %94

94:                                               ; preds = %85, %79, %74
  %95 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %96 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @add_disk(i32 %97)
  %99 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %100 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %103 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @bd_link_disk_holder(i32 %101, i32 %105)
  %107 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %108 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.TYPE_4__* @disk_to_dev(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* @KOBJ_CHANGE, align 4
  %113 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %114 = call i32 @kobject_uevent_env(i32* %111, i32 %112, i8** %113)
  %115 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @kfree(i8* %116)
  %118 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 2
  %119 = load i8*, i8** %118, align 16
  %120 = call i32 @kfree(i8* %119)
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @kfree(i8* %121)
  %123 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %124 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %123, i32 0, i32 0
  %125 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %126 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.TYPE_4__* @disk_to_dev(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = call i64 @sysfs_create_link(i32* %124, i32* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %94
  %133 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %134 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call %struct.TYPE_4__* @disk_to_dev(i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %139 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %138, i32 0, i32 0
  %140 = call i64 @sysfs_create_link(i32* %137, i32* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %132, %94
  %143 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %160

146:                                              ; preds = %132
  %147 = load i32, i32* @cached_dev_status_update, align 4
  %148 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %149 = call i32 @kthread_run(i32 %147, %struct.cached_dev* %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %150 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %151 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %153 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @IS_ERR(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %146
  %158 = call i32 @pr_warn(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.10, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %146
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %142, %59, %39
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i8* @kmemdup_nul(i32, i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @BDEV_STATE(%struct.TYPE_5__*) #1

declare dso_local i32 @closure_init_stack(%struct.closure*) #1

declare dso_local i32 @SET_BDEV_STATE(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bch_write_bdev_super(%struct.cached_dev*, %struct.closure*) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

declare dso_local i32 @add_disk(i32) #1

declare dso_local i32 @bd_link_disk_holder(i32, i32) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

declare dso_local %struct.TYPE_4__* @disk_to_dev(i32) #1

declare dso_local i64 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @kthread_run(i32, %struct.cached_dev*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
