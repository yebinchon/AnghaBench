; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___insert_region_hydration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___insert_region_hydration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table_bucket = type { i32 }
%struct.dm_clone_region_hydration = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_table_bucket*, %struct.dm_clone_region_hydration*)* @__insert_region_hydration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__insert_region_hydration(%struct.hash_table_bucket* %0, %struct.dm_clone_region_hydration* %1) #0 {
  %3 = alloca %struct.hash_table_bucket*, align 8
  %4 = alloca %struct.dm_clone_region_hydration*, align 8
  store %struct.hash_table_bucket* %0, %struct.hash_table_bucket** %3, align 8
  store %struct.dm_clone_region_hydration* %1, %struct.dm_clone_region_hydration** %4, align 8
  %5 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %4, align 8
  %6 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %5, i32 0, i32 0
  %7 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %3, align 8
  %8 = getelementptr inbounds %struct.hash_table_bucket, %struct.hash_table_bucket* %7, i32 0, i32 0
  %9 = call i32 @hlist_add_head(i32* %6, i32* %8)
  ret void
}

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
