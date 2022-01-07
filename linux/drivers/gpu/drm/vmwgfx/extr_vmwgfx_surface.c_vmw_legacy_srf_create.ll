; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_legacy_srf_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_legacy_srf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32, i64, %struct.vmw_private* }
%struct.vmw_private = type { i64, i64 }
%struct.vmw_surface = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate a surface id.\0A\00", align 1
@SVGA3D_MAX_SURFACE_IDS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*)* @vmw_legacy_srf_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_legacy_srf_create(%struct.vmw_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_resource*, align 8
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.vmw_surface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.vmw_resource* %0, %struct.vmw_resource** %3, align 8
  %9 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %10 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %9, i32 0, i32 2
  %11 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  store %struct.vmw_private* %11, %struct.vmw_private** %4, align 8
  %12 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %13 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

20:                                               ; preds = %1
  %21 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %22 = call %struct.vmw_surface* @vmw_res_to_srf(%struct.vmw_resource* %21)
  store %struct.vmw_surface* %22, %struct.vmw_surface** %5, align 8
  %23 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %24 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %27 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %31 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %98

40:                                               ; preds = %20
  %41 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %42 = call i32 @vmw_resource_alloc_id(%struct.vmw_resource* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %96

50:                                               ; preds = %40
  %51 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %52 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SVGA3D_MAX_SURFACE_IDS, align 4
  %55 = icmp sge i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %93

62:                                               ; preds = %50
  %63 = load %struct.vmw_surface*, %struct.vmw_surface** %5, align 8
  %64 = call i32 @vmw_surface_define_size(%struct.vmw_surface* %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32* @VMW_FIFO_RESERVE(%struct.vmw_private* %65, i32 %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %93

77:                                               ; preds = %62
  %78 = load %struct.vmw_surface*, %struct.vmw_surface** %5, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @vmw_surface_define_encode(%struct.vmw_surface* %78, i32* %79)
  %81 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @vmw_fifo_commit(%struct.vmw_private* %81, i32 %82)
  %84 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %85 = call i32 @vmw_fifo_resource_inc(%struct.vmw_private* %84)
  %86 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %87 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %90 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  store i32 0, i32* %2, align 4
  br label %98

93:                                               ; preds = %74, %59
  %94 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %95 = call i32 @vmw_resource_release_id(%struct.vmw_resource* %94)
  br label %96

96:                                               ; preds = %93, %48
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %77, %37, %19
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.vmw_surface* @vmw_res_to_srf(%struct.vmw_resource*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_resource_alloc_id(%struct.vmw_resource*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_surface_define_size(%struct.vmw_surface*) #1

declare dso_local i32* @VMW_FIFO_RESERVE(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_surface_define_encode(%struct.vmw_surface*, i32*) #1

declare dso_local i32 @vmw_fifo_commit(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_fifo_resource_inc(%struct.vmw_private*) #1

declare dso_local i32 @vmw_resource_release_id(%struct.vmw_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
