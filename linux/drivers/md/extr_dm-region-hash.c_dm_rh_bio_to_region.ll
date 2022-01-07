; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_rh_bio_to_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_rh_bio_to_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i64 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_rh_bio_to_region(%struct.dm_region_hash* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %6 = load %struct.bio*, %struct.bio** %4, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %11 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = call i32 @dm_rh_sector_to_region(%struct.dm_region_hash* %5, i64 %13)
  ret i32 %14
}

declare dso_local i32 @dm_rh_sector_to_region(%struct.dm_region_hash*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
