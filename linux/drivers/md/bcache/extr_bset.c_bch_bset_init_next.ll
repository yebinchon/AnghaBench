; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bset_init_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bset_init_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bset* }
%struct.bset = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_bset_init_next(%struct.btree_keys* %0, %struct.bset* %1, i32 %2) #0 {
  %4 = alloca %struct.btree_keys*, align 8
  %5 = alloca %struct.bset*, align 8
  %6 = alloca i32, align 4
  store %struct.btree_keys* %0, %struct.btree_keys** %4, align 8
  store %struct.bset* %1, %struct.bset** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bset*, %struct.bset** %5, align 8
  %8 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %9 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.bset*, %struct.bset** %11, align 8
  %13 = icmp ne %struct.bset* %7, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.bset*, %struct.bset** %5, align 8
  %16 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %17 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %20 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.bset* %15, %struct.bset** %24, align 8
  %25 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %26 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.bset*, %struct.bset** %28, align 8
  %30 = getelementptr inbounds %struct.bset, %struct.bset* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bset*, %struct.bset** %5, align 8
  %33 = getelementptr inbounds %struct.bset, %struct.bset* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.bset*, %struct.bset** %5, align 8
  %36 = getelementptr inbounds %struct.bset, %struct.bset* %35, i32 0, i32 3
  %37 = call i32 @get_random_bytes(i32* %36, i32 4)
  br label %38

38:                                               ; preds = %34, %14
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.bset*, %struct.bset** %5, align 8
  %41 = getelementptr inbounds %struct.bset, %struct.bset* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bset*, %struct.bset** %5, align 8
  %43 = getelementptr inbounds %struct.bset, %struct.bset* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.bset*, %struct.bset** %5, align 8
  %45 = getelementptr inbounds %struct.bset, %struct.bset* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %47 = call i32 @bch_bset_build_unwritten_tree(%struct.btree_keys* %46)
  ret void
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @bch_bset_build_unwritten_tree(%struct.btree_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
