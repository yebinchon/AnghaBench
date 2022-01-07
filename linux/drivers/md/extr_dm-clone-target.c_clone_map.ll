; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_clone_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_clone_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.clone* }
%struct.clone = type { i32, i32 }
%struct.bio = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CM_FAIL = common dso_local global i64 0, align 8
@DM_MAPIO_KILL = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @clone_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.clone*, align 8
  %7 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 0
  %10 = load %struct.clone*, %struct.clone** %9, align 8
  store %struct.clone* %10, %struct.clone** %6, align 8
  %11 = load %struct.clone*, %struct.clone** %6, align 8
  %12 = getelementptr inbounds %struct.clone, %struct.clone* %11, i32 0, i32 1
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = load %struct.clone*, %struct.clone** %6, align 8
  %15 = call i64 @get_clone_mode(%struct.clone* %14)
  %16 = load i64, i64* @CM_FAIL, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %22, i32* %3, align 4
  br label %88

23:                                               ; preds = %2
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @REQ_PREFLUSH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.clone*, %struct.clone** %6, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = call i32 @remap_and_issue(%struct.clone* %31, %struct.bio* %32)
  %34 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %34, i32* %3, align 4
  br label %88

35:                                               ; preds = %23
  %36 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dm_target_offset(%struct.dm_target* %36, i32 %40)
  %42 = load %struct.bio*, %struct.bio** %5, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.bio*, %struct.bio** %5, align 8
  %46 = call i64 @bio_op(%struct.bio* %45)
  %47 = load i64, i64* @REQ_OP_DISCARD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load %struct.clone*, %struct.clone** %6, align 8
  %51 = load %struct.bio*, %struct.bio** %5, align 8
  %52 = call i32 @process_discard_bio(%struct.clone* %50, %struct.bio* %51)
  %53 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %53, i32* %3, align 4
  br label %88

54:                                               ; preds = %35
  %55 = load %struct.clone*, %struct.clone** %6, align 8
  %56 = load %struct.bio*, %struct.bio** %5, align 8
  %57 = call i64 @bio_to_region(%struct.clone* %55, %struct.bio* %56)
  store i64 %57, i64* %7, align 8
  %58 = load %struct.clone*, %struct.clone** %6, align 8
  %59 = getelementptr inbounds %struct.clone, %struct.clone* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @dm_clone_is_region_hydrated(i32 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.clone*, %struct.clone** %6, align 8
  %66 = load %struct.bio*, %struct.bio** %5, align 8
  %67 = call i32 @remap_and_issue(%struct.clone* %65, %struct.bio* %66)
  %68 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %68, i32* %3, align 4
  br label %88

69:                                               ; preds = %54
  %70 = load %struct.bio*, %struct.bio** %5, align 8
  %71 = call i64 @bio_data_dir(%struct.bio* %70)
  %72 = load i64, i64* @READ, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.clone*, %struct.clone** %6, align 8
  %76 = load %struct.bio*, %struct.bio** %5, align 8
  %77 = call i32 @remap_to_source(%struct.clone* %75, %struct.bio* %76)
  %78 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %78, i32* %3, align 4
  br label %88

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.clone*, %struct.clone** %6, align 8
  %82 = load %struct.bio*, %struct.bio** %5, align 8
  %83 = call i32 @remap_to_dest(%struct.clone* %81, %struct.bio* %82)
  %84 = load %struct.clone*, %struct.clone** %6, align 8
  %85 = load %struct.bio*, %struct.bio** %5, align 8
  %86 = call i32 @hydrate_bio_region(%struct.clone* %84, %struct.bio* %85)
  %87 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %80, %74, %64, %49, %30, %21
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_clone_mode(%struct.clone*) #1

declare dso_local i32 @remap_and_issue(%struct.clone*, %struct.bio*) #1

declare dso_local i32 @dm_target_offset(%struct.dm_target*, i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @process_discard_bio(%struct.clone*, %struct.bio*) #1

declare dso_local i64 @bio_to_region(%struct.clone*, %struct.bio*) #1

declare dso_local i64 @dm_clone_is_region_hydrated(i32, i64) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @remap_to_source(%struct.clone*, %struct.bio*) #1

declare dso_local i32 @remap_to_dest(%struct.clone*, %struct.bio*) #1

declare dso_local i32 @hydrate_bio_region(%struct.clone*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
