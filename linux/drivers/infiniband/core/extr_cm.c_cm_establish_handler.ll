; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_establish_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_establish_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, i32, i32 }
%struct.cm_id_private = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_ESTABLISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_establish_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_establish_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  %6 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %7 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %10 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cm_id_private* @cm_acquire_id(i32 %8, i32 %11)
  store %struct.cm_id_private* %12, %struct.cm_id_private** %4, align 8
  %13 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %14 = icmp ne %struct.cm_id_private* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %73

18:                                               ; preds = %1
  %19 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %20 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %23 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_CM_ESTABLISHED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %30 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  br label %68

32:                                               ; preds = %18
  %33 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %34 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %40 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ib_cancel_mad(i32 %38, i32 %41)
  %43 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %44 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %43, i32 0, i32 2
  %45 = call i32 @atomic_inc_and_test(i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %32
  %49 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %50 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %49, i32 0, i32 0
  %51 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %52 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %51, i32 0, i32 1
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  br label %54

54:                                               ; preds = %48, %32
  %55 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %56 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %62 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %63 = call i32 @cm_process_work(%struct.cm_id_private* %61, %struct.cm_work* %62)
  br label %67

64:                                               ; preds = %54
  %65 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %66 = call i32 @cm_deref_id(%struct.cm_id_private* %65)
  br label %67

67:                                               ; preds = %64, %60
  store i32 0, i32* %2, align 4
  br label %73

68:                                               ; preds = %28
  %69 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %70 = call i32 @cm_deref_id(%struct.cm_id_private* %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %67, %15
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ib_cancel_mad(i32, i32) #1

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cm_process_work(%struct.cm_id_private*, %struct.cm_work*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
