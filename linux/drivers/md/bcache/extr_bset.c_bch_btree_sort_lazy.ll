; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_sort_lazy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_btree_sort_lazy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bset_sort_state = type { i32 }

@SORT_CRIT = common dso_local global i32 0, align 4
@MAX_BSETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_btree_sort_lazy(%struct.btree_keys* %0, %struct.bset_sort_state* %1) #0 {
  %3 = alloca %struct.btree_keys*, align 8
  %4 = alloca %struct.bset_sort_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btree_keys* %0, %struct.btree_keys** %3, align 8
  store %struct.bset_sort_state* %1, %struct.bset_sort_state** %4, align 8
  %7 = load i32, i32* @SORT_CRIT, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %9 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %15 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %45, %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load %struct.bset_sort_state*, %struct.bset_sort_state** %4, align 8
  %23 = getelementptr inbounds %struct.bset_sort_state, %struct.bset_sort_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %28 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %21
  %40 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.bset_sort_state*, %struct.bset_sort_state** %4, align 8
  %43 = call i32 @bch_btree_sort_partial(%struct.btree_keys* %40, i32 %41, %struct.bset_sort_state* %42)
  br label %63

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  br label %18

48:                                               ; preds = %18
  %49 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %50 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* @MAX_BSETS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %57 = load %struct.bset_sort_state*, %struct.bset_sort_state** %4, align 8
  %58 = call i32 @bch_btree_sort(%struct.btree_keys* %56, %struct.bset_sort_state* %57)
  br label %63

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %12
  %61 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %62 = call i32 @bch_bset_build_written_tree(%struct.btree_keys* %61)
  br label %63

63:                                               ; preds = %60, %55, %39
  ret void
}

declare dso_local i32 @bch_btree_sort_partial(%struct.btree_keys*, i32, %struct.bset_sort_state*) #1

declare dso_local i32 @bch_btree_sort(%struct.btree_keys*, %struct.bset_sort_state*) #1

declare dso_local i32 @bch_bset_build_written_tree(%struct.btree_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
