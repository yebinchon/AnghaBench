; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_hydrate_bio_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_hydrate_bio_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i32 }
%struct.bio = type { i32 }
%struct.hash_table_bucket = type { i32 }
%struct.dm_clone_region_hydration = type { i32, i32 }

@CM_READ_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*, %struct.bio*)* @hydrate_bio_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hydrate_bio_region(%struct.clone* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.clone*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hash_table_bucket*, align 8
  %8 = alloca %struct.dm_clone_region_hydration*, align 8
  %9 = alloca %struct.dm_clone_region_hydration*, align 8
  store %struct.clone* %0, %struct.clone** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %10 = load %struct.clone*, %struct.clone** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = call i64 @bio_to_region(%struct.clone* %10, %struct.bio* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.clone*, %struct.clone** %3, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.hash_table_bucket* @get_hash_table_bucket(%struct.clone* %13, i64 %14)
  store %struct.hash_table_bucket* %15, %struct.hash_table_bucket** %7, align 8
  %16 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @bucket_lock_irqsave(%struct.hash_table_bucket* %16, i64 %17)
  %19 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.dm_clone_region_hydration* @__hash_find(%struct.hash_table_bucket* %19, i64 %20)
  store %struct.dm_clone_region_hydration* %21, %struct.dm_clone_region_hydration** %8, align 8
  %22 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %23 = icmp ne %struct.dm_clone_region_hydration* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %26 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %25, i32 0, i32 0
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = call i32 @bio_list_add(i32* %26, %struct.bio* %27)
  %29 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %29, i64 %30)
  br label %131

32:                                               ; preds = %2
  %33 = load %struct.clone*, %struct.clone** %3, align 8
  %34 = getelementptr inbounds %struct.clone, %struct.clone* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @dm_clone_is_region_hydrated(i32 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %40, i64 %41)
  %43 = load %struct.clone*, %struct.clone** %3, align 8
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = call i32 @issue_bio(%struct.clone* %43, %struct.bio* %44)
  br label %131

46:                                               ; preds = %32
  %47 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %47, i64 %48)
  %50 = load %struct.clone*, %struct.clone** %3, align 8
  %51 = call %struct.dm_clone_region_hydration* @alloc_hydration(%struct.clone* %50)
  store %struct.dm_clone_region_hydration* %51, %struct.dm_clone_region_hydration** %8, align 8
  %52 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @hydration_init(%struct.dm_clone_region_hydration* %52, i64 %53)
  %55 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @bucket_lock_irqsave(%struct.hash_table_bucket* %55, i64 %56)
  %58 = load %struct.clone*, %struct.clone** %3, align 8
  %59 = getelementptr inbounds %struct.clone, %struct.clone* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @dm_clone_is_region_hydrated(i32 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %46
  %65 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %65, i64 %66)
  %68 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %69 = call i32 @free_hydration(%struct.dm_clone_region_hydration* %68)
  %70 = load %struct.clone*, %struct.clone** %3, align 8
  %71 = load %struct.bio*, %struct.bio** %4, align 8
  %72 = call i32 @issue_bio(%struct.clone* %70, %struct.bio* %71)
  br label %131

73:                                               ; preds = %46
  %74 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %75 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %76 = call %struct.dm_clone_region_hydration* @__find_or_insert_region_hydration(%struct.hash_table_bucket* %74, %struct.dm_clone_region_hydration* %75)
  store %struct.dm_clone_region_hydration* %76, %struct.dm_clone_region_hydration** %9, align 8
  %77 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %9, align 8
  %78 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %79 = icmp ne %struct.dm_clone_region_hydration* %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %9, align 8
  %82 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %81, i32 0, i32 0
  %83 = load %struct.bio*, %struct.bio** %4, align 8
  %84 = call i32 @bio_list_add(i32* %82, %struct.bio* %83)
  %85 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %85, i64 %86)
  %88 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %89 = call i32 @free_hydration(%struct.dm_clone_region_hydration* %88)
  br label %131

90:                                               ; preds = %73
  %91 = load %struct.clone*, %struct.clone** %3, align 8
  %92 = call i64 @get_clone_mode(%struct.clone* %91)
  %93 = load i64, i64* @CM_READ_ONLY, align 8
  %94 = icmp sge i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %90
  %99 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %100 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %99, i32 0, i32 1
  %101 = call i32 @hlist_del(i32* %100)
  %102 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %102, i64 %103)
  %105 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %106 = call i32 @free_hydration(%struct.dm_clone_region_hydration* %105)
  %107 = load %struct.bio*, %struct.bio** %4, align 8
  %108 = call i32 @bio_io_error(%struct.bio* %107)
  br label %131

109:                                              ; preds = %90
  %110 = load %struct.clone*, %struct.clone** %3, align 8
  %111 = load %struct.bio*, %struct.bio** %4, align 8
  %112 = call i64 @is_overwrite_bio(%struct.clone* %110, %struct.bio* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %115, i64 %116)
  %118 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %119 = load %struct.bio*, %struct.bio** %4, align 8
  %120 = call i32 @hydration_overwrite(%struct.dm_clone_region_hydration* %118, %struct.bio* %119)
  br label %131

121:                                              ; preds = %109
  %122 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %123 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %122, i32 0, i32 0
  %124 = load %struct.bio*, %struct.bio** %4, align 8
  %125 = call i32 @bio_list_add(i32* %123, %struct.bio* %124)
  %126 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %7, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %126, i64 %127)
  %129 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %8, align 8
  %130 = call i32 @hydration_copy(%struct.dm_clone_region_hydration* %129, i32 1)
  br label %131

131:                                              ; preds = %24, %39, %64, %80, %98, %121, %114
  ret void
}

declare dso_local i64 @bio_to_region(%struct.clone*, %struct.bio*) #1

declare dso_local %struct.hash_table_bucket* @get_hash_table_bucket(%struct.clone*, i64) #1

declare dso_local i32 @bucket_lock_irqsave(%struct.hash_table_bucket*, i64) #1

declare dso_local %struct.dm_clone_region_hydration* @__hash_find(%struct.hash_table_bucket*, i64) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket*, i64) #1

declare dso_local i64 @dm_clone_is_region_hydrated(i32, i64) #1

declare dso_local i32 @issue_bio(%struct.clone*, %struct.bio*) #1

declare dso_local %struct.dm_clone_region_hydration* @alloc_hydration(%struct.clone*) #1

declare dso_local i32 @hydration_init(%struct.dm_clone_region_hydration*, i64) #1

declare dso_local i32 @free_hydration(%struct.dm_clone_region_hydration*) #1

declare dso_local %struct.dm_clone_region_hydration* @__find_or_insert_region_hydration(%struct.hash_table_bucket*, %struct.dm_clone_region_hydration*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_clone_mode(%struct.clone*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i64 @is_overwrite_bio(%struct.clone*, %struct.bio*) #1

declare dso_local i32 @hydration_overwrite(%struct.dm_clone_region_hydration*, %struct.bio*) #1

declare dso_local i32 @hydration_copy(%struct.dm_clone_region_hydration*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
