; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_ring_emit_cntxcntl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_ring_emit_cntxcntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@AMDGPU_HAVE_CTX_SWITCH = common dso_local global i32 0, align 4
@AMDGPU_PREAMBLE_IB_PRESENT = common dso_local global i32 0, align 4
@AMDGPU_PREAMBLE_IB_PRESENT_FIRST = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32)* @gfx_v8_ring_emit_cntxcntl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_ring_emit_cntxcntl(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @amdgpu_sriov_vf(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %13 = call i32 @gfx_v8_0_ring_emit_ce_meta(%struct.amdgpu_ring* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, -2147483648
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AMDGPU_HAVE_CTX_SWITCH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %23 = call i32 @gfx_v8_0_ring_emit_vgt_flush(%struct.amdgpu_ring* %22)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, 32769
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, 16777216
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, 65538
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @AMDGPU_PREAMBLE_IB_PRESENT, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, 268435456
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %21
  br label %47

38:                                               ; preds = %14
  %39 = load i32, i32* @AMDGPU_PREAMBLE_IB_PRESENT_FIRST, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, 268435456
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %37
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %49 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %50 = call i32 @PACKET3(i32 %49, i32 1)
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %56 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 0)
  ret void
}

declare dso_local i64 @amdgpu_sriov_vf(i32) #1

declare dso_local i32 @gfx_v8_0_ring_emit_ce_meta(%struct.amdgpu_ring*) #1

declare dso_local i32 @gfx_v8_0_ring_emit_vgt_flush(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
