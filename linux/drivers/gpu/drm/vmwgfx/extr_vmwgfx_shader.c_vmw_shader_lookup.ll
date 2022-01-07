; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_shader_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_shader.c_vmw_shader_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32 }
%struct.vmw_cmdbuf_res_manager = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@vmw_cmdbuf_res_shader = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmw_resource* @vmw_shader_lookup(%struct.vmw_cmdbuf_res_manager* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vmw_resource*, align 8
  %5 = alloca %struct.vmw_cmdbuf_res_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vmw_cmdbuf_res_manager* %0, %struct.vmw_cmdbuf_res_manager** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @vmw_shader_id_ok(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.vmw_resource* @ERR_PTR(i32 %14)
  store %struct.vmw_resource* %15, %struct.vmw_resource** %4, align 8
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.vmw_cmdbuf_res_manager*, %struct.vmw_cmdbuf_res_manager** %5, align 8
  %18 = load i32, i32* @vmw_cmdbuf_res_shader, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vmw_shader_key(i32 %19, i32 %20)
  %22 = call %struct.vmw_resource* @vmw_cmdbuf_res_lookup(%struct.vmw_cmdbuf_res_manager* %17, i32 %18, i32 %21)
  store %struct.vmw_resource* %22, %struct.vmw_resource** %4, align 8
  br label %23

23:                                               ; preds = %16, %12
  %24 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  ret %struct.vmw_resource* %24
}

declare dso_local i32 @vmw_shader_id_ok(i32, i32) #1

declare dso_local %struct.vmw_resource* @ERR_PTR(i32) #1

declare dso_local %struct.vmw_resource* @vmw_cmdbuf_res_lookup(%struct.vmw_cmdbuf_res_manager*, i32, i32) #1

declare dso_local i32 @vmw_shader_key(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
