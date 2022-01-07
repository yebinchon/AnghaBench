; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_iter_next_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_iter_next_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bkey = type { i32 }
%struct.btree_iter = type { i32 }
%struct.btree_keys = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bkey* @bch_btree_iter_next_filter(%struct.btree_iter* %0, %struct.btree_keys* %1, i64 (%struct.btree_keys*, %struct.bkey*)* %2) #0 {
  %4 = alloca %struct.btree_iter*, align 8
  %5 = alloca %struct.btree_keys*, align 8
  %6 = alloca i64 (%struct.btree_keys*, %struct.bkey*)*, align 8
  %7 = alloca %struct.bkey*, align 8
  store %struct.btree_iter* %0, %struct.btree_iter** %4, align 8
  store %struct.btree_keys* %1, %struct.btree_keys** %5, align 8
  store i64 (%struct.btree_keys*, %struct.bkey*)* %2, i64 (%struct.btree_keys*, %struct.bkey*)** %6, align 8
  br label %8

8:                                                ; preds = %20, %3
  %9 = load %struct.btree_iter*, %struct.btree_iter** %4, align 8
  %10 = call %struct.bkey* @bch_btree_iter_next(%struct.btree_iter* %9)
  store %struct.bkey* %10, %struct.bkey** %7, align 8
  br label %11

11:                                               ; preds = %8
  %12 = load %struct.bkey*, %struct.bkey** %7, align 8
  %13 = icmp ne %struct.bkey* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i64 (%struct.btree_keys*, %struct.bkey*)*, i64 (%struct.btree_keys*, %struct.bkey*)** %6, align 8
  %16 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %17 = load %struct.bkey*, %struct.bkey** %7, align 8
  %18 = call i64 %15(%struct.btree_keys* %16, %struct.bkey* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %8, label %22

22:                                               ; preds = %20
  %23 = load %struct.bkey*, %struct.bkey** %7, align 8
  ret %struct.bkey* %23
}

declare dso_local %struct.bkey* @bch_btree_iter_next(%struct.btree_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
