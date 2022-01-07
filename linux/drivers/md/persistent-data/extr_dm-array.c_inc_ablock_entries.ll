; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_inc_ablock_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_inc_ablock_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.dm_btree_value_type }
%struct.dm_btree_value_type = type { i64 }
%struct.array_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_array_info*, %struct.array_block*)* @inc_ablock_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_ablock_entries(%struct.dm_array_info* %0, %struct.array_block* %1) #0 {
  %3 = alloca %struct.dm_array_info*, align 8
  %4 = alloca %struct.array_block*, align 8
  %5 = alloca %struct.dm_btree_value_type*, align 8
  store %struct.dm_array_info* %0, %struct.dm_array_info** %3, align 8
  store %struct.array_block* %1, %struct.array_block** %4, align 8
  %6 = load %struct.dm_array_info*, %struct.dm_array_info** %3, align 8
  %7 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %6, i32 0, i32 0
  store %struct.dm_btree_value_type* %7, %struct.dm_btree_value_type** %5, align 8
  %8 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %5, align 8
  %9 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.dm_array_info*, %struct.dm_array_info** %3, align 8
  %14 = load %struct.array_block*, %struct.array_block** %4, align 8
  %15 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %5, align 8
  %16 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @on_entries(%struct.dm_array_info* %13, %struct.array_block* %14, i64 %17)
  br label %19

19:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @on_entries(%struct.dm_array_info*, %struct.array_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
