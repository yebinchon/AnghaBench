; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_dm_array_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-array.c_dm_array_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_array_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.dm_transaction_manager*, %struct.dm_btree_value_type }
%struct.dm_btree_value_type = type { i32, i32, i32, i32, %struct.dm_array_info* }
%struct.dm_transaction_manager = type { i32 }

@block_inc = common dso_local global i32 0, align 4
@block_dec = common dso_local global i32 0, align 4
@block_equal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_array_info_init(%struct.dm_array_info* %0, %struct.dm_transaction_manager* %1, %struct.dm_btree_value_type* %2) #0 {
  %4 = alloca %struct.dm_array_info*, align 8
  %5 = alloca %struct.dm_transaction_manager*, align 8
  %6 = alloca %struct.dm_btree_value_type*, align 8
  %7 = alloca %struct.dm_btree_value_type*, align 8
  store %struct.dm_array_info* %0, %struct.dm_array_info** %4, align 8
  store %struct.dm_transaction_manager* %1, %struct.dm_transaction_manager** %5, align 8
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %6, align 8
  %8 = load %struct.dm_array_info*, %struct.dm_array_info** %4, align 8
  %9 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store %struct.dm_btree_value_type* %10, %struct.dm_btree_value_type** %7, align 8
  %11 = load %struct.dm_array_info*, %struct.dm_array_info** %4, align 8
  %12 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %11, i32 0, i32 1
  %13 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %6, align 8
  %14 = call i32 @memcpy(i32* %12, %struct.dm_btree_value_type* %13, i32 4)
  %15 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %16 = load %struct.dm_array_info*, %struct.dm_array_info** %4, align 8
  %17 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.dm_transaction_manager* %15, %struct.dm_transaction_manager** %18, align 8
  %19 = load %struct.dm_array_info*, %struct.dm_array_info** %4, align 8
  %20 = getelementptr inbounds %struct.dm_array_info, %struct.dm_array_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.dm_array_info*, %struct.dm_array_info** %4, align 8
  %23 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %7, align 8
  %24 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %23, i32 0, i32 4
  store %struct.dm_array_info* %22, %struct.dm_array_info** %24, align 8
  %25 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %7, align 8
  %26 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load i32, i32* @block_inc, align 4
  %28 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %7, align 8
  %29 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @block_dec, align 4
  %31 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %7, align 8
  %32 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @block_equal, align 4
  %34 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %7, align 8
  %35 = getelementptr inbounds %struct.dm_btree_value_type, %struct.dm_btree_value_type* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.dm_btree_value_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
