; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_bch_key_sort_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_bch_key_sort_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_iter_set = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @bch_key_sort_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bch_key_sort_cmp(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.btree_iter_set, align 8
  %4 = alloca %struct.btree_iter_set, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %3, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %4, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @bkey_cmp(i64 %9, i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  br label %26

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %21, %23
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %18, %15 ], [ %25, %19 ]
  ret i32 %27
}

declare dso_local i64 @bkey_cmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
