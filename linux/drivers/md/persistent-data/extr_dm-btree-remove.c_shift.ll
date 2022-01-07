; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_node*, %struct.btree_node*, i32)* @shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shift(%struct.btree_node* %0, %struct.btree_node* %1, i32 %2) #0 {
  %4 = alloca %struct.btree_node*, align 8
  %5 = alloca %struct.btree_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.btree_node* %0, %struct.btree_node** %4, align 8
  store %struct.btree_node* %1, %struct.btree_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %12 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @le32_to_cpu(i8* %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %17 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @le32_to_cpu(i8* %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %22 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @le32_to_cpu(i8* %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %27 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @le32_to_cpu(i8* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %36, %38
  %40 = load i64, i64* %9, align 8
  %41 = icmp sgt i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i64, i64* %9, align 8
  %49 = icmp sgt i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %3
  br label %91

55:                                               ; preds = %3
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @node_shift(%struct.btree_node* %59, i32 %60)
  %62 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %63 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @node_copy(%struct.btree_node* %62, %struct.btree_node* %63, i32 %64)
  br label %74

66:                                               ; preds = %55
  %67 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %68 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @node_copy(%struct.btree_node* %67, %struct.btree_node* %68, i32 %69)
  %71 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @node_shift(%struct.btree_node* %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %58
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %75, %77
  %79 = call i8* @cpu_to_le32(i64 %78)
  %80 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %81 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = call i8* @cpu_to_le32(i64 %86)
  %88 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %89 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  br label %91

91:                                               ; preds = %74, %54
  ret void
}

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @node_shift(%struct.btree_node*, i32) #1

declare dso_local i32 @node_copy(%struct.btree_node*, %struct.btree_node*, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
