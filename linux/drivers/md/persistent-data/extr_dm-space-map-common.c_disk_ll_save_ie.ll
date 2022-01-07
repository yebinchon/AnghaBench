; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_disk_ll_save_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_disk_ll_save_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32, i32 }
%struct.disk_index_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ll_disk*, i32, %struct.disk_index_entry*)* @disk_ll_save_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_ll_save_ie(%struct.ll_disk* %0, i32 %1, %struct.disk_index_entry* %2) #0 {
  %4 = alloca %struct.ll_disk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.disk_index_entry*, align 8
  store %struct.ll_disk* %0, %struct.ll_disk** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.disk_index_entry* %2, %struct.disk_index_entry** %6, align 8
  %7 = load %struct.disk_index_entry*, %struct.disk_index_entry** %6, align 8
  %8 = call i32 @__dm_bless_for_disk(%struct.disk_index_entry* %7)
  %9 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %10 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %9, i32 0, i32 1
  %11 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %12 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.disk_index_entry*, %struct.disk_index_entry** %6, align 8
  %15 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %16 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %15, i32 0, i32 0
  %17 = call i32 @dm_btree_insert(i32* %10, i32 %13, i32* %5, %struct.disk_index_entry* %14, i32* %16)
  ret i32 %17
}

declare dso_local i32 @__dm_bless_for_disk(%struct.disk_index_entry*) #1

declare dso_local i32 @dm_btree_insert(i32*, i32, i32*, %struct.disk_index_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
