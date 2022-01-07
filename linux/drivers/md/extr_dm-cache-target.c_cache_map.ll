; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.cache* }
%struct.cache = type { i32, i32 }
%struct.bio = type { i32 }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @cache_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 0
  %12 = load %struct.cache*, %struct.cache** %11, align 8
  store %struct.cache* %12, %struct.cache** %6, align 8
  %13 = load %struct.cache*, %struct.cache** %6, align 8
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = call i32 @get_bio_block(%struct.cache* %13, %struct.bio* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = call i32 @init_per_bio_data(%struct.bio* %16)
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @from_oblock(i32 %18)
  %20 = load %struct.cache*, %struct.cache** %6, align 8
  %21 = getelementptr inbounds %struct.cache, %struct.cache* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @from_oblock(i32 %22)
  %24 = icmp sge i64 %19, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.cache*, %struct.cache** %6, align 8
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = call i32 @remap_to_origin(%struct.cache* %29, %struct.bio* %30)
  %32 = load %struct.cache*, %struct.cache** %6, align 8
  %33 = load %struct.bio*, %struct.bio** %5, align 8
  %34 = call i32 @accounted_begin(%struct.cache* %32, %struct.bio* %33)
  %35 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %35, i32* %3, align 4
  br label %58

36:                                               ; preds = %2
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = call i64 @discard_or_flush(%struct.bio* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.cache*, %struct.cache** %6, align 8
  %42 = load %struct.bio*, %struct.bio** %5, align 8
  %43 = call i32 @defer_bio(%struct.cache* %41, %struct.bio* %42)
  %44 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %36
  %46 = load %struct.cache*, %struct.cache** %6, align 8
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @map_bio(%struct.cache* %46, %struct.bio* %47, i32 %48, i32* %8)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.cache*, %struct.cache** %6, align 8
  %54 = getelementptr inbounds %struct.cache, %struct.cache* %53, i32 0, i32 0
  %55 = call i32 @schedule_commit(i32* %54)
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %40, %28
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @get_bio_block(%struct.cache*, %struct.bio*) #1

declare dso_local i32 @init_per_bio_data(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @from_oblock(i32) #1

declare dso_local i32 @remap_to_origin(%struct.cache*, %struct.bio*) #1

declare dso_local i32 @accounted_begin(%struct.cache*, %struct.bio*) #1

declare dso_local i64 @discard_or_flush(%struct.bio*) #1

declare dso_local i32 @defer_bio(%struct.cache*, %struct.bio*) #1

declare dso_local i32 @map_bio(%struct.cache*, %struct.bio*, i32, i32*) #1

declare dso_local i32 @schedule_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
