; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_conditional_stop_bcache_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_conditional_stop_bcache_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bcache_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cached_dev = type { i64, i32, i32 }

@BCH_CACHED_DEV_STOP_ALWAYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"stop_when_cache_set_failed of %s is \22always\22, stop it for failed cache set %pU.\00", align 1
@.str.1 = private unnamed_addr constant [107 x i8] c"stop_when_cache_set_failed of %s is \22auto\22 and cache is dirty, stop it to avoid potential data corruption.\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"stop_when_cache_set_failed of %s is \22auto\22 and cache is clean, keep it alive.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_set*, %struct.bcache_device*, %struct.cached_dev*)* @conditional_stop_bcache_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conditional_stop_bcache_device(%struct.cache_set* %0, %struct.bcache_device* %1, %struct.cached_dev* %2) #0 {
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.bcache_device*, align 8
  %6 = alloca %struct.cached_dev*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.bcache_device* %1, %struct.bcache_device** %5, align 8
  store %struct.cached_dev* %2, %struct.cached_dev** %6, align 8
  %7 = load %struct.cached_dev*, %struct.cached_dev** %6, align 8
  %8 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BCH_CACHED_DEV_STOP_ALWAYS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.bcache_device*, %struct.bcache_device** %5, align 8
  %14 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %19 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21)
  %23 = load %struct.bcache_device*, %struct.bcache_device** %5, align 8
  %24 = call i32 @bcache_device_stop(%struct.bcache_device* %23)
  br label %50

25:                                               ; preds = %3
  %26 = load %struct.cached_dev*, %struct.cached_dev** %6, align 8
  %27 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %26, i32 0, i32 2
  %28 = call i64 @atomic_read(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.bcache_device*, %struct.bcache_device** %5, align 8
  %32 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.cached_dev*, %struct.cached_dev** %6, align 8
  %38 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = call i32 (...) @smp_mb()
  %40 = load %struct.bcache_device*, %struct.bcache_device** %5, align 8
  %41 = call i32 @bcache_device_stop(%struct.bcache_device* %40)
  br label %49

42:                                               ; preds = %25
  %43 = load %struct.bcache_device*, %struct.bcache_device** %5, align 8
  %44 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %42, %30
  br label %50

50:                                               ; preds = %49, %12
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @bcache_device_stop(%struct.bcache_device*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
