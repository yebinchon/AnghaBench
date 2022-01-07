; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_select_se_sh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_select_se_sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@GRBM_GFX_INDEX = common dso_local global i32 0, align 4
@INSTANCE_BROADCAST_WRITES = common dso_local global i32 0, align 4
@INSTANCE_INDEX = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__SH_INDEX__SHIFT = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__SE_INDEX__SHIFT = common dso_local global i32 0, align 4
@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32)* @gfx_v6_0_select_se_sh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_select_se_sh(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %14 = load i32, i32* @INSTANCE_BROADCAST_WRITES, align 4
  %15 = call i32 @REG_SET_FIELD(i32 0, i32 %13, i32 %14, i32 1)
  store i32 %15, i32* %9, align 4
  br label %21

16:                                               ; preds = %4
  %17 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %18 = load i32, i32* @INSTANCE_INDEX, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @REG_SET_FIELD(i32 0, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK, align 4
  %29 = load i32, i32* @GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %67

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* @GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @GRBM_GFX_INDEX__SH_INDEX__SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %66

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* @GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @GRBM_GFX_INDEX__SE_INDEX__SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %65

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @GRBM_GFX_INDEX__SH_INDEX__SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @GRBM_GFX_INDEX__SE_INDEX__SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %55, %47
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66, %27
  %68 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @WREG32(i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
