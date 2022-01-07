; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_mob_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_mob_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32, i32, %struct.TYPE_6__*, i64, %struct.vmw_buffer_object* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.vmw_buffer_object = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_resource_mob_attach(%struct.vmw_resource* %0) #0 {
  %2 = alloca %struct.vmw_resource*, align 8
  %3 = alloca %struct.vmw_buffer_object*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %2, align 8
  %4 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %5 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %4, i32 0, i32 4
  %6 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  store %struct.vmw_buffer_object* %6, %struct.vmw_buffer_object** %3, align 8
  %7 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %8 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %7, i32 0, i32 4
  %9 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %10 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dma_resv_assert_held(i32 %13)
  %15 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %16 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %21 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %27 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i32 [ %24, %19 ], [ %30, %25 ]
  %33 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %34 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %36 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %35, i32 0, i32 1
  %37 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %38 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %37, i32 0, i32 0
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %41 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %42 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vmw_bo_prio_add(%struct.vmw_buffer_object* %40, i32 %43)
  ret void
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @vmw_bo_prio_add(%struct.vmw_buffer_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
