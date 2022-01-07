; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_submit_cmdbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_submit_cmdbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_cmdbuf_header = type { i32 }
%struct.vmw_sw_context = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SVGA3D_INVALID_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_cmdbuf_header*, i32, %struct.vmw_sw_context*)* @vmw_execbuf_submit_cmdbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_execbuf_submit_cmdbuf(%struct.vmw_private* %0, %struct.vmw_cmdbuf_header* %1, i32 %2, %struct.vmw_sw_context* %3) #0 {
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.vmw_cmdbuf_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmw_sw_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store %struct.vmw_cmdbuf_header* %1, %struct.vmw_cmdbuf_header** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vmw_sw_context* %3, %struct.vmw_sw_context** %8, align 8
  %11 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %8, align 8
  %12 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %8, align 8
  %17 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @SVGA3D_INVALID_ID, align 4
  br label %25

25:                                               ; preds = %23, %15
  %26 = phi i32 [ %22, %15 ], [ %24, %23 ]
  store i32 %26, i32* %9, align 4
  %27 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %28 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %6, align 8
  %33 = call i8* @vmw_cmdbuf_reserve(i32 %29, i32 %30, i32 %31, i32 0, %struct.vmw_cmdbuf_header* %32)
  store i8* %33, i8** %10, align 8
  %34 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %8, align 8
  %35 = call i32 @vmw_apply_relocations(%struct.vmw_sw_context* %34)
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %8, align 8
  %38 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %37, i32 0, i32 0
  %39 = call i32 @vmw_resource_relocations_apply(i8* %36, i32* %38)
  %40 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %8, align 8
  %41 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %40, i32 0, i32 0
  %42 = call i32 @vmw_resource_relocations_free(i32* %41)
  %43 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %44 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %6, align 8
  %48 = call i32 @vmw_cmdbuf_commit(i32 %45, i32 %46, %struct.vmw_cmdbuf_header* %47, i32 0)
  ret i32 0
}

declare dso_local i8* @vmw_cmdbuf_reserve(i32, i32, i32, i32, %struct.vmw_cmdbuf_header*) #1

declare dso_local i32 @vmw_apply_relocations(%struct.vmw_sw_context*) #1

declare dso_local i32 @vmw_resource_relocations_apply(i8*, i32*) #1

declare dso_local i32 @vmw_resource_relocations_free(i32*) #1

declare dso_local i32 @vmw_cmdbuf_commit(i32, i32, %struct.vmw_cmdbuf_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
