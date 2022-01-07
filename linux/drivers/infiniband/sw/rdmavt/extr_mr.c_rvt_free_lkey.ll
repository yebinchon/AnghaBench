; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_free_lkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_free_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_mregion = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rvt_dev_info = type { %struct.TYPE_4__, i32, %struct.rvt_lkey_table }
%struct.TYPE_4__ = type { i32 }
%struct.rvt_lkey_table = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_mregion*)* @rvt_free_lkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvt_free_lkey(%struct.rvt_mregion* %0) #0 {
  %2 = alloca %struct.rvt_mregion*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvt_dev_info*, align 8
  %7 = alloca %struct.rvt_lkey_table*, align 8
  %8 = alloca i32, align 4
  store %struct.rvt_mregion* %0, %struct.rvt_mregion** %2, align 8
  %9 = load %struct.rvt_mregion*, %struct.rvt_mregion** %2, align 8
  %10 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.rvt_mregion*, %struct.rvt_mregion** %2, align 8
  %13 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %16)
  store %struct.rvt_dev_info* %17, %struct.rvt_dev_info** %6, align 8
  %18 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %19 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %18, i32 0, i32 2
  store %struct.rvt_lkey_table* %19, %struct.rvt_lkey_table** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %7, align 8
  %21 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %20, i32 0, i32 0
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %1
  %27 = load %struct.rvt_mregion*, %struct.rvt_mregion** %2, align 8
  %28 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.rvt_mregion*, %struct.rvt_mregion** %2, align 8
  %33 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %35 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rcu_assign_pointer(i32 %36, i32* null)
  %38 = load %struct.rvt_mregion*, %struct.rvt_mregion** %2, align 8
  %39 = call i32 @rvt_put_mr(%struct.rvt_mregion* %38)
  br label %40

40:                                               ; preds = %31, %26
  br label %65

41:                                               ; preds = %1
  %42 = load %struct.rvt_mregion*, %struct.rvt_mregion** %2, align 8
  %43 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %68

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %50 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 32, %52
  %54 = ashr i32 %48, %53
  store i32 %54, i32* %5, align 4
  %55 = load %struct.rvt_mregion*, %struct.rvt_mregion** %2, align 8
  %56 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %7, align 8
  %58 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @rcu_assign_pointer(i32 %63, i32* null)
  br label %65

65:                                               ; preds = %47, %40
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %46
  %69 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %7, align 8
  %70 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %69, i32 0, i32 0
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.rvt_mregion*, %struct.rvt_mregion** %2, align 8
  %77 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %76, i32 0, i32 1
  %78 = call i32 @percpu_ref_kill(i32* %77)
  br label %79

79:                                               ; preds = %75, %68
  ret void
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @rvt_put_mr(%struct.rvt_mregion*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @percpu_ref_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
