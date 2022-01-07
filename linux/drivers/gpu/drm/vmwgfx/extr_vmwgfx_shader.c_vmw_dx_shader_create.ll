; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_dx_shader_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_dx_shader_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32, %struct.vmw_private* }
%struct.vmw_private = type { i32 }
%struct.vmw_dx_shader = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*)* @vmw_dx_shader_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_dx_shader_create(%struct.vmw_resource* %0) #0 {
  %2 = alloca %struct.vmw_resource*, align 8
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_dx_shader*, align 8
  %5 = alloca i32, align 4
  store %struct.vmw_resource* %0, %struct.vmw_resource** %2, align 8
  %6 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %7 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %6, i32 0, i32 1
  %8 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  store %struct.vmw_private* %8, %struct.vmw_private** %3, align 8
  %9 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %10 = call %struct.vmw_dx_shader* @vmw_res_to_dx_shader(%struct.vmw_resource* %9)
  store %struct.vmw_dx_shader* %10, %struct.vmw_dx_shader** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %4, align 8
  %12 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %19 = call i64 @vmw_resource_mob_attached(%struct.vmw_resource* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %23 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %26 = call i32 @vmw_dx_shader_unscrub(%struct.vmw_resource* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %28 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %30

30:                                               ; preds = %21, %1
  %31 = load %struct.vmw_dx_shader*, %struct.vmw_dx_shader** %4, align 8
  %32 = getelementptr inbounds %struct.vmw_dx_shader, %struct.vmw_dx_shader* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vmw_resource*, %struct.vmw_resource** %2, align 8
  %35 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.vmw_dx_shader* @vmw_res_to_dx_shader(%struct.vmw_resource*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @vmw_resource_mob_attached(%struct.vmw_resource*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_dx_shader_unscrub(%struct.vmw_resource*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
