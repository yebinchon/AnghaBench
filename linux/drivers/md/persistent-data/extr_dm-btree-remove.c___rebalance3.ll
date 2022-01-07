; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c___rebalance3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c___rebalance3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.child = type { %struct.btree_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_btree_info*, %struct.btree_node*, %struct.child*, %struct.child*, %struct.child*)* @__rebalance3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rebalance3(%struct.dm_btree_info* %0, %struct.btree_node* %1, %struct.child* %2, %struct.child* %3, %struct.child* %4) #0 {
  %6 = alloca %struct.dm_btree_info*, align 8
  %7 = alloca %struct.btree_node*, align 8
  %8 = alloca %struct.child*, align 8
  %9 = alloca %struct.child*, align 8
  %10 = alloca %struct.child*, align 8
  %11 = alloca %struct.btree_node*, align 8
  %12 = alloca %struct.btree_node*, align 8
  %13 = alloca %struct.btree_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %6, align 8
  store %struct.btree_node* %1, %struct.btree_node** %7, align 8
  store %struct.child* %2, %struct.child** %8, align 8
  store %struct.child* %3, %struct.child** %9, align 8
  store %struct.child* %4, %struct.child** %10, align 8
  %18 = load %struct.child*, %struct.child** %8, align 8
  %19 = getelementptr inbounds %struct.child, %struct.child* %18, i32 0, i32 0
  %20 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  store %struct.btree_node* %20, %struct.btree_node** %11, align 8
  %21 = load %struct.child*, %struct.child** %9, align 8
  %22 = getelementptr inbounds %struct.child, %struct.child* %21, i32 0, i32 0
  %23 = load %struct.btree_node*, %struct.btree_node** %22, align 8
  store %struct.btree_node* %23, %struct.btree_node** %12, align 8
  %24 = load %struct.child*, %struct.child** %10, align 8
  %25 = getelementptr inbounds %struct.child, %struct.child* %24, i32 0, i32 0
  %26 = load %struct.btree_node*, %struct.btree_node** %25, align 8
  store %struct.btree_node* %26, %struct.btree_node** %13, align 8
  %27 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %28 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.btree_node*, %struct.btree_node** %12, align 8
  %33 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le32_to_cpu(i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %38 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le32_to_cpu(i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %43 = call i32 @merge_threshold(%struct.btree_node* %42)
  %44 = mul nsw i32 %43, 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %17, align 4
  %46 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %47 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.btree_node*, %struct.btree_node** %12, align 8
  %51 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %49, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.btree_node*, %struct.btree_node** %12, align 8
  %58 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %62 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = add i32 %68, %69
  %71 = load i32, i32* %16, align 4
  %72 = add i32 %70, %71
  %73 = load i32, i32* %17, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %5
  %76 = load %struct.dm_btree_info*, %struct.dm_btree_info** %6, align 8
  %77 = load %struct.btree_node*, %struct.btree_node** %7, align 8
  %78 = load %struct.child*, %struct.child** %8, align 8
  %79 = load %struct.child*, %struct.child** %9, align 8
  %80 = load %struct.child*, %struct.child** %10, align 8
  %81 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %82 = load %struct.btree_node*, %struct.btree_node** %12, align 8
  %83 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @delete_center_node(%struct.dm_btree_info* %76, %struct.btree_node* %77, %struct.child* %78, %struct.child* %79, %struct.child* %80, %struct.btree_node* %81, %struct.btree_node* %82, %struct.btree_node* %83, i32 %84, i32 %85, i32 %86)
  br label %101

88:                                               ; preds = %5
  %89 = load %struct.dm_btree_info*, %struct.dm_btree_info** %6, align 8
  %90 = load %struct.btree_node*, %struct.btree_node** %7, align 8
  %91 = load %struct.child*, %struct.child** %8, align 8
  %92 = load %struct.child*, %struct.child** %9, align 8
  %93 = load %struct.child*, %struct.child** %10, align 8
  %94 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %95 = load %struct.btree_node*, %struct.btree_node** %12, align 8
  %96 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @redistribute3(%struct.dm_btree_info* %89, %struct.btree_node* %90, %struct.child* %91, %struct.child* %92, %struct.child* %93, %struct.btree_node* %94, %struct.btree_node* %95, %struct.btree_node* %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %88, %75
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @merge_threshold(%struct.btree_node*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @delete_center_node(%struct.dm_btree_info*, %struct.btree_node*, %struct.child*, %struct.child*, %struct.child*, %struct.btree_node*, %struct.btree_node*, %struct.btree_node*, i32, i32, i32) #1

declare dso_local i32 @redistribute3(%struct.dm_btree_info*, %struct.btree_node*, %struct.child*, %struct.child*, %struct.child*, %struct.btree_node*, %struct.btree_node*, %struct.btree_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
