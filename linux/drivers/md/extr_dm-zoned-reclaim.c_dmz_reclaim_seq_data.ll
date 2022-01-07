; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_seq_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_seq_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_reclaim = type { %struct.TYPE_2__*, %struct.dmz_metadata* }
%struct.TYPE_2__ = type { i32 }
%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i32, %struct.dm_zone* }

@.str = private unnamed_addr constant [67 x i8] c"Chunk %u, move data zone %u (weight %u) to buf zone %u (weight %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_reclaim*, %struct.dm_zone*)* @dmz_reclaim_seq_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_reclaim_seq_data(%struct.dmz_reclaim* %0, %struct.dm_zone* %1) #0 {
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
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %14 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %13, i32 0, i32 1
  %15 = load %struct.dm_zone*, %struct.dm_zone** %14, align 8
  store %struct.dm_zone* %15, %struct.dm_zone** %7, align 8
  %16 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %17 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %16, i32 0, i32 1
  %18 = load %struct.dmz_metadata*, %struct.dmz_metadata** %17, align 8
  store %struct.dmz_metadata* %18, %struct.dmz_metadata** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %20 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %24 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %25 = call i32 @dmz_id(%struct.dmz_metadata* %23, %struct.dm_zone* %24)
  %26 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %27 = call i32 @dmz_weight(%struct.dm_zone* %26)
  %28 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %29 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %30 = call i32 @dmz_id(%struct.dmz_metadata* %28, %struct.dm_zone* %29)
  %31 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %32 = call i32 @dmz_weight(%struct.dm_zone* %31)
  %33 = call i32 @dmz_dev_debug(%struct.TYPE_2__* %21, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %27, i32 %30, i32 %32)
  %34 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %35 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %36 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %37 = call i32 @dmz_reclaim_copy(%struct.dmz_reclaim* %34, %struct.dm_zone* %35, %struct.dm_zone* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %83

42:                                               ; preds = %2
  %43 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %44 = call i32 @dmz_lock_flush(%struct.dmz_metadata* %43)
  %45 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %46 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %47 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %48 = call i32 @dmz_merge_valid_blocks(%struct.dmz_metadata* %45, %struct.dm_zone* %46, %struct.dm_zone* %47, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %42
  %52 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %53 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %54 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %55 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dmz_invalidate_blocks(%struct.dmz_metadata* %52, %struct.dm_zone* %53, i32 0, i32 %58)
  %60 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %61 = call i32 @dmz_lock_map(%struct.dmz_metadata* %60)
  %62 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %63 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %64 = call i32 @dmz_unmap_zone(%struct.dmz_metadata* %62, %struct.dm_zone* %63)
  %65 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %66 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %67 = call i32 @dmz_unmap_zone(%struct.dmz_metadata* %65, %struct.dm_zone* %66)
  %68 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %69 = call i32 @dmz_unlock_zone_reclaim(%struct.dm_zone* %68)
  %70 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %71 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %72 = call i32 @dmz_free_zone(%struct.dmz_metadata* %70, %struct.dm_zone* %71)
  %73 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %74 = load %struct.dm_zone*, %struct.dm_zone** %7, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @dmz_map_zone(%struct.dmz_metadata* %73, %struct.dm_zone* %74, i32 %75)
  %77 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %78 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %77)
  br label %79

79:                                               ; preds = %51, %42
  %80 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %81 = call i32 @dmz_unlock_flush(%struct.dmz_metadata* %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %40
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @dmz_dev_debug(%struct.TYPE_2__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_weight(%struct.dm_zone*) #1

declare dso_local i32 @dmz_reclaim_copy(%struct.dmz_reclaim*, %struct.dm_zone*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_lock_flush(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_merge_valid_blocks(%struct.dmz_metadata*, %struct.dm_zone*, %struct.dm_zone*, i32) #1

declare dso_local i32 @dmz_invalidate_blocks(%struct.dmz_metadata*, %struct.dm_zone*, i32, i32) #1

declare dso_local i32 @dmz_lock_map(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_unmap_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_unlock_zone_reclaim(%struct.dm_zone*) #1

declare dso_local i32 @dmz_free_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_map_zone(%struct.dmz_metadata*, %struct.dm_zone*, i32) #1

declare dso_local i32 @dmz_unlock_map(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_unlock_flush(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
