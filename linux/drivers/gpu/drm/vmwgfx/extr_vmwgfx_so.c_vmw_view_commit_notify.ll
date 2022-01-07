; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_so.c_vmw_view_commit_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_so.c_vmw_view_commit_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32, %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.vmw_view = type { i32, i32, i32, i32, i32, i32 }
%struct.vmw_surface = type { i32 }

@VMW_CMDBUF_RES_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_resource*, i32)* @vmw_view_commit_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_view_commit_notify(%struct.vmw_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.vmw_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_view*, align 8
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_surface*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %9 = call %struct.vmw_view* @vmw_view(%struct.vmw_resource* %8)
  store %struct.vmw_view* %9, %struct.vmw_view** %5, align 8
  %10 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %10, i32 0, i32 1
  %12 = load %struct.vmw_private*, %struct.vmw_private** %11, align 8
  store %struct.vmw_private* %12, %struct.vmw_private** %6, align 8
  %13 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %14 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @VMW_CMDBUF_RES_ADD, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load %struct.vmw_view*, %struct.vmw_view** %5, align 8
  %21 = getelementptr inbounds %struct.vmw_view, %struct.vmw_view* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.vmw_surface* @vmw_res_to_srf(i32 %22)
  store %struct.vmw_surface* %23, %struct.vmw_surface** %7, align 8
  %24 = load %struct.vmw_view*, %struct.vmw_view** %5, align 8
  %25 = getelementptr inbounds %struct.vmw_view, %struct.vmw_view* %24, i32 0, i32 2
  %26 = load %struct.vmw_surface*, %struct.vmw_surface** %7, align 8
  %27 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %26, i32 0, i32 0
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  %29 = load %struct.vmw_view*, %struct.vmw_view** %5, align 8
  %30 = getelementptr inbounds %struct.vmw_view, %struct.vmw_view* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vmw_view*, %struct.vmw_view** %5, align 8
  %33 = getelementptr inbounds %struct.vmw_view, %struct.vmw_view* %32, i32 0, i32 3
  %34 = call i32 @vmw_cotable_add_resource(i32 %31, i32* %33)
  %35 = load %struct.vmw_view*, %struct.vmw_view** %5, align 8
  %36 = getelementptr inbounds %struct.vmw_view, %struct.vmw_view* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.vmw_view*, %struct.vmw_view** %5, align 8
  %38 = getelementptr inbounds %struct.vmw_view, %struct.vmw_view* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %41 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %53

42:                                               ; preds = %2
  %43 = load %struct.vmw_view*, %struct.vmw_view** %5, align 8
  %44 = getelementptr inbounds %struct.vmw_view, %struct.vmw_view* %43, i32 0, i32 3
  %45 = call i32 @list_del_init(i32* %44)
  %46 = load %struct.vmw_view*, %struct.vmw_view** %5, align 8
  %47 = getelementptr inbounds %struct.vmw_view, %struct.vmw_view* %46, i32 0, i32 2
  %48 = call i32 @list_del_init(i32* %47)
  %49 = load %struct.vmw_view*, %struct.vmw_view** %5, align 8
  %50 = getelementptr inbounds %struct.vmw_view, %struct.vmw_view* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %52 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  br label %53

53:                                               ; preds = %42, %19
  %54 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %55 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  ret void
}

declare dso_local %struct.vmw_view* @vmw_view(%struct.vmw_resource*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vmw_surface* @vmw_res_to_srf(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @vmw_cotable_add_resource(i32, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
