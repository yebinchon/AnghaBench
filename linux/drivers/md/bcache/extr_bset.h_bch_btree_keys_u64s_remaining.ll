; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bch_btree_keys_u64s_remaining.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bch_btree_keys_u64s_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32, i32 }
%struct.bset_tree = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btree_keys*)* @bch_btree_keys_u64s_remaining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bch_btree_keys_u64s_remaining(%struct.btree_keys* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.btree_keys*, align 8
  %4 = alloca %struct.bset_tree*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %3, align 8
  %5 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %6 = call %struct.bset_tree* @bset_tree_last(%struct.btree_keys* %5)
  store %struct.bset_tree* %6, %struct.bset_tree** %4, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %9 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %7, %10
  %12 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %13 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %14 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bset_byte_offset(%struct.btree_keys* %12, i32 %15)
  %17 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %18 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @set_bytes(i32 %19)
  %21 = add nsw i32 %16, %20
  %22 = icmp slt i32 %11, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %26 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %49

30:                                               ; preds = %1
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %33 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %31, %34
  %36 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %37 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %38 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bset_byte_offset(%struct.btree_keys* %36, i32 %39)
  %41 = load %struct.bset_tree*, %struct.bset_tree** %4, align 8
  %42 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @set_bytes(i32 %43)
  %45 = add nsw i32 %40, %44
  %46 = sub nsw i32 %35, %45
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 4
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %30, %29
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local %struct.bset_tree* @bset_tree_last(%struct.btree_keys*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bset_byte_offset(%struct.btree_keys*, i32) #1

declare dso_local i32 @set_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
