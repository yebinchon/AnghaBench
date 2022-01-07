; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_hw_surface_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_hw_surface_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32, i32 }
%struct.qxl_bo = type { i32, i32, %struct.qxl_release*, %struct.TYPE_4__ }
%struct.qxl_release = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.qxl_surface_cmd = type { i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@QXL_SURFACE_CMD_CREATE = common dso_local global i32 0, align 4
@QXL_SURF_FLAG_KEEP_DATA = common dso_local global i32 0, align 4
@QXL_CMD_SURFACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_hw_surface_alloc(%struct.qxl_device* %0, %struct.qxl_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca %struct.qxl_bo*, align 8
  %6 = alloca %struct.qxl_surface_cmd*, align 8
  %7 = alloca %struct.qxl_release*, align 8
  %8 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %4, align 8
  store %struct.qxl_bo* %1, %struct.qxl_bo** %5, align 8
  %9 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %10 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

14:                                               ; preds = %2
  %15 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %16 = load i32, i32* @QXL_SURFACE_CMD_CREATE, align 4
  %17 = call i32 @qxl_alloc_surface_release_reserved(%struct.qxl_device* %15, i32 %16, i32* null, %struct.qxl_release** %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %113

22:                                               ; preds = %14
  %23 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %24 = call i32 @qxl_release_reserve_list(%struct.qxl_release* %23, i32 1)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %113

29:                                               ; preds = %22
  %30 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %31 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %32 = call i64 @qxl_release_map(%struct.qxl_device* %30, %struct.qxl_release* %31)
  %33 = inttoptr i64 %32 to %struct.qxl_surface_cmd*
  store %struct.qxl_surface_cmd* %33, %struct.qxl_surface_cmd** %6, align 8
  %34 = load i32, i32* @QXL_SURFACE_CMD_CREATE, align 4
  %35 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @QXL_SURF_FLAG_KEEP_DATA, align 4
  %38 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %41 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  store i32 %43, i32* %47, align 4
  %48 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %49 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  store i32 %51, i32* %55, align 4
  %56 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %57 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 4
  %64 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %65 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %69 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %73 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %74 = call i32 @qxl_bo_physical_address(%struct.qxl_device* %72, %struct.qxl_bo* %73, i32 0)
  %75 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %76 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %80 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %83 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %85 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %86 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %87 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %86, i32 0, i32 0
  %88 = call i32 @qxl_release_unmap(%struct.qxl_device* %84, %struct.qxl_release* %85, i32* %87)
  %89 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %90 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %91 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %90, i32 0, i32 2
  store %struct.qxl_release* %89, %struct.qxl_release** %91, align 8
  %92 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %93 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %94 = load i32, i32* @QXL_CMD_SURFACE, align 4
  %95 = call i32 @qxl_push_command_ring_release(%struct.qxl_device* %92, %struct.qxl_release* %93, i32 %94, i32 0)
  %96 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %97 = call i32 @qxl_release_fence_buffer_objects(%struct.qxl_release* %96)
  %98 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %99 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %101 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %100, i32 0, i32 0
  %102 = call i32 @spin_lock(i32* %101)
  %103 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %104 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %103, i32 0, i32 1
  %105 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %106 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %107 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @idr_replace(i32* %104, %struct.qxl_bo* %105, i32 %108)
  %110 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %111 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %29, %27, %20, %13
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @qxl_alloc_surface_release_reserved(%struct.qxl_device*, i32, i32*, %struct.qxl_release**) #1

declare dso_local i32 @qxl_release_reserve_list(%struct.qxl_release*, i32) #1

declare dso_local i64 @qxl_release_map(%struct.qxl_device*, %struct.qxl_release*) #1

declare dso_local i32 @qxl_bo_physical_address(%struct.qxl_device*, %struct.qxl_bo*, i32) #1

declare dso_local i32 @qxl_release_unmap(%struct.qxl_device*, %struct.qxl_release*, i32*) #1

declare dso_local i32 @qxl_push_command_ring_release(%struct.qxl_device*, %struct.qxl_release*, i32, i32) #1

declare dso_local i32 @qxl_release_fence_buffer_objects(%struct.qxl_release*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_replace(i32*, %struct.qxl_bo*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
