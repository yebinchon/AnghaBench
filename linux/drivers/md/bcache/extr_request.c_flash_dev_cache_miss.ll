; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_flash_dev_cache_miss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_flash_dev_cache_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i32 }
%struct.search = type { i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAP_DONE = common dso_local global i32 0, align 4
@MAP_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, %struct.search*, %struct.bio*, i32)* @flash_dev_cache_miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_dev_cache_miss(%struct.btree* %0, %struct.search* %1, %struct.bio* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btree*, align 8
  %7 = alloca %struct.search*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btree* %0, %struct.btree** %6, align 8
  store %struct.search* %1, %struct.search** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.bio*, %struct.bio** %8, align 8
  %13 = call i32 @bio_sectors(%struct.bio* %12)
  %14 = call i32 @min(i32 %11, i32 %13)
  %15 = shl i32 %14, 9
  store i32 %15, i32* %10, align 4
  %16 = load %struct.bio*, %struct.bio** %8, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @swap(i32 %19, i32 %20)
  %22 = load %struct.bio*, %struct.bio** %8, align 8
  %23 = call i32 @zero_fill_bio(%struct.bio* %22)
  %24 = load %struct.bio*, %struct.bio** %8, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @swap(i32 %27, i32 %28)
  %30 = load %struct.bio*, %struct.bio** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @bio_advance(%struct.bio* %30, i32 %31)
  %33 = load %struct.bio*, %struct.bio** %8, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* @MAP_DONE, align 4
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %4
  %41 = load i32, i32* @MAP_CONTINUE, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @zero_fill_bio(%struct.bio*) #1

declare dso_local i32 @bio_advance(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
