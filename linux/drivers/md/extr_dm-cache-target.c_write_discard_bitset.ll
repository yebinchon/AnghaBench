; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_write_discard_bitset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_write_discard_bitset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32, i32 }

@CM_READ_ONLY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: could not resize on-disk discard bitset\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"dm_cache_discard_bitset_resize\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"dm_cache_set_discard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*)* @write_discard_bitset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_discard_bitset(%struct.cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %3, align 8
  %6 = load %struct.cache*, %struct.cache** %3, align 8
  %7 = call i64 @get_cache_mode(%struct.cache* %6)
  %8 = load i64, i64* @CM_READ_ONLY, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.cache*, %struct.cache** %3, align 8
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cache*, %struct.cache** %3, align 8
  %18 = getelementptr inbounds %struct.cache, %struct.cache* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cache*, %struct.cache** %3, align 8
  %21 = getelementptr inbounds %struct.cache, %struct.cache* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dm_cache_discard_bitset_resize(i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load %struct.cache*, %struct.cache** %3, align 8
  %28 = call i32 @cache_device_name(%struct.cache* %27)
  %29 = call i32 @DMERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.cache*, %struct.cache** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @metadata_operation_failed(%struct.cache* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %65

34:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %61, %34
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.cache*, %struct.cache** %3, align 8
  %38 = getelementptr inbounds %struct.cache, %struct.cache* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @from_dblock(i32 %39)
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %35
  %43 = load %struct.cache*, %struct.cache** %3, align 8
  %44 = getelementptr inbounds %struct.cache, %struct.cache* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @to_dblock(i32 %46)
  %48 = load %struct.cache*, %struct.cache** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @to_dblock(i32 %49)
  %51 = call i32 @is_discarded(%struct.cache* %48, i32 %50)
  %52 = call i32 @dm_cache_set_discard(i32 %45, i32 %47, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.cache*, %struct.cache** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @metadata_operation_failed(%struct.cache* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %35

64:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %55, %26, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @get_cache_mode(%struct.cache*) #1

declare dso_local i32 @dm_cache_discard_bitset_resize(i32, i32, i32) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @metadata_operation_failed(%struct.cache*, i8*, i32) #1

declare dso_local i32 @from_dblock(i32) #1

declare dso_local i32 @dm_cache_set_discard(i32, i32, i32) #1

declare dso_local i32 @to_dblock(i32) #1

declare dso_local i32 @is_discarded(%struct.cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
