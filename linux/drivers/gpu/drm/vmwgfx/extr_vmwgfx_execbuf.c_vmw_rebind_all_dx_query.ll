; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_rebind_all_dx_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_rebind_all_dx_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.vmw_resource = type { i32, %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@cmd = common dso_local global %struct.TYPE_12__* null, align 8
@SVGA3dCmdDXBindAllQuery = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SVGA_3D_CMD_DX_BIND_ALL_QUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*)* @vmw_rebind_all_dx_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_rebind_all_dx_query(%struct.vmw_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_resource*, align 8
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.vmw_buffer_object*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %3, align 8
  %6 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %6, i32 0, i32 1
  %8 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  store %struct.vmw_private* %8, %struct.vmw_private** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cmd, align 8
  %10 = load i32, i32* @SVGA3dCmdDXBindAllQuery, align 4
  %11 = bitcast %struct.TYPE_12__* %9 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 4
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 4
  %16 = call i32 @VMW_DECLARE_CMD_VAR(i64 %13, i64 %15, i32 %10)
  %17 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %18 = call %struct.vmw_buffer_object* @vmw_context_get_dx_query_mob(%struct.vmw_resource* %17)
  store %struct.vmw_buffer_object* %18, %struct.vmw_buffer_object** %5, align 8
  %19 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %20 = icmp ne %struct.vmw_buffer_object* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %23 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %1
  store i32 0, i32* %2, align 4
  br label %65

27:                                               ; preds = %21
  %28 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %29 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %30 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_12__* @VMW_FIFO_RESERVE_DX(%struct.vmw_private* %28, i32 16, i32 %31)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** @cmd, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cmd, align 8
  %34 = icmp eq %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %65

38:                                               ; preds = %27
  %39 = load i32, i32* @SVGA_3D_CMD_DX_BIND_ALL_QUERY, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cmd, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cmd, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 8, i32* %45, align 4
  %46 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %47 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cmd, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %53 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cmd, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %61 = call i32 @vmw_fifo_commit(%struct.vmw_private* %60, i32 16)
  %62 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %63 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %64 = call i32 @vmw_context_bind_dx_query(%struct.vmw_resource* %62, %struct.vmw_buffer_object* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %38, %35, %26
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @VMW_DECLARE_CMD_VAR(i64, i64, i32) #1

declare dso_local %struct.vmw_buffer_object* @vmw_context_get_dx_query_mob(%struct.vmw_resource*) #1

declare dso_local %struct.TYPE_12__* @VMW_FIFO_RESERVE_DX(%struct.vmw_private*, i32, i32) #1

declare dso_local i32 @vmw_fifo_commit(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_context_bind_dx_query(%struct.vmw_resource*, %struct.vmw_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
