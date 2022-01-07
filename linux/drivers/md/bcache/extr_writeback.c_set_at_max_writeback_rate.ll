; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_set_at_max_writeback_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_set_at_max_writeback_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32, i32, i32, i32 }
%struct.cached_dev = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_set*, %struct.cached_dev*)* @set_at_max_writeback_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_at_max_writeback_rate(%struct.cache_set* %0, %struct.cached_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.cached_dev*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.cached_dev* %1, %struct.cached_dev** %5, align 8
  %6 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %7 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

11:                                               ; preds = %2
  %12 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %13 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %12, i32 0, i32 2
  %14 = call i32 @atomic_inc_return(i32* %13)
  %15 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %16 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %15, i32 0, i32 1
  %17 = call i32 @atomic_read(i32* %16)
  %18 = mul nsw i32 %17, 6
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %57

21:                                               ; preds = %11
  %22 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %23 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %22, i32 0, i32 0
  %24 = call i32 @atomic_read(i32* %23)
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %28 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %27, i32 0, i32 0
  %29 = call i32 @atomic_set(i32* %28, i32 1)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.cached_dev*, %struct.cached_dev** %5, align 8
  %32 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* @INT_MAX, align 4
  %35 = call i32 @atomic_long_set(i32* %33, i32 %34)
  %36 = load %struct.cached_dev*, %struct.cached_dev** %5, align 8
  %37 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.cached_dev*, %struct.cached_dev** %5, align 8
  %39 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.cached_dev*, %struct.cached_dev** %5, align 8
  %41 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %43 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %42, i32 0, i32 2
  %44 = call i32 @atomic_read(i32* %43)
  %45 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %46 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %45, i32 0, i32 1
  %47 = call i32 @atomic_read(i32* %46)
  %48 = mul nsw i32 %47, 6
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %30
  %51 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %52 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %51, i32 0, i32 0
  %53 = call i32 @atomic_read(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %30
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %20, %10
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
