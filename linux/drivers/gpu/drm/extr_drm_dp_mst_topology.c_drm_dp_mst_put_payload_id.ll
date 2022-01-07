; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_put_payload_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_put_payload_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32, i32, i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"putting payload %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_mst_topology_mgr*, i32)* @drm_dp_mst_put_payload_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_dp_mst_put_payload_id(%struct.drm_dp_mst_topology_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %68

9:                                                ; preds = %2
  %10 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %11 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %18 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %17, i32 0, i32 4
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %61, %9
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %23 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %20
  %27 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %28 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %60

35:                                               ; preds = %26
  %36 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %37 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %35
  %48 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %49 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %52
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %57 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %56, i32 0, i32 2
  %58 = call i32 @clear_bit(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %47, %35
  br label %60

60:                                               ; preds = %59, %26
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %20

64:                                               ; preds = %20
  %65 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %66 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %64, %8
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
