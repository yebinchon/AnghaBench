; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_va.c_vmw_user_stream_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_va.c_vmw_user_stream_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_resource = type { i32 }
%struct.vmw_stream = type { i32 }

@va_stream_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_user_stream_lookup(%struct.vmw_private* %0, %struct.ttm_object_file* %1, i32* %2, %struct.vmw_resource** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.ttm_object_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmw_resource**, align 8
  %10 = alloca %struct.vmw_stream*, align 8
  %11 = alloca %struct.vmw_resource*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.ttm_object_file* %1, %struct.ttm_object_file** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.vmw_resource** %3, %struct.vmw_resource*** %9, align 8
  %12 = load %struct.ttm_object_file*, %struct.ttm_object_file** %7, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.vmw_resource* @vmw_simple_resource_lookup(%struct.ttm_object_file* %12, i32 %14, i32* @va_stream_func)
  store %struct.vmw_resource* %15, %struct.vmw_resource** %11, align 8
  %16 = load %struct.vmw_resource*, %struct.vmw_resource** %11, align 8
  %17 = call i64 @IS_ERR(%struct.vmw_resource* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.vmw_resource*, %struct.vmw_resource** %11, align 8
  %21 = call i32 @PTR_ERR(%struct.vmw_resource* %20)
  store i32 %21, i32* %5, align 4
  br label %31

22:                                               ; preds = %4
  %23 = load %struct.vmw_resource*, %struct.vmw_resource** %11, align 8
  %24 = call %struct.vmw_stream* @vmw_stream(%struct.vmw_resource* %23)
  store %struct.vmw_stream* %24, %struct.vmw_stream** %10, align 8
  %25 = load %struct.vmw_stream*, %struct.vmw_stream** %10, align 8
  %26 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.vmw_resource*, %struct.vmw_resource** %11, align 8
  %30 = load %struct.vmw_resource**, %struct.vmw_resource*** %9, align 8
  store %struct.vmw_resource* %29, %struct.vmw_resource** %30, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.vmw_resource* @vmw_simple_resource_lookup(%struct.ttm_object_file*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.vmw_resource*) #1

declare dso_local i32 @PTR_ERR(%struct.vmw_resource*) #1

declare dso_local %struct.vmw_stream* @vmw_stream(%struct.vmw_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
