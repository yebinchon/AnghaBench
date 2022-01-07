; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_allocate_vcpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_allocate_vcpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_mst_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"payload: vcpi %d already allocated for pbn %d - requested pbn %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to init vcpi slots=%d max=63 ret=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"initing vcpi for pbn=%d slots=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_mst_allocate_vcpi(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_port* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %7 = alloca %struct.drm_dp_mst_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %6, align 8
  store %struct.drm_dp_mst_port* %1, %struct.drm_dp_mst_port** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %12 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %13 = call %struct.drm_dp_mst_port* @drm_dp_mst_topology_get_port_validated(%struct.drm_dp_mst_topology_mgr* %11, %struct.drm_dp_mst_port* %12)
  store %struct.drm_dp_mst_port* %13, %struct.drm_dp_mst_port** %7, align 8
  %14 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %15 = icmp ne %struct.drm_dp_mst_port* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %78

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %78

21:                                               ; preds = %17
  %22 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %23 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %29 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %34 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %41 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %47 = call i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port* %46)
  store i32 1, i32* %5, align 4
  br label %78

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48, %21
  %50 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %51 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %52 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @drm_dp_init_vcpi(%struct.drm_dp_mst_topology_mgr* %50, %struct.TYPE_2__* %52, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %61 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DIV_ROUND_UP(i32 %59, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  br label %77

66:                                               ; preds = %49
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %69 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %71)
  %73 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %74 = call i32 @drm_dp_mst_get_port_malloc(%struct.drm_dp_mst_port* %73)
  %75 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %76 = call i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port* %75)
  store i32 1, i32* %5, align 4
  br label %78

77:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %66, %45, %20, %16
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.drm_dp_mst_port* @drm_dp_mst_topology_get_port_validated(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_port*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

declare dso_local i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port*) #1

declare dso_local i32 @drm_dp_init_vcpi(%struct.drm_dp_mst_topology_mgr*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @drm_dp_mst_get_port_malloc(%struct.drm_dp_mst_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
