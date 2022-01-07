; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.cache* }
%struct.cache = type { i32, i32, i32 }
%struct.bio = type { i32 }
%struct.per_bio_data = type { i64 }

@DM_ENDIO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i32*)* @cache_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_end_io(%struct.dm_target* %0, %struct.bio* %1, i32* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cache*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.per_bio_data*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 0
  %12 = load %struct.cache*, %struct.cache** %11, align 8
  store %struct.cache* %12, %struct.cache** %7, align 8
  %13 = load %struct.bio*, %struct.bio** %5, align 8
  %14 = call %struct.per_bio_data* @get_per_bio_data(%struct.bio* %13)
  store %struct.per_bio_data* %14, %struct.per_bio_data** %9, align 8
  %15 = load %struct.per_bio_data*, %struct.per_bio_data** %9, align 8
  %16 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.cache*, %struct.cache** %7, align 8
  %21 = getelementptr inbounds %struct.cache, %struct.cache* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @policy_tick(i32 %22, i32 0)
  %24 = load %struct.cache*, %struct.cache** %7, align 8
  %25 = getelementptr inbounds %struct.cache, %struct.cache* %24, i32 0, i32 1
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.cache*, %struct.cache** %7, align 8
  %29 = getelementptr inbounds %struct.cache, %struct.cache* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.cache*, %struct.cache** %7, align 8
  %31 = getelementptr inbounds %struct.cache, %struct.cache* %30, i32 0, i32 1
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %19, %3
  %35 = load %struct.cache*, %struct.cache** %7, align 8
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = call i32 @bio_drop_shared_lock(%struct.cache* %35, %struct.bio* %36)
  %38 = load %struct.cache*, %struct.cache** %7, align 8
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = call i32 @accounted_complete(%struct.cache* %38, %struct.bio* %39)
  %41 = load i32, i32* @DM_ENDIO_DONE, align 4
  ret i32 %41
}

declare dso_local %struct.per_bio_data* @get_per_bio_data(%struct.bio*) #1

declare dso_local i32 @policy_tick(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bio_drop_shared_lock(%struct.cache*, %struct.bio*) #1

declare dso_local i32 @accounted_complete(%struct.cache*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
