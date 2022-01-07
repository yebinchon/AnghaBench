; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_alloc_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_alloc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.vmw_private = type { i32 }
%union.drm_vmw_alloc_dmabuf_arg = type { %struct.drm_vmw_dmabuf_rep }
%struct.drm_vmw_dmabuf_rep = type { i64, i8*, i32, i8* }
%struct.drm_vmw_alloc_dmabuf_req = type { i32 }
%struct.vmw_buffer_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_bo_alloc_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca %union.drm_vmw_alloc_dmabuf_arg*, align 8
  %10 = alloca %struct.drm_vmw_alloc_dmabuf_req*, align 8
  %11 = alloca %struct.drm_vmw_dmabuf_rep*, align 8
  %12 = alloca %struct.vmw_buffer_object*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %15)
  store %struct.vmw_private* %16, %struct.vmw_private** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %union.drm_vmw_alloc_dmabuf_arg*
  store %union.drm_vmw_alloc_dmabuf_arg* %18, %union.drm_vmw_alloc_dmabuf_arg** %9, align 8
  %19 = load %union.drm_vmw_alloc_dmabuf_arg*, %union.drm_vmw_alloc_dmabuf_arg** %9, align 8
  %20 = bitcast %union.drm_vmw_alloc_dmabuf_arg* %19 to %struct.drm_vmw_alloc_dmabuf_req*
  store %struct.drm_vmw_alloc_dmabuf_req* %20, %struct.drm_vmw_alloc_dmabuf_req** %10, align 8
  %21 = load %union.drm_vmw_alloc_dmabuf_arg*, %union.drm_vmw_alloc_dmabuf_arg** %9, align 8
  %22 = bitcast %union.drm_vmw_alloc_dmabuf_arg* %21 to %struct.drm_vmw_dmabuf_rep*
  store %struct.drm_vmw_dmabuf_rep* %22, %struct.drm_vmw_dmabuf_rep** %11, align 8
  %23 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %24 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %23, i32 0, i32 0
  %25 = call i32 @ttm_read_lock(i32* %24, i32 1)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %4, align 4
  br label %71

33:                                               ; preds = %3
  %34 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %35 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %36 = call %struct.TYPE_6__* @vmw_fpriv(%struct.drm_file* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_vmw_alloc_dmabuf_req*, %struct.drm_vmw_alloc_dmabuf_req** %10, align 8
  %40 = getelementptr inbounds %struct.drm_vmw_alloc_dmabuf_req, %struct.drm_vmw_alloc_dmabuf_req* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vmw_user_bo_alloc(%struct.vmw_private* %34, i32 %38, i32 %41, i32 0, i8** %13, %struct.vmw_buffer_object** %12, i32* null)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %66

49:                                               ; preds = %33
  %50 = load i8*, i8** %13, align 8
  %51 = load %struct.drm_vmw_dmabuf_rep*, %struct.drm_vmw_dmabuf_rep** %11, align 8
  %52 = getelementptr inbounds %struct.drm_vmw_dmabuf_rep, %struct.drm_vmw_dmabuf_rep* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %12, align 8
  %54 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @drm_vma_node_offset_addr(i32* %56)
  %58 = load %struct.drm_vmw_dmabuf_rep*, %struct.drm_vmw_dmabuf_rep** %11, align 8
  %59 = getelementptr inbounds %struct.drm_vmw_dmabuf_rep, %struct.drm_vmw_dmabuf_rep* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load %struct.drm_vmw_dmabuf_rep*, %struct.drm_vmw_dmabuf_rep** %11, align 8
  %62 = getelementptr inbounds %struct.drm_vmw_dmabuf_rep, %struct.drm_vmw_dmabuf_rep* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.drm_vmw_dmabuf_rep*, %struct.drm_vmw_dmabuf_rep** %11, align 8
  %64 = getelementptr inbounds %struct.drm_vmw_dmabuf_rep, %struct.drm_vmw_dmabuf_rep* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %12)
  br label %66

66:                                               ; preds = %49, %48
  %67 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %68 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %67, i32 0, i32 0
  %69 = call i32 @ttm_read_unlock(i32* %68)
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %31
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local i32 @ttm_read_lock(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_user_bo_alloc(%struct.vmw_private*, i32, i32, i32, i8**, %struct.vmw_buffer_object**, i32*) #1

declare dso_local %struct.TYPE_6__* @vmw_fpriv(%struct.drm_file*) #1

declare dso_local i32 @drm_vma_node_offset_addr(i32*) #1

declare dso_local i32 @vmw_bo_unreference(%struct.vmw_buffer_object**) #1

declare dso_local i32 @ttm_read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
