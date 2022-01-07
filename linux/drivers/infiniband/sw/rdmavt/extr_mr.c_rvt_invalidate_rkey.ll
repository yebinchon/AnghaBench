; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_invalidate_rkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_invalidate_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.rvt_dev_info = type { %struct.TYPE_3__, %struct.rvt_lkey_table }
%struct.TYPE_3__ = type { i32 }
%struct.rvt_lkey_table = type { i32* }
%struct.rvt_mregion = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_invalidate_rkey(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvt_dev_info*, align 8
  %7 = alloca %struct.rvt_lkey_table*, align 8
  %8 = alloca %struct.rvt_mregion*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %12)
  store %struct.rvt_dev_info* %13, %struct.rvt_dev_info** %6, align 8
  %14 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %15 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %14, i32 0, i32 1
  store %struct.rvt_lkey_table* %15, %struct.rvt_lkey_table** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %2
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %7, align 8
  %24 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %28 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 32, %30
  %32 = ashr i32 %26, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %25, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.rvt_mregion* @rcu_dereference(i32 %35)
  store %struct.rvt_mregion* %36, %struct.rvt_mregion** %8, align 8
  %37 = load %struct.rvt_mregion*, %struct.rvt_mregion** %8, align 8
  %38 = icmp ne %struct.rvt_mregion* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %21
  %40 = load %struct.rvt_mregion*, %struct.rvt_mregion** %8, align 8
  %41 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %47 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rvt_mregion*, %struct.rvt_mregion** %8, align 8
  %51 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br label %54

54:                                               ; preds = %45, %39, %21
  %55 = phi i1 [ true, %39 ], [ true, %21 ], [ %53, %45 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %65

60:                                               ; preds = %54
  %61 = load %struct.rvt_mregion*, %struct.rvt_mregion** %8, align 8
  %62 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %61, i32 0, i32 2
  %63 = call i32 @atomic_set(i32* %62, i32 1)
  %64 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %69

65:                                               ; preds = %59
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %60, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_mregion* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
