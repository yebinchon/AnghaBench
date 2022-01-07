; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_cached_dev_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_cached_dev_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@BCACHE_DEV_CLOSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"stop %s: too many IO errors on backing device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_cached_dev_error(%struct.cached_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cached_dev*, align 8
  store %struct.cached_dev* %0, %struct.cached_dev** %3, align 8
  %4 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %5 = icmp ne %struct.cached_dev* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* @BCACHE_DEV_CLOSING, align 4
  %8 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %7, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %6
  %15 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %16 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = call i32 (...) @smp_mb()
  %18 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %25 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %29 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %28, i32 0, i32 1
  %30 = call i32 @bcache_device_stop(%struct.TYPE_4__* %29)
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %14, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @bcache_device_stop(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
