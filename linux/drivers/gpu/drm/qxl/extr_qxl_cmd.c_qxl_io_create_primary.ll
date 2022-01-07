; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_io_create_primary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_io_create_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.qxl_bo*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.qxl_surface_create }
%struct.qxl_surface_create = type { i32, i32, %struct.qxl_device*, i32, i32, i32, i32 }
%struct.qxl_bo = type { i32, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"qdev %p, ram_header %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"mem = %llx, from %p\0A\00", align 1
@QXL_SURF_FLAG_KEEP_DATA = common dso_local global i32 0, align 4
@QXL_SURF_TYPE_PRIMARY = common dso_local global i32 0, align 4
@QXL_IO_CREATE_PRIMARY_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qxl_io_create_primary(%struct.qxl_device* %0, %struct.qxl_bo* %1) #0 {
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca %struct.qxl_bo*, align 8
  %5 = alloca %struct.qxl_surface_create*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  store %struct.qxl_bo* %1, %struct.qxl_bo** %4, align 8
  %6 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %7 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %6, i32 0, i32 0
  %8 = load %struct.qxl_bo*, %struct.qxl_bo** %7, align 8
  %9 = call i64 @WARN_ON(%struct.qxl_bo* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %80

12:                                               ; preds = %2
  %13 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %14 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %15 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.qxl_device* %13, %struct.TYPE_6__* %16)
  %18 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %19 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.qxl_surface_create* %21, %struct.qxl_surface_create** %5, align 8
  %22 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %23 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qxl_surface_create*, %struct.qxl_surface_create** %5, align 8
  %27 = getelementptr inbounds %struct.qxl_surface_create, %struct.qxl_surface_create* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %29 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qxl_surface_create*, %struct.qxl_surface_create** %5, align 8
  %33 = getelementptr inbounds %struct.qxl_surface_create, %struct.qxl_surface_create* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %35 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qxl_surface_create*, %struct.qxl_surface_create** %5, align 8
  %39 = getelementptr inbounds %struct.qxl_surface_create, %struct.qxl_surface_create* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %41 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qxl_surface_create*, %struct.qxl_surface_create** %5, align 8
  %45 = getelementptr inbounds %struct.qxl_surface_create, %struct.qxl_surface_create* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %47 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %48 = call %struct.qxl_device* @qxl_bo_physical_address(%struct.qxl_device* %46, %struct.qxl_bo* %47, i32 0)
  %49 = load %struct.qxl_surface_create*, %struct.qxl_surface_create** %5, align 8
  %50 = getelementptr inbounds %struct.qxl_surface_create, %struct.qxl_surface_create* %49, i32 0, i32 2
  store %struct.qxl_device* %48, %struct.qxl_device** %50, align 8
  %51 = load %struct.qxl_surface_create*, %struct.qxl_surface_create** %5, align 8
  %52 = getelementptr inbounds %struct.qxl_surface_create, %struct.qxl_surface_create* %51, i32 0, i32 2
  %53 = load %struct.qxl_device*, %struct.qxl_device** %52, align 8
  %54 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %55 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.qxl_device* %53, %struct.TYPE_6__* %56)
  %58 = load i32, i32* @QXL_SURF_FLAG_KEEP_DATA, align 4
  %59 = load %struct.qxl_surface_create*, %struct.qxl_surface_create** %5, align 8
  %60 = getelementptr inbounds %struct.qxl_surface_create, %struct.qxl_surface_create* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @QXL_SURF_TYPE_PRIMARY, align 4
  %62 = load %struct.qxl_surface_create*, %struct.qxl_surface_create** %5, align 8
  %63 = getelementptr inbounds %struct.qxl_surface_create, %struct.qxl_surface_create* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %65 = load i32, i32* @QXL_IO_CREATE_PRIMARY_ASYNC, align 4
  %66 = call i32 @wait_for_io_cmd(%struct.qxl_device* %64, i32 0, i32 %65)
  %67 = load %struct.qxl_bo*, %struct.qxl_bo** %4, align 8
  %68 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %69 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %68, i32 0, i32 0
  store %struct.qxl_bo* %67, %struct.qxl_bo** %69, align 8
  %70 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %71 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %70, i32 0, i32 0
  %72 = load %struct.qxl_bo*, %struct.qxl_bo** %71, align 8
  %73 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %75 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %74, i32 0, i32 0
  %76 = load %struct.qxl_bo*, %struct.qxl_bo** %75, align 8
  %77 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @drm_gem_object_get(i32* %78)
  br label %80

80:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @WARN_ON(%struct.qxl_bo*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, %struct.qxl_device*, %struct.TYPE_6__*) #1

declare dso_local %struct.qxl_device* @qxl_bo_physical_address(%struct.qxl_device*, %struct.qxl_bo*, i32) #1

declare dso_local i32 @wait_for_io_cmd(%struct.qxl_device*, i32, i32) #1

declare dso_local i32 @drm_gem_object_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
