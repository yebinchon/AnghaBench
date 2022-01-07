; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_ib_create_cm_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_ib_create_cm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { i32, i8*, i32, %struct.ib_device*, i32 }
%struct.ib_device = type { i32 }
%struct.cm_id_private = type { %struct.ib_cm_id, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_CM_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cm_id* @ib_create_cm_id(%struct.ib_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cm_id_private*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cm_id_private* @kzalloc(i32 72, i32 %10)
  store %struct.cm_id_private* %11, %struct.cm_id_private** %8, align 8
  %12 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %13 = icmp ne %struct.cm_id_private* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_cm_id* @ERR_PTR(i32 %16)
  store %struct.ib_cm_id* %17, %struct.ib_cm_id** %4, align 8
  br label %73

18:                                               ; preds = %3
  %19 = load i32, i32* @IB_CM_IDLE, align 4
  %20 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %21 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %24 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %25 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %25, i32 0, i32 3
  store %struct.ib_device* %23, %struct.ib_device** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %29 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %33 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %36 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %39 = call i32 @cm_alloc_id(%struct.cm_id_private* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %18
  br label %67

43:                                               ; preds = %18
  %44 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %45 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %44, i32 0, i32 7
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %48 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %47, i32 0, i32 6
  %49 = call i32 @init_completion(i32* %48)
  %50 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %51 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %50, i32 0, i32 5
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %54 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %53, i32 0, i32 4
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %57 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %56, i32 0, i32 3
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %60 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %59, i32 0, i32 2
  %61 = call i32 @atomic_set(i32* %60, i32 -1)
  %62 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %63 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %62, i32 0, i32 1
  %64 = call i32 @atomic_set(i32* %63, i32 1)
  %65 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %66 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %65, i32 0, i32 0
  store %struct.ib_cm_id* %66, %struct.ib_cm_id** %4, align 8
  br label %73

67:                                               ; preds = %42
  %68 = load %struct.cm_id_private*, %struct.cm_id_private** %8, align 8
  %69 = call i32 @kfree(%struct.cm_id_private* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.ib_cm_id* @ERR_PTR(i32 %71)
  store %struct.ib_cm_id* %72, %struct.ib_cm_id** %4, align 8
  br label %73

73:                                               ; preds = %67, %43, %14
  %74 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  ret %struct.ib_cm_id* %74
}

declare dso_local %struct.cm_id_private* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_cm_id* @ERR_PTR(i32) #1

declare dso_local i32 @cm_alloc_id(%struct.cm_id_private*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
