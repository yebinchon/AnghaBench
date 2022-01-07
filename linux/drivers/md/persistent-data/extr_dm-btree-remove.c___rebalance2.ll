; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c___rebalance2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c___rebalance2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.btree_node = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.child = type { i32, i32, %struct.btree_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_btree_info*, %struct.btree_node*, %struct.child*, %struct.child*)* @__rebalance2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rebalance2(%struct.dm_btree_info* %0, %struct.btree_node* %1, %struct.child* %2, %struct.child* %3) #0 {
  %5 = alloca %struct.dm_btree_info*, align 8
  %6 = alloca %struct.btree_node*, align 8
  %7 = alloca %struct.child*, align 8
  %8 = alloca %struct.child*, align 8
  %9 = alloca %struct.btree_node*, align 8
  %10 = alloca %struct.btree_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %5, align 8
  store %struct.btree_node* %1, %struct.btree_node** %6, align 8
  store %struct.child* %2, %struct.child** %7, align 8
  store %struct.child* %3, %struct.child** %8, align 8
  %15 = load %struct.child*, %struct.child** %7, align 8
  %16 = getelementptr inbounds %struct.child, %struct.child* %15, i32 0, i32 2
  %17 = load %struct.btree_node*, %struct.btree_node** %16, align 8
  store %struct.btree_node* %17, %struct.btree_node** %9, align 8
  %18 = load %struct.child*, %struct.child** %8, align 8
  %19 = getelementptr inbounds %struct.child, %struct.child* %18, i32 0, i32 2
  %20 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  store %struct.btree_node* %20, %struct.btree_node** %10, align 8
  %21 = load %struct.btree_node*, %struct.btree_node** %9, align 8
  %22 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.btree_node*, %struct.btree_node** %10, align 8
  %27 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.btree_node*, %struct.btree_node** %9, align 8
  %32 = call i32 @merge_threshold(%struct.btree_node* %31)
  %33 = mul nsw i32 2, %32
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add i32 %35, %36
  %38 = load i32, i32* %13, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %4
  %41 = load %struct.btree_node*, %struct.btree_node** %9, align 8
  %42 = load %struct.btree_node*, %struct.btree_node** %10, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sub i32 0, %43
  %45 = call i32 @node_copy(%struct.btree_node* %41, %struct.btree_node* %42, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = add i32 %46, %47
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = load %struct.btree_node*, %struct.btree_node** %9, align 8
  %51 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.btree_node*, %struct.btree_node** %6, align 8
  %54 = load %struct.child*, %struct.child** %8, align 8
  %55 = getelementptr inbounds %struct.child, %struct.child* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @delete_at(%struct.btree_node* %53, i32 %56)
  %58 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %59 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.child*, %struct.child** %8, align 8
  %62 = getelementptr inbounds %struct.child, %struct.child* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dm_block_location(i32 %63)
  %65 = call i32 @dm_tm_dec(i32 %60, i32 %64)
  br label %87

66:                                               ; preds = %4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add i32 %67, %68
  %70 = udiv i32 %69, 2
  store i32 %70, i32* %14, align 4
  %71 = load %struct.btree_node*, %struct.btree_node** %9, align 8
  %72 = load %struct.btree_node*, %struct.btree_node** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sub i32 %73, %74
  %76 = call i32 @shift(%struct.btree_node* %71, %struct.btree_node* %72, i32 %75)
  %77 = load %struct.btree_node*, %struct.btree_node** %10, align 8
  %78 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.btree_node*, %struct.btree_node** %6, align 8
  %83 = load %struct.child*, %struct.child** %8, align 8
  %84 = getelementptr inbounds %struct.child, %struct.child* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32* @key_ptr(%struct.btree_node* %82, i32 %85)
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %66, %40
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @merge_threshold(%struct.btree_node*) #1

declare dso_local i32 @node_copy(%struct.btree_node*, %struct.btree_node*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @delete_at(%struct.btree_node*, i32) #1

declare dso_local i32 @dm_tm_dec(i32, i32) #1

declare dso_local i32 @dm_block_location(i32) #1

declare dso_local i32 @shift(%struct.btree_node*, %struct.btree_node*, i32) #1

declare dso_local i32* @key_ptr(%struct.btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
