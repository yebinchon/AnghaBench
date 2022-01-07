; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_preresume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_preresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.cache* }
%struct.cache = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.discard_load_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@load_mapping = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: could not load cache mappings\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"dm_cache_load_mappings\00", align 1
@load_discard = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: could not load origin discards\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"dm_cache_load_discards\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*)* @cache_preresume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_preresume(%struct.dm_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.discard_load_info, align 4
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 0
  %10 = load %struct.cache*, %struct.cache** %9, align 8
  store %struct.cache* %10, %struct.cache** %5, align 8
  %11 = load %struct.cache*, %struct.cache** %5, align 8
  %12 = call i64 @get_cache_dev_size(%struct.cache* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.cache*, %struct.cache** %5, align 8
  %14 = getelementptr inbounds %struct.cache, %struct.cache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.cache*, %struct.cache** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @resize_cache_dev(%struct.cache* %18, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %117

25:                                               ; preds = %17
  %26 = load %struct.cache*, %struct.cache** %5, align 8
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %52

28:                                               ; preds = %1
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.cache*, %struct.cache** %5, align 8
  %31 = getelementptr inbounds %struct.cache, %struct.cache* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.cache*, %struct.cache** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @can_resize(%struct.cache* %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %117

42:                                               ; preds = %34
  %43 = load %struct.cache*, %struct.cache** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @resize_cache_dev(%struct.cache* %43, i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %117

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %28
  br label %52

52:                                               ; preds = %51, %25
  %53 = load %struct.cache*, %struct.cache** %5, align 8
  %54 = getelementptr inbounds %struct.cache, %struct.cache* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %52
  %58 = load %struct.cache*, %struct.cache** %5, align 8
  %59 = getelementptr inbounds %struct.cache, %struct.cache* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cache*, %struct.cache** %5, align 8
  %62 = getelementptr inbounds %struct.cache, %struct.cache* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @load_mapping, align 4
  %65 = load %struct.cache*, %struct.cache** %5, align 8
  %66 = call i32 @dm_cache_load_mappings(i32 %60, i32 %63, i32 %64, %struct.cache* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %57
  %70 = load %struct.cache*, %struct.cache** %5, align 8
  %71 = call i32 @cache_device_name(%struct.cache* %70)
  %72 = call i32 @DMERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.cache*, %struct.cache** %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @metadata_operation_failed(%struct.cache* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %117

77:                                               ; preds = %57
  %78 = load %struct.cache*, %struct.cache** %5, align 8
  %79 = getelementptr inbounds %struct.cache, %struct.cache* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %52
  %81 = load %struct.cache*, %struct.cache** %5, align 8
  %82 = getelementptr inbounds %struct.cache, %struct.cache* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %115, label %85

85:                                               ; preds = %80
  %86 = load %struct.cache*, %struct.cache** %5, align 8
  %87 = getelementptr inbounds %struct.cache, %struct.cache* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.cache*, %struct.cache** %5, align 8
  %90 = getelementptr inbounds %struct.cache, %struct.cache* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @from_dblock(i32 %91)
  %93 = call i32 @clear_bitset(i32 %88, i32 %92)
  %94 = load %struct.cache*, %struct.cache** %5, align 8
  %95 = call i32 @discard_load_info_init(%struct.cache* %94, %struct.discard_load_info* %7)
  %96 = load %struct.cache*, %struct.cache** %5, align 8
  %97 = getelementptr inbounds %struct.cache, %struct.cache* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @load_discard, align 4
  %100 = call i32 @dm_cache_load_discards(i32 %98, i32 %99, %struct.discard_load_info* %7)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %85
  %104 = load %struct.cache*, %struct.cache** %5, align 8
  %105 = call i32 @cache_device_name(%struct.cache* %104)
  %106 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.cache*, %struct.cache** %5, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @metadata_operation_failed(%struct.cache* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %117

111:                                              ; preds = %85
  %112 = call i32 @set_discard_range(%struct.discard_load_info* %7)
  %113 = load %struct.cache*, %struct.cache** %5, align 8
  %114 = getelementptr inbounds %struct.cache, %struct.cache* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %80
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %103, %69, %48, %39, %23
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @get_cache_dev_size(%struct.cache*) #1

declare dso_local i32 @resize_cache_dev(%struct.cache*, i64) #1

declare dso_local i32 @can_resize(%struct.cache*, i64) #1

declare dso_local i32 @dm_cache_load_mappings(i32, i32, i32, %struct.cache*) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @metadata_operation_failed(%struct.cache*, i8*, i32) #1

declare dso_local i32 @clear_bitset(i32, i32) #1

declare dso_local i32 @from_dblock(i32) #1

declare dso_local i32 @discard_load_info_init(%struct.cache*, %struct.discard_load_info*) #1

declare dso_local i32 @dm_cache_load_discards(i32, i32, %struct.discard_load_info*) #1

declare dso_local i32 @set_discard_range(%struct.discard_load_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
