; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_iter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32 }
%struct.btree_iter = type { i32 }
%struct.bkey = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bkey* @bch_btree_iter_init(%struct.btree_keys* %0, %struct.btree_iter* %1, %struct.bkey* %2) #0 {
  %4 = alloca %struct.btree_keys*, align 8
  %5 = alloca %struct.btree_iter*, align 8
  %6 = alloca %struct.bkey*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %4, align 8
  store %struct.btree_iter* %1, %struct.btree_iter** %5, align 8
  store %struct.bkey* %2, %struct.bkey** %6, align 8
  %7 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %8 = load %struct.btree_iter*, %struct.btree_iter** %5, align 8
  %9 = load %struct.bkey*, %struct.bkey** %6, align 8
  %10 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %11 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.bkey* @__bch_btree_iter_init(%struct.btree_keys* %7, %struct.btree_iter* %8, %struct.bkey* %9, i32 %12)
  ret %struct.bkey* %13
}

declare dso_local %struct.bkey* @__bch_btree_iter_init(%struct.btree_keys*, %struct.btree_iter*, %struct.bkey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
