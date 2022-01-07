; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_build_asserts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_build_asserts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVGA3D_NUM_SHADERTYPE_DX10 = common dso_local global i32 0, align 4
@SVGA3D_MAX_SIMULTANEOUS_RENDER_TARGETS = common dso_local global i64 0, align 8
@SVGA3D_RT_MAX = common dso_local global i64 0, align 8
@VMW_MAX_VIEW_BINDINGS = common dso_local global i64 0, align 8
@SVGA3D_DX_MAX_SRVIEWS = common dso_local global i64 0, align 8
@SVGA3D_DX_MAX_CONSTBUFFERS = common dso_local global i64 0, align 8
@SVGA3D_DX_MAX_SOTARGETS = common dso_local global i32 0, align 4
@SVGA3D_DX_MAX_VERTEXBUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vmw_binding_build_asserts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_binding_build_asserts() #0 {
  %1 = load i32, i32* @SVGA3D_NUM_SHADERTYPE_DX10, align 4
  %2 = icmp ne i32 %1, 3
  %3 = zext i1 %2 to i32
  %4 = call i32 @BUILD_BUG_ON(i32 %3)
  %5 = load i64, i64* @SVGA3D_MAX_SIMULTANEOUS_RENDER_TARGETS, align 8
  %6 = load i64, i64* @SVGA3D_RT_MAX, align 8
  %7 = icmp sgt i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUILD_BUG_ON(i32 %8)
  %10 = call i32 @BUILD_BUG_ON(i32 0)
  %11 = load i64, i64* @VMW_MAX_VIEW_BINDINGS, align 8
  %12 = load i64, i64* @SVGA3D_RT_MAX, align 8
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load i64, i64* @VMW_MAX_VIEW_BINDINGS, align 8
  %17 = load i64, i64* @SVGA3D_DX_MAX_SRVIEWS, align 8
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUILD_BUG_ON(i32 %19)
  %21 = load i64, i64* @VMW_MAX_VIEW_BINDINGS, align 8
  %22 = load i64, i64* @SVGA3D_DX_MAX_CONSTBUFFERS, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUILD_BUG_ON(i32 %24)
  %26 = load i32, i32* @SVGA3D_DX_MAX_SOTARGETS, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = load i64, i64* @VMW_MAX_VIEW_BINDINGS, align 8
  %30 = mul i64 %29, 4
  %31 = icmp ugt i64 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUILD_BUG_ON(i32 %32)
  %34 = load i32, i32* @SVGA3D_DX_MAX_VERTEXBUFFERS, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = load i64, i64* @VMW_MAX_VIEW_BINDINGS, align 8
  %38 = mul i64 %37, 4
  %39 = icmp ugt i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUILD_BUG_ON(i32 %40)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
