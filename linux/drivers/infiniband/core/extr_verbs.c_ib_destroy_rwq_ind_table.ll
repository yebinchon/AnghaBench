; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_destroy_rwq_ind_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_destroy_rwq_ind_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_rwq_ind_table = type { i32, %struct.TYPE_4__*, i32, %struct.ib_wq** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ib_wq = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_destroy_rwq_ind_table(%struct.ib_rwq_ind_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_rwq_ind_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wq**, align 8
  store %struct.ib_rwq_ind_table* %0, %struct.ib_rwq_ind_table** %3, align 8
  %8 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %9 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %13 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %12, i32 0, i32 3
  %14 = load %struct.ib_wq**, %struct.ib_wq*** %13, align 8
  store %struct.ib_wq** %14, %struct.ib_wq*** %7, align 8
  %15 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %16 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %15, i32 0, i32 2
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %24 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.ib_rwq_ind_table*)**
  %29 = load i32 (%struct.ib_rwq_ind_table*)*, i32 (%struct.ib_rwq_ind_table*)** %28, align 8
  %30 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %31 = call i32 %29(%struct.ib_rwq_ind_table* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.ib_wq**, %struct.ib_wq*** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ib_wq*, %struct.ib_wq** %40, i64 %42
  %44 = load %struct.ib_wq*, %struct.ib_wq** %43, align 8
  %45 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %44, i32 0, i32 0
  %46 = call i32 @atomic_dec(i32* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %35

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %19
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
