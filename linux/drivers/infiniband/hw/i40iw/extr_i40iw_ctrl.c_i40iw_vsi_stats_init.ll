; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_vsi_stats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_vsi_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_vsi = type { i64, i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, %struct.i40iw_sc_vsi*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i40iw_vsi_stats_info = type { i64, i64, i64, %struct.TYPE_3__* }

@I40IW_INVALID_FCN_ID = common dso_local global i64 0, align 8
@I40IW_ERR_NOT_READY = common dso_local global i32 0, align 4
@I40IW_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_vsi_stats_init(%struct.i40iw_sc_vsi* %0, %struct.i40iw_vsi_stats_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_vsi*, align 8
  %5 = alloca %struct.i40iw_vsi_stats_info*, align 8
  %6 = alloca i64, align 8
  store %struct.i40iw_sc_vsi* %0, %struct.i40iw_sc_vsi** %4, align 8
  store %struct.i40iw_vsi_stats_info* %1, %struct.i40iw_vsi_stats_info** %5, align 8
  %7 = load %struct.i40iw_vsi_stats_info*, %struct.i40iw_vsi_stats_info** %5, align 8
  %8 = getelementptr inbounds %struct.i40iw_vsi_stats_info, %struct.i40iw_vsi_stats_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.i40iw_vsi_stats_info*, %struct.i40iw_vsi_stats_info** %5, align 8
  %11 = getelementptr inbounds %struct.i40iw_vsi_stats_info, %struct.i40iw_vsi_stats_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %16 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i64 @i40iw_get_fcn_id(%struct.TYPE_4__* %17)
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @I40IW_INVALID_FCN_ID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @I40IW_ERR_NOT_READY, align 4
  store i32 %24, i32* %3, align 4
  br label %72

25:                                               ; preds = %19
  %26 = load %struct.i40iw_vsi_stats_info*, %struct.i40iw_vsi_stats_info** %5, align 8
  %27 = getelementptr inbounds %struct.i40iw_vsi_stats_info, %struct.i40iw_vsi_stats_info* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %30 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %29, i32 0, i32 2
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %30, align 8
  %31 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %32 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %37 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %35, i32* %39, align 8
  %40 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %41 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %42 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store %struct.i40iw_sc_vsi* %40, %struct.i40iw_sc_vsi** %44, align 8
  %45 = load %struct.i40iw_vsi_stats_info*, %struct.i40iw_vsi_stats_info** %5, align 8
  %46 = getelementptr inbounds %struct.i40iw_vsi_stats_info, %struct.i40iw_vsi_stats_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %25
  %50 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %51 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @i40iw_hw_stats_init(%struct.TYPE_3__* %52, i64 %53, i32 1)
  %55 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %56 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %61 = call i32 @i40iw_hw_stats_start_timer(%struct.i40iw_sc_vsi* %60)
  br label %62

62:                                               ; preds = %49, %25
  %63 = load %struct.i40iw_vsi_stats_info*, %struct.i40iw_vsi_stats_info** %5, align 8
  %64 = getelementptr inbounds %struct.i40iw_vsi_stats_info, %struct.i40iw_vsi_stats_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %67 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %70 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @I40IW_SUCCESS, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %62, %23
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @i40iw_get_fcn_id(%struct.TYPE_4__*) #1

declare dso_local i32 @i40iw_hw_stats_init(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @i40iw_hw_stats_start_timer(%struct.i40iw_sc_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
