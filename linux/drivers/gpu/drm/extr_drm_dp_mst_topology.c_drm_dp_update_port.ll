; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_update_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_update_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_branch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_dp_connection_status_notify = type { i32, i32, i32, i32, i32 }
%struct.drm_dp_mst_port = type { i32, i32, i32, i64, i32, i32 }

@system_long_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_mst_branch*, %struct.drm_dp_connection_status_notify*)* @drm_dp_update_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_dp_update_port(%struct.drm_dp_mst_branch* %0, %struct.drm_dp_connection_status_notify* %1) #0 {
  %3 = alloca %struct.drm_dp_mst_branch*, align 8
  %4 = alloca %struct.drm_dp_connection_status_notify*, align 8
  %5 = alloca %struct.drm_dp_mst_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_dp_mst_branch* %0, %struct.drm_dp_mst_branch** %3, align 8
  store %struct.drm_dp_connection_status_notify* %1, %struct.drm_dp_connection_status_notify** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  %10 = load %struct.drm_dp_connection_status_notify*, %struct.drm_dp_connection_status_notify** %4, align 8
  %11 = getelementptr inbounds %struct.drm_dp_connection_status_notify, %struct.drm_dp_connection_status_notify* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_dp_mst_port* @drm_dp_get_port(%struct.drm_dp_mst_branch* %9, i32 %12)
  store %struct.drm_dp_mst_port* %13, %struct.drm_dp_mst_port** %5, align 8
  %14 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %15 = icmp ne %struct.drm_dp_mst_port* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %19 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %22 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.drm_dp_connection_status_notify*, %struct.drm_dp_connection_status_notify** %4, align 8
  %25 = getelementptr inbounds %struct.drm_dp_connection_status_notify, %struct.drm_dp_connection_status_notify* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %28 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.drm_dp_connection_status_notify*, %struct.drm_dp_connection_status_notify** %4, align 8
  %30 = getelementptr inbounds %struct.drm_dp_connection_status_notify, %struct.drm_dp_connection_status_notify* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %33 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.drm_dp_connection_status_notify*, %struct.drm_dp_connection_status_notify** %4, align 8
  %35 = getelementptr inbounds %struct.drm_dp_connection_status_notify, %struct.drm_dp_connection_status_notify* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %38 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.drm_dp_connection_status_notify*, %struct.drm_dp_connection_status_notify** %4, align 8
  %40 = getelementptr inbounds %struct.drm_dp_connection_status_notify, %struct.drm_dp_connection_status_notify* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %43 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %46 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %17
  %50 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %51 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  br label %58

55:                                               ; preds = %49
  %56 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %57 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %54
  br label %59

59:                                               ; preds = %58, %17
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %62 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %67 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %65
  %71 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @drm_dp_port_teardown_pdt(%struct.drm_dp_mst_port* %71, i32 %72)
  %74 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %75 = call i64 @drm_dp_port_setup_pdt(%struct.drm_dp_mst_port* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 1, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %70
  br label %79

79:                                               ; preds = %78, %65, %59
  %80 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %81 = call i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port* %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i32, i32* @system_long_wq, align 4
  %86 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  %87 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @queue_work(i32 %85, i32* %89)
  br label %91

91:                                               ; preds = %16, %84, %79
  ret void
}

declare dso_local %struct.drm_dp_mst_port* @drm_dp_get_port(%struct.drm_dp_mst_branch*, i32) #1

declare dso_local i32 @drm_dp_port_teardown_pdt(%struct.drm_dp_mst_port*, i32) #1

declare dso_local i64 @drm_dp_port_setup_pdt(%struct.drm_dp_mst_port*) #1

declare dso_local i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
