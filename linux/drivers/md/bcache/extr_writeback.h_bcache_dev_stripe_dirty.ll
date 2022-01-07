; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.h_bcache_dev_stripe_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.h_bcache_dev_stripe_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cached_dev*, i32, i32)* @bcache_dev_stripe_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcache_dev_stripe_dirty(%struct.cached_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cached_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cached_dev* %0, %struct.cached_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cached_dev*, %struct.cached_dev** %5, align 8
  %10 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @offset_to_stripe(%struct.TYPE_2__* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %3, %32
  %14 = load %struct.cached_dev*, %struct.cached_dev** %5, align 8
  %15 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i64 @atomic_read(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %41

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.cached_dev*, %struct.cached_dev** %5, align 8
  %27 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ule i32 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.cached_dev*, %struct.cached_dev** %5, align 8
  %34 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %13

41:                                               ; preds = %31, %23
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @offset_to_stripe(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @atomic_read(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
