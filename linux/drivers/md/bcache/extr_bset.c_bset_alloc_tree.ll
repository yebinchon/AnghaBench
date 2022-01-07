; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bset_alloc_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bset_alloc_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { %struct.bset_tree* }
%struct.bset_tree = type { i64, i64, i32 }

@MAX_BSETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_keys*, %struct.bset_tree*)* @bset_alloc_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bset_alloc_tree(%struct.btree_keys* %0, %struct.bset_tree* %1) #0 {
  %3 = alloca %struct.btree_keys*, align 8
  %4 = alloca %struct.bset_tree*, align 8
  %5 = alloca i32, align 4
  store %struct.btree_keys* %0, %struct.btree_keys** %3, align 8
  store %struct.bset_tree* %1, %struct.bset_tree** %4, align 8
  %6 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %7 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %8 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %7, i32 0, i32 0
  %9 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %10 = icmp ne %struct.bset_tree* %6, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %13 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %12, i64 -1
  %14 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @roundup(i32 %15, i32 16)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %18 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %17, i64 -1
  %19 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %25 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %27 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %26, i64 -1
  %28 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %34 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %11, %2
  br label %36

36:                                               ; preds = %45, %35
  %37 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %38 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %39 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %38, i32 0, i32 0
  %40 = load %struct.bset_tree*, %struct.bset_tree** %39, align 8
  %41 = load i32, i32* @MAX_BSETS, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %40, i64 %42
  %44 = icmp ult %struct.bset_tree* %37, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %47 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %46, i32 1
  store %struct.bset_tree* %47, %struct.bset_tree** %4, align 8
  %48 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %46, i32 0, i32 2
  store i32 0, i32* %48, align 8
  br label %36

49:                                               ; preds = %36
  ret void
}

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
