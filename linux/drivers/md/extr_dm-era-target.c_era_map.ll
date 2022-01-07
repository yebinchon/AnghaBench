; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_era_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_era_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.era* }
%struct.era = type { i32 }
%struct.bio = type { i32 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @era_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @era_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.era*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 0
  %10 = load %struct.era*, %struct.era** %9, align 8
  store %struct.era* %10, %struct.era** %6, align 8
  %11 = load %struct.era*, %struct.era** %6, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = call i32 @get_block(%struct.era* %11, %struct.bio* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.era*, %struct.era** %6, align 8
  %15 = load %struct.bio*, %struct.bio** %5, align 8
  %16 = call i32 @remap_to_origin(%struct.era* %14, %struct.bio* %15)
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @REQ_PREFLUSH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %2
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = call i64 @bio_data_dir(%struct.bio* %24)
  %26 = load i64, i64* @WRITE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.era*, %struct.era** %6, align 8
  %30 = getelementptr inbounds %struct.era, %struct.era* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @metadata_current_marked(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.era*, %struct.era** %6, align 8
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = call i32 @defer_bio(%struct.era* %36, %struct.bio* %37)
  %39 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %28, %23, %2
  %41 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @get_block(%struct.era*, %struct.bio*) #1

declare dso_local i32 @remap_to_origin(%struct.era*, %struct.bio*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @metadata_current_marked(i32, i32) #1

declare dso_local i32 @defer_bio(%struct.era*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
