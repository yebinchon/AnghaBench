; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c___bch_btree_iter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c___bch_btree_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32 }
%struct.btree_iter = type { %struct.btree_keys*, i64, i32, i32 }
%struct.bkey = type { i32 }
%struct.bset_tree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bkey* (%struct.btree_keys*, %struct.btree_iter*, %struct.bkey*, %struct.bset_tree*)* @__bch_btree_iter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bkey* @__bch_btree_iter_init(%struct.btree_keys* %0, %struct.btree_iter* %1, %struct.bkey* %2, %struct.bset_tree* %3) #0 {
  %5 = alloca %struct.btree_keys*, align 8
  %6 = alloca %struct.btree_iter*, align 8
  %7 = alloca %struct.bkey*, align 8
  %8 = alloca %struct.bset_tree*, align 8
  %9 = alloca %struct.bkey*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %5, align 8
  store %struct.btree_iter* %1, %struct.btree_iter** %6, align 8
  store %struct.bkey* %2, %struct.bkey** %7, align 8
  store %struct.bset_tree* %3, %struct.bset_tree** %8, align 8
  store %struct.bkey* null, %struct.bkey** %9, align 8
  %10 = load %struct.btree_iter*, %struct.btree_iter** %6, align 8
  %11 = getelementptr inbounds %struct.btree_iter, %struct.btree_iter* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = load %struct.btree_iter*, %struct.btree_iter** %6, align 8
  %15 = getelementptr inbounds %struct.btree_iter, %struct.btree_iter* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.btree_iter*, %struct.btree_iter** %6, align 8
  %17 = getelementptr inbounds %struct.btree_iter, %struct.btree_iter* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %35, %4
  %19 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %20 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %21 = call %struct.bset_tree* @bset_tree_last(%struct.btree_keys* %20)
  %22 = icmp ule %struct.bset_tree* %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %25 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %26 = load %struct.bkey*, %struct.bkey** %7, align 8
  %27 = call %struct.bkey* @bch_bset_search(%struct.btree_keys* %24, %struct.bset_tree* %25, %struct.bkey* %26)
  store %struct.bkey* %27, %struct.bkey** %9, align 8
  %28 = load %struct.btree_iter*, %struct.btree_iter** %6, align 8
  %29 = load %struct.bkey*, %struct.bkey** %9, align 8
  %30 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %31 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bset_bkey_last(i32 %32)
  %34 = call i32 @bch_btree_iter_push(%struct.btree_iter* %28, %struct.bkey* %29, i32 %33)
  br label %35

35:                                               ; preds = %23
  %36 = load %struct.bset_tree*, %struct.bset_tree** %8, align 8
  %37 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %36, i32 1
  store %struct.bset_tree* %37, %struct.bset_tree** %8, align 8
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.bkey*, %struct.bkey** %9, align 8
  ret %struct.bkey* %39
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.bset_tree* @bset_tree_last(%struct.btree_keys*) #1

declare dso_local %struct.bkey* @bch_bset_search(%struct.btree_keys*, %struct.bset_tree*, %struct.bkey*) #1

declare dso_local i32 @bch_btree_iter_push(%struct.btree_iter*, %struct.bkey*, i32) #1

declare dso_local i32 @bset_bkey_last(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
