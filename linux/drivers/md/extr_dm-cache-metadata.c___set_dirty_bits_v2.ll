; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___set_dirty_bits_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___set_dirty_bits_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"dirty bitset is wrong size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@is_dirty_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, i32, i64*)* @__set_dirty_bits_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_dirty_bits_v2(%struct.dm_cache_metadata* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_cache_metadata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %11 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @from_cblock(i32 %12)
  %14 = icmp ne i32 %9, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = call i32 @DMERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %21 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %20, i32 0, i32 2
  %22 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %23 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dm_bitset_del(i32* %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %19
  %31 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %32 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %34 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %33, i32 0, i32 2
  %35 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %5, align 8
  %36 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %35, i32 0, i32 1
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @is_dirty_callback, align 4
  %39 = load i64*, i64** %7, align 8
  %40 = call i32 @dm_bitset_new(i32* %34, i32* %36, i32 %37, i32 %38, i64* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %30, %28, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_bitset_del(i32*, i32) #1

declare dso_local i32 @dm_bitset_new(i32*, i32*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
