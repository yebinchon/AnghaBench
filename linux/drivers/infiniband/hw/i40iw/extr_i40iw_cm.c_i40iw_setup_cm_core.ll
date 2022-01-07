; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_setup_cm_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_setup_cm_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.i40iw_cm_core, i32 }
%struct.i40iw_cm_core = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.i40iw_device* }

@i40iw_cm_timer_tick = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"iwewq\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"iwdwq\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_setup_cm_core(%struct.i40iw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_cm_core*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  %5 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %6 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %5, i32 0, i32 0
  store %struct.i40iw_cm_core* %6, %struct.i40iw_cm_core** %4, align 8
  %7 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %8 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %9 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %8, i32 0, i32 10
  store %struct.i40iw_device* %7, %struct.i40iw_device** %9, align 8
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 1
  %12 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %13 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %12, i32 0, i32 9
  store i32* %11, i32** %13, align 8
  %14 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %15 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %14, i32 0, i32 8
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %18 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %17, i32 0, i32 7
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %21 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %20, i32 0, i32 6
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %24 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %23, i32 0, i32 5
  %25 = load i32, i32* @i40iw_cm_timer_tick, align 4
  %26 = call i32 @timer_setup(i32* %24, i32 %25, i32 0)
  %27 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %28 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %27, i32 0, i32 4
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %31 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %30, i32 0, i32 3
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %34 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %33, i32 0, i32 2
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %37 = call i8* @alloc_ordered_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %39 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %41 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %1
  br label %56

45:                                               ; preds = %1
  %46 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %47 = call i8* @alloc_ordered_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %49 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %51 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %56

55:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %62

56:                                               ; preds = %54, %44
  %57 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %58 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %57, i32 0, i32 0
  %59 = call i32 @i40iw_cleanup_cm_core(%struct.i40iw_cm_core* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %55
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @i40iw_cleanup_cm_core(%struct.i40iw_cm_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
