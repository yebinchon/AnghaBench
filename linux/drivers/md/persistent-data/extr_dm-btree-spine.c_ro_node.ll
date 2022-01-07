; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_ro_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-spine.c_ro_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_node = type { i32 }
%struct.ro_spine = type { i32, %struct.dm_block** }
%struct.dm_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btree_node* @ro_node(%struct.ro_spine* %0) #0 {
  %2 = alloca %struct.ro_spine*, align 8
  %3 = alloca %struct.dm_block*, align 8
  store %struct.ro_spine* %0, %struct.ro_spine** %2, align 8
  %4 = load %struct.ro_spine*, %struct.ro_spine** %2, align 8
  %5 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.ro_spine*, %struct.ro_spine** %2, align 8
  %12 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %11, i32 0, i32 1
  %13 = load %struct.dm_block**, %struct.dm_block*** %12, align 8
  %14 = load %struct.ro_spine*, %struct.ro_spine** %2, align 8
  %15 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dm_block*, %struct.dm_block** %13, i64 %18
  %20 = load %struct.dm_block*, %struct.dm_block** %19, align 8
  store %struct.dm_block* %20, %struct.dm_block** %3, align 8
  %21 = load %struct.dm_block*, %struct.dm_block** %3, align 8
  %22 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %21)
  ret %struct.btree_node* %22
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
