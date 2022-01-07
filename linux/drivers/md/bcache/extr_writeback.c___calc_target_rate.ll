; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c___calc_target_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c___calc_target_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cache_set* }
%struct.cache_set = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@WRITEBACK_SHARE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cached_dev*)* @__calc_target_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__calc_target_rate(%struct.cached_dev* %0) #0 {
  %2 = alloca %struct.cached_dev*, align 8
  %3 = alloca %struct.cache_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cached_dev* %0, %struct.cached_dev** %2, align 8
  %7 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.cache_set*, %struct.cache_set** %9, align 8
  store %struct.cache_set* %10, %struct.cache_set** %3, align 8
  %11 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %12 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %15 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %13, %17
  %19 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %20 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %19, i32 0, i32 2
  %21 = call i32 @atomic_long_read(i32* %20)
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %24 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bdev_sectors(i32 %25)
  %27 = load i32, i32* @WRITEBACK_SHARE_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %30 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @div64_u64(i32 %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.cached_dev*, %struct.cached_dev** %2, align 8
  %35 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = call i32 @div_u64(i32 %37, i32 100)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* @WRITEBACK_SHARE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  ret i32 %47
}

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @div64_u64(i32, i32) #1

declare dso_local i32 @bdev_sectors(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
