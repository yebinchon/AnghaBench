; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_emit_dirty_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_emit_dirty_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_ctx_binding_state = type { %struct.vmw_dx_shader_bindings* }
%struct.vmw_dx_shader_bindings = type { i32 }

@SVGA3D_NUM_SHADERTYPE_DX10 = common dso_local global i64 0, align 8
@VMW_BINDING_PS_SR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_ctx_binding_state*)* @vmw_binding_emit_dirty_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_binding_emit_dirty_ps(%struct.vmw_ctx_binding_state* %0) #0 {
  %2 = alloca %struct.vmw_ctx_binding_state*, align 8
  %3 = alloca %struct.vmw_dx_shader_bindings*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vmw_ctx_binding_state* %0, %struct.vmw_ctx_binding_state** %2, align 8
  %6 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %2, align 8
  %7 = getelementptr inbounds %struct.vmw_ctx_binding_state, %struct.vmw_ctx_binding_state* %6, i32 0, i32 0
  %8 = load %struct.vmw_dx_shader_bindings*, %struct.vmw_dx_shader_bindings** %7, align 8
  %9 = getelementptr inbounds %struct.vmw_dx_shader_bindings, %struct.vmw_dx_shader_bindings* %8, i64 0
  store %struct.vmw_dx_shader_bindings* %9, %struct.vmw_dx_shader_bindings** %3, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %33, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @SVGA3D_NUM_SHADERTYPE_DX10, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load i32, i32* @VMW_BINDING_PS_SR_BIT, align 4
  %16 = load %struct.vmw_dx_shader_bindings*, %struct.vmw_dx_shader_bindings** %3, align 8
  %17 = getelementptr inbounds %struct.vmw_dx_shader_bindings, %struct.vmw_dx_shader_bindings* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %33

21:                                               ; preds = %14
  %22 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %2, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @vmw_emit_set_sr(%struct.vmw_ctx_binding_state* %22, i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %38

28:                                               ; preds = %21
  %29 = load i32, i32* @VMW_BINDING_PS_SR_BIT, align 4
  %30 = load %struct.vmw_dx_shader_bindings*, %struct.vmw_dx_shader_bindings** %3, align 8
  %31 = getelementptr inbounds %struct.vmw_dx_shader_bindings, %struct.vmw_dx_shader_bindings* %30, i32 0, i32 0
  %32 = call i32 @__clear_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %20
  %34 = load i64, i64* %4, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %4, align 8
  %36 = load %struct.vmw_dx_shader_bindings*, %struct.vmw_dx_shader_bindings** %3, align 8
  %37 = getelementptr inbounds %struct.vmw_dx_shader_bindings, %struct.vmw_dx_shader_bindings* %36, i32 1
  store %struct.vmw_dx_shader_bindings* %37, %struct.vmw_dx_shader_bindings** %3, align 8
  br label %10

38:                                               ; preds = %27, %10
  ret i32 0
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @vmw_emit_set_sr(%struct.vmw_ctx_binding_state*, i64) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
