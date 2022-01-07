; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_sort_key_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c_sort_key_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_iter = type { i64, %struct.btree_iter_set* }
%struct.btree_iter_set = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_iter*, %struct.btree_iter_set*)* @sort_key_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_key_next(%struct.btree_iter* %0, %struct.btree_iter_set* %1) #0 {
  %3 = alloca %struct.btree_iter*, align 8
  %4 = alloca %struct.btree_iter_set*, align 8
  store %struct.btree_iter* %0, %struct.btree_iter** %3, align 8
  store %struct.btree_iter_set* %1, %struct.btree_iter_set** %4, align 8
  %5 = load %struct.btree_iter_set*, %struct.btree_iter_set** %4, align 8
  %6 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @bkey_next(i64 %7)
  %9 = load %struct.btree_iter_set*, %struct.btree_iter_set** %4, align 8
  %10 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.btree_iter_set*, %struct.btree_iter_set** %4, align 8
  %12 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.btree_iter_set*, %struct.btree_iter_set** %4, align 8
  %15 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.btree_iter_set*, %struct.btree_iter_set** %4, align 8
  %20 = load %struct.btree_iter*, %struct.btree_iter** %3, align 8
  %21 = getelementptr inbounds %struct.btree_iter, %struct.btree_iter* %20, i32 0, i32 1
  %22 = load %struct.btree_iter_set*, %struct.btree_iter_set** %21, align 8
  %23 = load %struct.btree_iter*, %struct.btree_iter** %3, align 8
  %24 = getelementptr inbounds %struct.btree_iter, %struct.btree_iter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds %struct.btree_iter_set, %struct.btree_iter_set* %22, i64 %26
  %28 = bitcast %struct.btree_iter_set* %19 to i8*
  %29 = bitcast %struct.btree_iter_set* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  br label %30

30:                                               ; preds = %18, %2
  ret void
}

declare dso_local i64 @bkey_next(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
