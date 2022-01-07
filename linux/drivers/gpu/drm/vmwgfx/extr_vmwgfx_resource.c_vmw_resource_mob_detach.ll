; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_mob_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_mob_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32, i32, %struct.vmw_buffer_object* }
%struct.vmw_buffer_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_resource_mob_detach(%struct.vmw_resource* %0) #0 {
  %2 = alloca %struct.vmw_resource*, align 8
  %3 = alloca %struct.vmw_buffer_object*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %2, align 8
  %4 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %5 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %4, i32 0, i32 2
  %6 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  store %struct.vmw_buffer_object* %6, %struct.vmw_buffer_object** %3, align 8
  %7 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dma_resv_assert_held(i32 %11)
  %13 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %14 = call i64 @vmw_resource_mob_attached(%struct.vmw_resource* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %18 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %17, i32 0, i32 1
  %19 = call i32 @list_del_init(i32* %18)
  %20 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %21 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %22 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @vmw_bo_prio_del(%struct.vmw_buffer_object* %20, i32 %23)
  br label %25

25:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i64 @vmw_resource_mob_attached(%struct.vmw_resource*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @vmw_bo_prio_del(%struct.vmw_buffer_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
