; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_wave_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_wave_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmSQ_IND_INDEX = common dso_local global i32 0, align 4
@SQ_IND_INDEX__WAVE_ID__SHIFT = common dso_local global i32 0, align 4
@SQ_IND_INDEX__SIMD_ID__SHIFT = common dso_local global i32 0, align 4
@SQ_IND_INDEX__INDEX__SHIFT = common dso_local global i32 0, align 4
@SQ_IND_INDEX__THREAD_ID__SHIFT = common dso_local global i32 0, align 4
@SQ_IND_INDEX__FORCE_READ_MASK = common dso_local global i32 0, align 4
@SQ_IND_INDEX__AUTO_INCR_MASK = common dso_local global i32 0, align 4
@mmSQ_IND_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32, i32, i32, i32*)* @wave_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wave_read_regs(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %15 = load i32, i32* @mmSQ_IND_INDEX, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @SQ_IND_INDEX__WAVE_ID__SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SQ_IND_INDEX__SIMD_ID__SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @SQ_IND_INDEX__INDEX__SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @SQ_IND_INDEX__THREAD_ID__SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  %31 = load i32, i32* @SQ_IND_INDEX__FORCE_READ_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SQ_IND_INDEX__AUTO_INCR_MASK, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @WREG32(i32 %15, i32 %34)
  br label %36

36:                                               ; preds = %40, %7
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %13, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @mmSQ_IND_DATA, align 4
  %42 = call i32 @RREG32(i32 %41)
  %43 = load i32*, i32** %14, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %14, align 8
  store i32 %42, i32* %43, align 4
  br label %36

45:                                               ; preds = %36
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
