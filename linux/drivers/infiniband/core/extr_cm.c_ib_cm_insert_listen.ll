; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_ib_cm_insert_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_ib_cm_insert_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ib_cm_id = type { i64, i64 }
%struct.ib_device = type { i32 }
%struct.cm_id_private = type { %struct.ib_cm_id, i32, i32 }

@cm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IB_CM_ASSIGN_SERVICE_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cm_id* @ib_cm_insert_listen(%struct.ib_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cm_id_private*, align 8
  %9 = alloca %struct.ib_cm_id*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.ib_cm_id* @ib_create_cm_id(%struct.ib_device* %12, i64 %13, i32* null)
  store %struct.ib_cm_id* %14, %struct.ib_cm_id** %9, align 8
  %15 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %16 = call i64 @IS_ERR(%struct.ib_cm_id* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  store %struct.ib_cm_id* %19, %struct.ib_cm_id** %4, align 8
  br label %81

20:                                               ; preds = %3
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IB_CM_ASSIGN_SERVICE_ID, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %66

27:                                               ; preds = %20
  %28 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.cm_id_private* @cm_find_listen(%struct.ib_device* %28, i32 %29)
  store %struct.cm_id_private* %30, %struct.cm_id_private** %8, align 8
  %31 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %32 = icmp ne %struct.cm_id_private* %31, null
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %35 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %41 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39, %33
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.ib_cm_id* @ERR_PTR(i32 %48)
  store %struct.ib_cm_id* %49, %struct.ib_cm_id** %4, align 8
  br label %81

50:                                               ; preds = %39
  %51 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %52 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %51, i32 0, i32 2
  %53 = call i32 @atomic_inc(i32* %52)
  %54 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %55 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), i64 %58)
  %60 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %61 = call i32 @ib_destroy_cm_id(%struct.ib_cm_id* %60)
  %62 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %63 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %62, i32 0, i32 0
  store %struct.ib_cm_id* %63, %struct.ib_cm_id** %9, align 8
  %64 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  store %struct.ib_cm_id* %64, %struct.ib_cm_id** %4, align 8
  br label %81

65:                                               ; preds = %27
  br label %66

66:                                               ; preds = %65, %26
  %67 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @__ib_cm_listen(%struct.ib_cm_id* %67, i32 %68, i32 0)
  store i32 %69, i32* %11, align 4
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cm, i32 0, i32 0), i64 %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %76 = call i32 @ib_destroy_cm_id(%struct.ib_cm_id* %75)
  %77 = load i32, i32* %11, align 4
  %78 = call %struct.ib_cm_id* @ERR_PTR(i32 %77)
  store %struct.ib_cm_id* %78, %struct.ib_cm_id** %4, align 8
  br label %81

79:                                               ; preds = %66
  %80 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  store %struct.ib_cm_id* %80, %struct.ib_cm_id** %4, align 8
  br label %81

81:                                               ; preds = %79, %74, %50, %44, %18
  %82 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  ret %struct.ib_cm_id* %82
}

declare dso_local %struct.ib_cm_id* @ib_create_cm_id(%struct.ib_device*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.cm_id_private* @cm_find_listen(%struct.ib_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ib_cm_id* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ib_destroy_cm_id(%struct.ib_cm_id*) #1

declare dso_local i32 @__ib_cm_listen(%struct.ib_cm_id*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
