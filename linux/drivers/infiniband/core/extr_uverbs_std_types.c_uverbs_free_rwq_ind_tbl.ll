; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types.c_uverbs_free_rwq_ind_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types.c_uverbs_free_rwq_ind_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { %struct.ib_rwq_ind_table* }
%struct.ib_rwq_ind_table = type { %struct.ib_wq** }
%struct.ib_wq = type { i32 }
%struct.uverbs_attr_bundle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_uobject*, i32, %struct.uverbs_attr_bundle*)* @uverbs_free_rwq_ind_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uverbs_free_rwq_ind_tbl(%struct.ib_uobject* %0, i32 %1, %struct.uverbs_attr_bundle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_uobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uverbs_attr_bundle*, align 8
  %8 = alloca %struct.ib_rwq_ind_table*, align 8
  %9 = alloca %struct.ib_wq**, align 8
  %10 = alloca i32, align 4
  store %struct.ib_uobject* %0, %struct.ib_uobject** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uverbs_attr_bundle* %2, %struct.uverbs_attr_bundle** %7, align 8
  %11 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %12 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %11, i32 0, i32 0
  %13 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %12, align 8
  store %struct.ib_rwq_ind_table* %13, %struct.ib_rwq_ind_table** %8, align 8
  %14 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %8, align 8
  %15 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %14, i32 0, i32 0
  %16 = load %struct.ib_wq**, %struct.ib_wq*** %15, align 8
  store %struct.ib_wq** %16, %struct.ib_wq*** %9, align 8
  %17 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %8, align 8
  %18 = call i32 @ib_destroy_rwq_ind_table(%struct.ib_rwq_ind_table* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %22 = call i64 @ib_is_destroy_retryable(i32 %19, i32 %20, %struct.ib_uobject* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.ib_wq**, %struct.ib_wq*** %9, align 8
  %28 = call i32 @kfree(%struct.ib_wq** %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @ib_destroy_rwq_ind_table(%struct.ib_rwq_ind_table*) #1

declare dso_local i64 @ib_is_destroy_retryable(i32, i32, %struct.ib_uobject*) #1

declare dso_local i32 @kfree(%struct.ib_wq**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
