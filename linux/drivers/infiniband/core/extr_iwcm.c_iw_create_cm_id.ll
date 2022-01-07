; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_iw_create_cm_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwcm.c_iw_create_cm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32, i32, i32, i8*, i32, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.iwcm_id_private = type { %struct.iw_cm_id, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IW_CM_STATE_IDLE = common dso_local global i32 0, align 4
@cm_event_handler = common dso_local global i32 0, align 4
@add_ref = common dso_local global i32 0, align 4
@rem_ref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iw_cm_id* @iw_create_cm_id(%struct.ib_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iwcm_id_private*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.iwcm_id_private* @kzalloc(i32 72, i32 %9)
  store %struct.iwcm_id_private* %10, %struct.iwcm_id_private** %8, align 8
  %11 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %12 = icmp ne %struct.iwcm_id_private* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.iw_cm_id* @ERR_PTR(i32 %15)
  store %struct.iw_cm_id* %16, %struct.iw_cm_id** %4, align 8
  br label %65

17:                                               ; preds = %3
  %18 = load i32, i32* @IW_CM_STATE_IDLE, align 4
  %19 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %20 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %22 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %23 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %23, i32 0, i32 5
  store %struct.ib_device* %21, %struct.ib_device** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %27 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %31 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %31, i32 0, i32 3
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @cm_event_handler, align 4
  %34 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %35 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @add_ref, align 4
  %38 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %39 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @rem_ref, align 4
  %42 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %43 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %46 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %45, i32 0, i32 6
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %49 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %48, i32 0, i32 5
  %50 = call i32 @atomic_set(i32* %49, i32 1)
  %51 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %52 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %51, i32 0, i32 4
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %55 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %54, i32 0, i32 3
  %56 = call i32 @init_completion(i32* %55)
  %57 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %58 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %57, i32 0, i32 2
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %61 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %60, i32 0, i32 1
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %8, align 8
  %64 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %63, i32 0, i32 0
  store %struct.iw_cm_id* %64, %struct.iw_cm_id** %4, align 8
  br label %65

65:                                               ; preds = %17, %13
  %66 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  ret %struct.iw_cm_id* %66
}

declare dso_local %struct.iwcm_id_private* @kzalloc(i32, i32) #1

declare dso_local %struct.iw_cm_id* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
