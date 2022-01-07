; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_rnd_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_rnd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_reclaim = type { %struct.TYPE_2__*, %struct.dmz_metadata* }
%struct.TYPE_2__ = type { i32 }
%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i32 }

@DMZ_ALLOC_RECLAIM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Chunk %u, move rnd zone %u (weight %u) to seq zone %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_reclaim*, %struct.dm_zone*)* @dmz_reclaim_rnd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_reclaim_rnd_data(%struct.dmz_reclaim* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmz_reclaim*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_zone*, align 8
  %8 = alloca %struct.dmz_metadata*, align 8
  %9 = alloca i32, align 4
  store %struct.dmz_reclaim* %0, %struct.dmz_reclaim** %4, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %5, align 8
  %10 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %11 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  store %struct.dm_zone* null, %struct.dm_zone** %7, align 8
  %13 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %14 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %13, i32 0, i32 1
  %15 = load %struct.dmz_metadata*, %struct.dmz_metadata** %14, align 8
  store %struct.dmz_metadata* %15, %struct.dmz_metadata** %8, align 8
  %16 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %17 = call i32 @dmz_lock_map(%struct.dmz_metadata* %16)
  %18 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %19 = load i32, i32* @DMZ_ALLOC_RECLAIM, align 4
  %20 = call %struct.dm_zone* @dmz_alloc_zone(%struct.dmz_metadata* %18, i32 %19)
  store %struct.dm_zone* %20, %struct.dm_zone** %7, align 8
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %22 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %21)
  %23 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %24 = icmp ne %struct.dm_zone* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %95

28:                                               ; preds = %2
  %29 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %30 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %34 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %35 = call i32 @dmz_id(%struct.dmz_metadata* %33, %struct.dm_zone* %34)
  %36 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %37 = call i32 @dmz_weight(%struct.dm_zone* %36)
  %38 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %39 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %40 = call i32 @dmz_id(%struct.dmz_metadata* %38, %struct.dm_zone* %39)
  %41 = call i32 @dmz_dev_debug(%struct.TYPE_2__* %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %37, i32 %40)
  %42 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %43 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %44 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %45 = call i32 @dmz_reclaim_copy(%struct.dmz_reclaim* %42, %struct.dm_zone* %43, %struct.dm_zone* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %47 = call i32 @dmz_lock_flush(%struct.dmz_metadata* %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %28
  %51 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %52 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %53 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %54 = call i32 @dmz_copy_valid_blocks(%struct.dmz_metadata* %51, %struct.dm_zone* %52, %struct.dm_zone* %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50, %28
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %60 = call i32 @dmz_lock_map(%struct.dmz_metadata* %59)
  %61 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %62 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %63 = call i32 @dmz_free_zone(%struct.dmz_metadata* %61, %struct.dm_zone* %62)
  %64 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %65 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %64)
  br label %91

66:                                               ; preds = %55
  %67 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %68 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %69 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %70 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dmz_invalidate_blocks(%struct.dmz_metadata* %67, %struct.dm_zone* %68, i32 0, i32 %73)
  %75 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %76 = call i32 @dmz_lock_map(%struct.dmz_metadata* %75)
  %77 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %78 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %79 = call i32 @dmz_unmap_zone(%struct.dmz_metadata* %77, %struct.dm_zone* %78)
  %80 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %81 = call i32 @dmz_unlock_zone_reclaim(%struct.dm_zone* %80)
  %82 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %83 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %84 = call i32 @dmz_free_zone(%struct.dmz_metadata* %82, %struct.dm_zone* %83)
  %85 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %86 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @dmz_map_zone(%struct.dmz_metadata* %85, %struct.dm_zone* %86, i32 %87)
  %89 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %90 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %89)
  br label %91

91:                                               ; preds = %66, %58
  %92 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %93 = call i32 @dmz_unlock_flush(%struct.dmz_metadata* %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %25
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @dmz_lock_map(%struct.dmz_metadata*) #1

declare dso_local %struct.dm_zone* @dmz_alloc_zone(%struct.dmz_metadata*, i32) #1

declare dso_local i32 @dmz_unlock_map(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_dev_debug(%struct.TYPE_2__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_weight(%struct.dm_zone*) #1

declare dso_local i32 @dmz_reclaim_copy(%struct.dmz_reclaim*, %struct.dm_zone*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_lock_flush(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_copy_valid_blocks(%struct.dmz_metadata*, %struct.dm_zone*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_free_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_invalidate_blocks(%struct.dmz_metadata*, %struct.dm_zone*, i32, i32) #1

declare dso_local i32 @dmz_unmap_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_unlock_zone_reclaim(%struct.dm_zone*) #1

declare dso_local i32 @dmz_map_zone(%struct.dmz_metadata*, %struct.dm_zone*, i32) #1

declare dso_local i32 @dmz_unlock_flush(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
