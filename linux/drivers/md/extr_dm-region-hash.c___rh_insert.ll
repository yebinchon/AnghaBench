; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c___rh_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c___rh_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i64 }
%struct.dm_region = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_region_hash*, %struct.dm_region*)* @__rh_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rh_insert(%struct.dm_region_hash* %0, %struct.dm_region* %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca %struct.dm_region*, align 8
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store %struct.dm_region* %1, %struct.dm_region** %4, align 8
  %5 = load %struct.dm_region*, %struct.dm_region** %4, align 8
  %6 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %5, i32 0, i32 1
  %7 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %8 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %11 = load %struct.dm_region*, %struct.dm_region** %4, align 8
  %12 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @rh_hash(%struct.dm_region_hash* %10, i32 %13)
  %15 = add nsw i64 %9, %14
  %16 = call i32 @list_add(i32* %6, i64 %15)
  ret void
}

declare dso_local i32 @list_add(i32*, i64) #1

declare dso_local i64 @rh_hash(%struct.dm_region_hash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
