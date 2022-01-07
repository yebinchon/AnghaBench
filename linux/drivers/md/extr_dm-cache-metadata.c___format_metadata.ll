; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___format_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___format_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@CACHE_SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tm_create_with_sm failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*)* @__format_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__format_metadata(%struct.dm_cache_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_cache_metadata*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %3, align 8
  %5 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %6 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CACHE_SUPERBLOCK_LOCATION, align 4
  %9 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %10 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %9, i32 0, i32 2
  %11 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %12 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %11, i32 0, i32 1
  %13 = call i32 @dm_tm_create_with_sm(i32 %7, i32 %8, i32* %10, i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i32 @DMERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %88

19:                                               ; preds = %1
  %20 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %21 = call i32 @__setup_mapping_info(%struct.dm_cache_metadata* %20)
  %22 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %22, i32 0, i32 10
  %24 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %25 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %24, i32 0, i32 9
  %26 = call i32 @dm_array_empty(i32* %23, i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %78

30:                                               ; preds = %19
  %31 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %32 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %36 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %39 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %38, i32 0, i32 8
  %40 = call i32 @dm_disk_bitset_init(i32 %37, i32* %39)
  %41 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %42 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %41, i32 0, i32 8
  %43 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %44 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %43, i32 0, i32 7
  %45 = call i32 @dm_bitset_empty(i32* %42, i32* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %78

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %52 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %55 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %54, i32 0, i32 6
  %56 = call i32 @dm_disk_bitset_init(i32 %53, i32* %55)
  %57 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %58 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %57, i32 0, i32 6
  %59 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %60 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %59, i32 0, i32 5
  %61 = call i32 @dm_bitset_empty(i32* %58, i32* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %78

65:                                               ; preds = %50
  %66 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %67 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %69 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %71 = call i32 @__write_initial_superblock(%struct.dm_cache_metadata* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %78

75:                                               ; preds = %65
  %76 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %77 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  store i32 0, i32* %2, align 4
  br label %88

78:                                               ; preds = %74, %64, %48, %29
  %79 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %80 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dm_tm_destroy(i32 %81)
  %83 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %84 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dm_sm_destroy(i32 %85)
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %78, %75, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @dm_tm_create_with_sm(i32, i32, i32*, i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @__setup_mapping_info(%struct.dm_cache_metadata*) #1

declare dso_local i32 @dm_array_empty(i32*, i32*) #1

declare dso_local i64 @separate_dirty_bits(%struct.dm_cache_metadata*) #1

declare dso_local i32 @dm_disk_bitset_init(i32, i32*) #1

declare dso_local i32 @dm_bitset_empty(i32*, i32*) #1

declare dso_local i32 @__write_initial_superblock(%struct.dm_cache_metadata*) #1

declare dso_local i32 @dm_tm_destroy(i32) #1

declare dso_local i32 @dm_sm_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
