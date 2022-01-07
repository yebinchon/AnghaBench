; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_node_prepare_for_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_node_prepare_for_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.btree_node = type { %struct.node_header }
%struct.node_header = type { i32, i32, i32 }

@BTREE_CSUM_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_block_validator*, %struct.dm_block*, i64)* @node_prepare_for_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_prepare_for_write(%struct.dm_block_validator* %0, %struct.dm_block* %1, i64 %2) #0 {
  %4 = alloca %struct.dm_block_validator*, align 8
  %5 = alloca %struct.dm_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btree_node*, align 8
  %8 = alloca %struct.node_header*, align 8
  store %struct.dm_block_validator* %0, %struct.dm_block_validator** %4, align 8
  store %struct.dm_block* %1, %struct.dm_block** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %10 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %9)
  store %struct.btree_node* %10, %struct.btree_node** %7, align 8
  %11 = load %struct.btree_node*, %struct.btree_node** %7, align 8
  %12 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %11, i32 0, i32 0
  store %struct.node_header* %12, %struct.node_header** %8, align 8
  %13 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %14 = call i32 @dm_block_location(%struct.dm_block* %13)
  %15 = call i32 @cpu_to_le64(i32 %14)
  %16 = load %struct.node_header*, %struct.node_header** %8, align 8
  %17 = getelementptr inbounds %struct.node_header, %struct.node_header* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.node_header*, %struct.node_header** %8, align 8
  %19 = getelementptr inbounds %struct.node_header, %struct.node_header* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 4
  %22 = load i32, i32* @BTREE_CSUM_XOR, align 4
  %23 = call i32 @dm_bm_checksum(i32* %19, i64 %21, i32 %22)
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load %struct.node_header*, %struct.node_header** %8, align 8
  %26 = getelementptr inbounds %struct.node_header, %struct.node_header* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dm_block_validator*, %struct.dm_block_validator** %4, align 8
  %28 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %29 = call i32 @node_check(%struct.dm_block_validator* %27, %struct.dm_block* %28, i32 4096)
  %30 = call i32 @BUG_ON(i32 %29)
  ret void
}

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dm_bm_checksum(i32*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @node_check(%struct.dm_block_validator*, %struct.dm_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
