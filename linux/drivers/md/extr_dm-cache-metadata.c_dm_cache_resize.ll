; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_dm_cache_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"unable to shrink cache due to dirty blocks\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_cache_resize(%struct.dm_cache_metadata* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_cache_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @pack_value(i32 0, i32 0)
  store i32 %8, i32* %7, align 4
  %9 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %10 = call i32 @WRITE_LOCK(%struct.dm_cache_metadata* %9)
  %11 = call i32 @__dm_bless_for_disk(i32* %7)
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @from_cblock(i32 %12)
  %14 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %15 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @from_cblock(i32 %16)
  %18 = icmp slt i64 %13, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @blocks_are_unmapped_or_clean(%struct.dm_cache_metadata* %20, i32 %21, i32 %24, i32* %6)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 @__dm_unbless_for_disk(i32* %7)
  br label %86

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = call i32 @DMERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  %37 = call i32 @__dm_unbless_for_disk(i32* %7)
  br label %86

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %41 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %40, i32 0, i32 5
  %42 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %43 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %46 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @from_cblock(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @from_cblock(i32 %49)
  %51 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %52 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %51, i32 0, i32 4
  %53 = call i32 @dm_array_resize(i32* %41, i32 %44, i64 %48, i64 %50, i32* %7, i32* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %86

57:                                               ; preds = %39
  %58 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %59 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %63 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %62, i32 0, i32 3
  %64 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %65 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %68 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @from_cblock(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @from_cblock(i32 %71)
  %73 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %74 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %73, i32 0, i32 2
  %75 = call i32 @dm_bitset_resize(i32* %63, i32 %66, i64 %70, i64 %72, i32 0, i32* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %61
  br label %86

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %83 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %85 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %78, %56, %33, %28
  %87 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %88 = call i32 @WRITE_UNLOCK(%struct.dm_cache_metadata* %87)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @pack_value(i32, i32) #1

declare dso_local i32 @WRITE_LOCK(%struct.dm_cache_metadata*) #1

declare dso_local i32 @__dm_bless_for_disk(i32*) #1

declare dso_local i64 @from_cblock(i32) #1

declare dso_local i32 @blocks_are_unmapped_or_clean(%struct.dm_cache_metadata*, i32, i32, i32*) #1

declare dso_local i32 @__dm_unbless_for_disk(i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_array_resize(i32*, i32, i64, i64, i32*, i32*) #1

declare dso_local i64 @separate_dirty_bits(%struct.dm_cache_metadata*) #1

declare dso_local i32 @dm_bitset_resize(i32*, i32, i64, i64, i32, i32*) #1

declare dso_local i32 @WRITE_UNLOCK(%struct.dm_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
