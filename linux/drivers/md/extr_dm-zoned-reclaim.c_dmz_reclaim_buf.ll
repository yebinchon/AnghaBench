; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_reclaim_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_reclaim = type { %struct.TYPE_2__*, %struct.dmz_metadata* }
%struct.TYPE_2__ = type { i32 }
%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i32, i32, %struct.dm_zone* }

@.str = private unnamed_addr constant [67 x i8] c"Chunk %u, move buf zone %u (weight %u) to data zone %u (weight %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_reclaim*, %struct.dm_zone*)* @dmz_reclaim_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_reclaim_buf(%struct.dmz_reclaim* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmz_reclaim*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmz_metadata*, align 8
  %9 = alloca i32, align 4
  store %struct.dmz_reclaim* %0, %struct.dmz_reclaim** %4, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %5, align 8
  %10 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %11 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %10, i32 0, i32 2
  %12 = load %struct.dm_zone*, %struct.dm_zone** %11, align 8
  store %struct.dm_zone* %12, %struct.dm_zone** %6, align 8
  %13 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %14 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %17 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %16, i32 0, i32 1
  %18 = load %struct.dmz_metadata*, %struct.dmz_metadata** %17, align 8
  store %struct.dmz_metadata* %18, %struct.dmz_metadata** %8, align 8
  %19 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %20 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %23 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %26 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %27 = call i32 @dmz_id(%struct.dmz_metadata* %25, %struct.dm_zone* %26)
  %28 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %29 = call i32 @dmz_weight(%struct.dm_zone* %28)
  %30 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %31 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %32 = call i32 @dmz_id(%struct.dmz_metadata* %30, %struct.dm_zone* %31)
  %33 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %34 = call i32 @dmz_weight(%struct.dm_zone* %33)
  %35 = call i32 @dmz_dev_debug(%struct.TYPE_2__* %21, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %29, i32 %32, i32 %34)
  %36 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %37 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %38 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %39 = call i32 @dmz_reclaim_copy(%struct.dmz_reclaim* %36, %struct.dm_zone* %37, %struct.dm_zone* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %79

44:                                               ; preds = %2
  %45 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %46 = call i32 @dmz_lock_flush(%struct.dmz_metadata* %45)
  %47 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %48 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %49 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dmz_merge_valid_blocks(%struct.dmz_metadata* %47, %struct.dm_zone* %48, %struct.dm_zone* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %44
  %55 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %56 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %57 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %4, align 8
  %58 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dmz_invalidate_blocks(%struct.dmz_metadata* %55, %struct.dm_zone* %56, i32 0, i32 %61)
  %63 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %64 = call i32 @dmz_lock_map(%struct.dmz_metadata* %63)
  %65 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %66 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %67 = call i32 @dmz_unmap_zone(%struct.dmz_metadata* %65, %struct.dm_zone* %66)
  %68 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %69 = call i32 @dmz_unlock_zone_reclaim(%struct.dm_zone* %68)
  %70 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %71 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %72 = call i32 @dmz_free_zone(%struct.dmz_metadata* %70, %struct.dm_zone* %71)
  %73 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %74 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %73)
  br label %75

75:                                               ; preds = %54, %44
  %76 = load %struct.dmz_metadata*, %struct.dmz_metadata** %8, align 8
  %77 = call i32 @dmz_unlock_flush(%struct.dmz_metadata* %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %42
  %80 = load i32, i32* %3, align 4
  ret i32 %80
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

declare dso_local i32 @dmz_unlock_map(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_unlock_flush(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
