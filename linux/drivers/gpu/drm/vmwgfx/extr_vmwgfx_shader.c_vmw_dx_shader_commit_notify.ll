; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_dx_shader_commit_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_dx_shader_commit_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32, %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.vmw_dx_shader = type { i32, i32, i32, i32 }

@VMW_CMDBUF_RES_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_resource*, i32)* @vmw_dx_shader_commit_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_dx_shader_commit_notify(%struct.vmw_resource* %0, i32 %1) #0 {
  %3 = alloca %struct.vmw_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_dx_shader*, align 8
  %6 = alloca %struct.vmw_private*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %8 = call %struct.vmw_dx_shader* @vmw_res_to_dx_shader(%struct.vmw_resource* %7)
  store %struct.vmw_dx_shader* %8, %struct.vmw_dx_shader** %5, align 8
  %9 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %10 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %9, i32 0, i32 1
  %11 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  store %struct.vmw_private* %11, %struct.vmw_private** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @VMW_CMDBUF_RES_ADD, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %17 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %5, align 8
  %20 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %5, align 8
  %23 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %22, i32 0, i32 2
  %24 = call i32 @vmw_cotable_add_resource(i32 %21, i32* %23)
  %25 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %5, align 8
  %26 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %5, align 8
  %28 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %31 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %33 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %49

35:                                               ; preds = %2
  %36 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %37 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %5, align 8
  %40 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %39, i32 0, i32 2
  %41 = call i32 @list_del_init(i32* %40)
  %42 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %5, align 8
  %43 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %45 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %47 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  br label %49

49:                                               ; preds = %35, %15
  ret void
}

declare dso_local %struct.vmw_dx_shader* @vmw_res_to_dx_shader(%struct.vmw_resource*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_cotable_add_resource(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
