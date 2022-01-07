; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_hw_surface_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_hw_surface_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32, i32 }
%struct.qxl_bo = type { i32, i32, i32* }
%struct.qxl_surface_cmd = type { i32, i32, i32 }
%struct.qxl_release = type { i32 }

@QXL_SURFACE_CMD_DESTROY = common dso_local global i32 0, align 4
@QXL_CMD_SURFACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_hw_surface_dealloc(%struct.qxl_device* %0, %struct.qxl_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca %struct.qxl_bo*, align 8
  %6 = alloca %struct.qxl_surface_cmd*, align 8
  %7 = alloca %struct.qxl_release*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %4, align 8
  store %struct.qxl_bo* %1, %struct.qxl_bo** %5, align 8
  %10 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %11 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %17 = load i32, i32* @QXL_SURFACE_CMD_DESTROY, align 4
  %18 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %19 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @qxl_alloc_surface_release_reserved(%struct.qxl_device* %16, i32 %17, i32* %20, %struct.qxl_release** %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %72

26:                                               ; preds = %15
  %27 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %28 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %30 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %33 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %32, i32 0, i32 1
  %34 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %35 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @idr_replace(i32* %33, i32* null, i32 %36)
  %38 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %39 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %42 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %44 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct.qxl_bo*, %struct.qxl_bo** %5, align 8
  %47 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %50 = getelementptr inbounds %struct.qxl_release, %struct.qxl_release* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %52 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %53 = call i64 @qxl_release_map(%struct.qxl_device* %51, %struct.qxl_release* %52)
  %54 = inttoptr i64 %53 to %struct.qxl_surface_cmd*
  store %struct.qxl_surface_cmd* %54, %struct.qxl_surface_cmd** %6, align 8
  %55 = load i32, i32* @QXL_SURFACE_CMD_DESTROY, align 4
  %56 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %60 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %62 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %63 = load %struct.qxl_surface_cmd*, %struct.qxl_surface_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.qxl_surface_cmd, %struct.qxl_surface_cmd* %63, i32 0, i32 1
  %65 = call i32 @qxl_release_unmap(%struct.qxl_device* %61, %struct.qxl_release* %62, i32* %64)
  %66 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %67 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %68 = load i32, i32* @QXL_CMD_SURFACE, align 4
  %69 = call i32 @qxl_push_command_ring_release(%struct.qxl_device* %66, %struct.qxl_release* %67, i32 %68, i32 0)
  %70 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %71 = call i32 @qxl_release_fence_buffer_objects(%struct.qxl_release* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %26, %24, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @qxl_alloc_surface_release_reserved(%struct.qxl_device*, i32, i32*, %struct.qxl_release**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_replace(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @qxl_release_map(%struct.qxl_device*, %struct.qxl_release*) #1

declare dso_local i32 @qxl_release_unmap(%struct.qxl_device*, %struct.qxl_release*, i32*) #1

declare dso_local i32 @qxl_push_command_ring_release(%struct.qxl_device*, %struct.qxl_release*, i32, i32) #1

declare dso_local i32 @qxl_release_fence_buffer_objects(%struct.qxl_release*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
