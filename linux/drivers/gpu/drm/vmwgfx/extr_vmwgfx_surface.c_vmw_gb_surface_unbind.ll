; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_gb_surface_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_gb_surface_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32, %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.ttm_validate_buffer = type { %struct.ttm_buffer_object* }
%struct.ttm_buffer_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.vmw_fence_obj = type { i32 }
%struct.anon = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.anon.0 = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.anon.1 = type { %struct.TYPE_8__, %struct.TYPE_7__ }

@VMW_PL_MOB = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@SVGA_3D_CMD_READBACK_GB_SURFACE = common dso_local global i32 0, align 4
@SVGA_3D_CMD_INVALIDATE_GB_SURFACE = common dso_local global i32 0, align 4
@SVGA_3D_CMD_BIND_GB_SURFACE = common dso_local global i32 0, align 4
@SVGA3D_INVALID_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)* @vmw_gb_surface_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_gb_surface_unbind(%struct.vmw_resource* %0, i32 %1, %struct.ttm_validate_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_validate_buffer*, align 8
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca %struct.ttm_buffer_object*, align 8
  %10 = alloca %struct.vmw_fence_obj*, align 8
  %11 = alloca %struct.anon*, align 8
  %12 = alloca %struct.anon.0*, align 8
  %13 = alloca %struct.anon.1*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ttm_validate_buffer* %2, %struct.ttm_validate_buffer** %7, align 8
  %16 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %17 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %16, i32 0, i32 1
  %18 = load %struct.vmw_private*, %struct.vmw_private** %17, align 8
  store %struct.vmw_private* %18, %struct.vmw_private** %8, align 8
  %19 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %19, i32 0, i32 0
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %20, align 8
  store %struct.ttm_buffer_object* %21, %struct.ttm_buffer_object** %9, align 8
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %23 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VMW_PL_MOB, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i64 16, i64 16
  %34 = add i64 16, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %14, align 4
  %36 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32* @VMW_FIFO_RESERVE(%struct.vmw_private* %36, i32 %37)
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = icmp ne i32* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %129

48:                                               ; preds = %3
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load i32*, i32** %15, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = bitcast i8* %53 to %struct.anon*
  store %struct.anon* %54, %struct.anon** %11, align 8
  %55 = load i32, i32* @SVGA_3D_CMD_READBACK_GB_SURFACE, align 4
  %56 = load %struct.anon*, %struct.anon** %11, align 8
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.anon*, %struct.anon** %11, align 8
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 8, i32* %61, align 4
  %62 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %63 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.anon*, %struct.anon** %11, align 8
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.anon*, %struct.anon** %11, align 8
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i64 1
  %70 = bitcast %struct.anon* %69 to i8*
  %71 = bitcast i8* %70 to %struct.anon.1*
  store %struct.anon.1* %71, %struct.anon.1** %13, align 8
  br label %93

72:                                               ; preds = %48
  %73 = load i32*, i32** %15, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = bitcast i8* %74 to %struct.anon.0*
  store %struct.anon.0* %75, %struct.anon.0** %12, align 8
  %76 = load i32, i32* @SVGA_3D_CMD_INVALIDATE_GB_SURFACE, align 4
  %77 = load %struct.anon.0*, %struct.anon.0** %12, align 8
  %78 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.anon.0*, %struct.anon.0** %12, align 8
  %81 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 8, i32* %82, align 4
  %83 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %84 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.anon.0*, %struct.anon.0** %12, align 8
  %87 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.anon.0*, %struct.anon.0** %12, align 8
  %90 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %89, i64 1
  %91 = bitcast %struct.anon.0* %90 to i8*
  %92 = bitcast i8* %91 to %struct.anon.1*
  store %struct.anon.1* %92, %struct.anon.1** %13, align 8
  br label %93

93:                                               ; preds = %72, %51
  %94 = load i32, i32* @SVGA_3D_CMD_BIND_GB_SURFACE, align 4
  %95 = load %struct.anon.1*, %struct.anon.1** %13, align 8
  %96 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.anon.1*, %struct.anon.1** %13, align 8
  %99 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 8, i32* %100, align 4
  %101 = load %struct.vmw_resource*, %struct.vmw_resource** %5, align 8
  %102 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.anon.1*, %struct.anon.1** %13, align 8
  %105 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @SVGA3D_INVALID_ID, align 4
  %108 = load %struct.anon.1*, %struct.anon.1** %13, align 8
  %109 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @vmw_fifo_commit(%struct.vmw_private* %111, i32 %112)
  %114 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %115 = call i32 @vmw_execbuf_fence_commands(i32* null, %struct.vmw_private* %114, %struct.vmw_fence_obj** %10, i32* null)
  %116 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %7, align 8
  %117 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %116, i32 0, i32 0
  %118 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %117, align 8
  %119 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %10, align 8
  %120 = call i32 @vmw_bo_fence_single(%struct.ttm_buffer_object* %118, %struct.vmw_fence_obj* %119)
  %121 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %10, align 8
  %122 = icmp ne %struct.vmw_fence_obj* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i64 @likely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %93
  %127 = call i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj** %10)
  br label %128

128:                                              ; preds = %126, %93
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %45
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @VMW_FIFO_RESERVE(%struct.vmw_private*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_fifo_commit(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_execbuf_fence_commands(i32*, %struct.vmw_private*, %struct.vmw_fence_obj**, i32*) #1

declare dso_local i32 @vmw_bo_fence_single(%struct.ttm_buffer_object*, %struct.vmw_fence_obj*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vmw_fence_obj_unreference(%struct.vmw_fence_obj**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
