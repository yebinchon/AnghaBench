; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_ring_emit_cntxcntl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_ring_emit_cntxcntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@AMDGPU_HAVE_CTX_SWITCH = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32)* @gfx_v7_ring_emit_cntxcntl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_ring_emit_cntxcntl(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, -2147483648
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AMDGPU_HAVE_CTX_SWITCH, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %14 = call i32 @gfx_v7_0_ring_emit_vgt_flush(%struct.amdgpu_ring* %13)
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, 32769
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, 16777216
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, 65538
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %23 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %24 = call i32 @PACKET3(i32 %23, i32 1)
  %25 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %22, i32 %24)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 %27)
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %30 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %29, i32 0)
  ret void
}

declare dso_local i32 @gfx_v7_0_ring_emit_vgt_flush(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
