; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_l2param_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_l2param_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { i32 }
%struct.i40e_client = type { i32 }
%struct.i40e_params = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i40iw_handler = type { %struct.i40iw_device }
%struct.i40iw_device = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.i40iw_l2params = type { i64, i32* }
%struct.l2params_work = type { i32, %struct.i40iw_l2params, %struct.i40iw_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@I40E_CLIENT_MAX_USER_PRIORITY = common dso_local global i32 0, align 4
@i40iw_l2params_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_info*, %struct.i40e_client*, %struct.i40e_params*)* @i40iw_l2param_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_l2param_change(%struct.i40e_info* %0, %struct.i40e_client* %1, %struct.i40e_params* %2) #0 {
  %4 = alloca %struct.i40e_info*, align 8
  %5 = alloca %struct.i40e_client*, align 8
  %6 = alloca %struct.i40e_params*, align 8
  %7 = alloca %struct.i40iw_handler*, align 8
  %8 = alloca %struct.i40iw_l2params*, align 8
  %9 = alloca %struct.l2params_work*, align 8
  %10 = alloca %struct.i40iw_device*, align 8
  %11 = alloca i32, align 4
  store %struct.i40e_info* %0, %struct.i40e_info** %4, align 8
  store %struct.i40e_client* %1, %struct.i40e_client** %5, align 8
  store %struct.i40e_params* %2, %struct.i40e_params** %6, align 8
  %12 = load %struct.i40e_info*, %struct.i40e_info** %4, align 8
  %13 = call %struct.i40iw_handler* @i40iw_find_i40e_handler(%struct.i40e_info* %12)
  store %struct.i40iw_handler* %13, %struct.i40iw_handler** %7, align 8
  %14 = load %struct.i40iw_handler*, %struct.i40iw_handler** %7, align 8
  %15 = icmp ne %struct.i40iw_handler* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %91

17:                                               ; preds = %3
  %18 = load %struct.i40iw_handler*, %struct.i40iw_handler** %7, align 8
  %19 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %18, i32 0, i32 0
  store %struct.i40iw_device* %19, %struct.i40iw_device** %10, align 8
  %20 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %21 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %20, i32 0, i32 2
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %91

25:                                               ; preds = %17
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.l2params_work* @kzalloc(i32 32, i32 %26)
  store %struct.l2params_work* %27, %struct.l2params_work** %9, align 8
  %28 = load %struct.l2params_work*, %struct.l2params_work** %9, align 8
  %29 = icmp ne %struct.l2params_work* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %91

31:                                               ; preds = %25
  %32 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %33 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %32, i32 0, i32 2
  %34 = call i32 @atomic_inc(i32* %33)
  %35 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %36 = load %struct.l2params_work*, %struct.l2params_work** %9, align 8
  %37 = getelementptr inbounds %struct.l2params_work, %struct.l2params_work* %36, i32 0, i32 2
  store %struct.i40iw_device* %35, %struct.i40iw_device** %37, align 8
  %38 = load %struct.l2params_work*, %struct.l2params_work** %9, align 8
  %39 = getelementptr inbounds %struct.l2params_work, %struct.l2params_work* %38, i32 0, i32 1
  store %struct.i40iw_l2params* %39, %struct.i40iw_l2params** %8, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %60, %31
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @I40E_CLIENT_MAX_USER_PRIORITY, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.i40e_params*, %struct.i40e_params** %6, align 8
  %46 = getelementptr inbounds %struct.i40e_params, %struct.i40e_params* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i40iw_l2params*, %struct.i40iw_l2params** %8, align 8
  %55 = getelementptr inbounds %struct.i40iw_l2params, %struct.i40iw_l2params* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %44
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.i40e_params*, %struct.i40e_params** %6, align 8
  %65 = getelementptr inbounds %struct.i40e_params, %struct.i40e_params* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.i40e_params*, %struct.i40e_params** %6, align 8
  %70 = getelementptr inbounds %struct.i40e_params, %struct.i40e_params* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  br label %77

72:                                               ; preds = %63
  %73 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %74 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  br label %77

77:                                               ; preds = %72, %68
  %78 = phi i64 [ %71, %68 ], [ %76, %72 ]
  %79 = load %struct.i40iw_l2params*, %struct.i40iw_l2params** %8, align 8
  %80 = getelementptr inbounds %struct.i40iw_l2params, %struct.i40iw_l2params* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.l2params_work*, %struct.l2params_work** %9, align 8
  %82 = getelementptr inbounds %struct.l2params_work, %struct.l2params_work* %81, i32 0, i32 0
  %83 = load i32, i32* @i40iw_l2params_worker, align 4
  %84 = call i32 @INIT_WORK(i32* %82, i32 %83)
  %85 = load %struct.i40iw_device*, %struct.i40iw_device** %10, align 8
  %86 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.l2params_work*, %struct.l2params_work** %9, align 8
  %89 = getelementptr inbounds %struct.l2params_work, %struct.l2params_work* %88, i32 0, i32 0
  %90 = call i32 @queue_work(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %77, %30, %24, %16
  ret void
}

declare dso_local %struct.i40iw_handler* @i40iw_find_i40e_handler(%struct.i40e_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.l2params_work* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
