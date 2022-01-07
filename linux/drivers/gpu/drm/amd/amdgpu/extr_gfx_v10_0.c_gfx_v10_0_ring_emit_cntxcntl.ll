; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_cntxcntl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_cntxcntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@amdgpu_mcbp = common dso_local global i64 0, align 8
@AMDGPU_IB_PREEMPTED = common dso_local global i32 0, align 4
@AMDGPU_HAVE_CTX_SWITCH = common dso_local global i32 0, align 4
@AMDGPU_PREAMBLE_IB_PRESENT = common dso_local global i32 0, align 4
@AMDGPU_PREAMBLE_IB_PRESENT_FIRST = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32)* @gfx_v10_0_ring_emit_cntxcntl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_ring_emit_cntxcntl(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* @amdgpu_mcbp, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AMDGPU_IB_PREEMPTED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = call i32 @gfx_v10_0_ring_emit_ce_meta(%struct.amdgpu_ring* %9, i32 %15)
  br label %17

17:                                               ; preds = %8, %2
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %19 = call i32 @gfx_v10_0_ring_emit_tmz(%struct.amdgpu_ring* %18, i32 1)
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, -2147483648
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AMDGPU_HAVE_CTX_SWITCH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 32769
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, 16777216
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, 65538
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @AMDGPU_PREAMBLE_IB_PRESENT, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, 268435456
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %26
  br label %50

41:                                               ; preds = %17
  %42 = load i32, i32* @AMDGPU_PREAMBLE_IB_PRESENT_FIRST, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, 268435456
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %52 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %53 = call i32 @PACKET3(i32 %52, i32 1)
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 %56)
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %58, i32 0)
  ret void
}

declare dso_local i32 @gfx_v10_0_ring_emit_ce_meta(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @gfx_v10_0_ring_emit_tmz(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
