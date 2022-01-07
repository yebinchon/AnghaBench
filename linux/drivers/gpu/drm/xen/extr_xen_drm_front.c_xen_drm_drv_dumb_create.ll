; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_drv_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_drv_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { %struct.xen_drm_front_drm_info* }
%struct.xen_drm_front_drm_info = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to create dumb buffer: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)* @xen_drm_drv_dumb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_drm_drv_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.xen_drm_front_drm_info*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %12, align 8
  store %struct.xen_drm_front_drm_info* %13, %struct.xen_drm_front_drm_info** %8, align 8
  %14 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %15 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %18 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = call i32 @DIV_ROUND_UP(i32 %20, i32 8)
  %22 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %25 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %28 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %32 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %34 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %35 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.drm_gem_object* @xen_drm_front_gem_create(%struct.drm_device* %33, i32 %36)
  store %struct.drm_gem_object* %37, %struct.drm_gem_object** %9, align 8
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %39 = call i64 @IS_ERR_OR_NULL(%struct.drm_gem_object* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %43 = call i32 @PTR_ERR(%struct.drm_gem_object* %42)
  store i32 %43, i32* %10, align 4
  br label %90

44:                                               ; preds = %3
  %45 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %8, align 8
  %46 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %49 = call i32 @xen_drm_front_dbuf_to_cookie(%struct.drm_gem_object* %48)
  %50 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %51 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %54 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %57 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %60 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %63 = call i32 @xen_drm_front_gem_get_pages(%struct.drm_gem_object* %62)
  %64 = call i32 @xen_drm_front_dbuf_create(i32 %47, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %44
  br label %87

68:                                               ; preds = %44
  %69 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %70 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %71 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %72 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %71, i32 0, i32 5
  %73 = call i32 @drm_gem_handle_create(%struct.drm_file* %69, %struct.drm_gem_object* %70, i32* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %80

77:                                               ; preds = %68
  %78 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %79 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %78)
  store i32 0, i32* %4, align 4
  br label %94

80:                                               ; preds = %76
  %81 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %8, align 8
  %82 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %85 = call i32 @xen_drm_front_dbuf_to_cookie(%struct.drm_gem_object* %84)
  %86 = call i32 @xen_drm_front_dbuf_destroy(i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %80, %67
  %88 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %89 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %88)
  br label %90

90:                                               ; preds = %87, %41
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %77
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.drm_gem_object* @xen_drm_front_gem_create(%struct.drm_device*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.drm_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @xen_drm_front_dbuf_create(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xen_drm_front_dbuf_to_cookie(%struct.drm_gem_object*) #1

declare dso_local i32 @xen_drm_front_gem_get_pages(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @xen_drm_front_dbuf_destroy(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
