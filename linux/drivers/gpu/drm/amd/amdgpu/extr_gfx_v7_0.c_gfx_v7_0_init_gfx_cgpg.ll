; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_init_gfx_cgpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_init_gfx_cgpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32, i32, i64 }

@mmRLC_GPM_SCRATCH_ADDR = common dso_local global i32 0, align 4
@RLC_CLEAR_STATE_DESCRIPTOR_OFFSET = common dso_local global i32 0, align 4
@mmRLC_GPM_SCRATCH_DATA = common dso_local global i32 0, align 4
@RLC_SAVE_AND_RESTORE_STARTING_OFFSET = common dso_local global i32 0, align 4
@mmRLC_PG_CNTL = common dso_local global i32 0, align 4
@RLC_PG_CNTL__GFX_POWER_GATING_SRC_MASK = common dso_local global i32 0, align 4
@mmRLC_SAVE_AND_RESTORE_BASE = common dso_local global i32 0, align 4
@mmRLC_JUMP_TABLE_RESTORE = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT_MASK = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT = common dso_local global i32 0, align 4
@mmRLC_PG_DELAY = common dso_local global i32 0, align 4
@mmRLC_PG_DELAY_2 = common dso_local global i32 0, align 4
@mmRLC_AUTO_PG_CTRL = common dso_local global i32 0, align 4
@RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK = common dso_local global i32 0, align 4
@RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v7_0_init_gfx_cgpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_init_gfx_cgpg(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load i32, i32* @mmRLC_GPM_SCRATCH_ADDR, align 4
  %14 = load i32, i32* @RLC_CLEAR_STATE_DESCRIPTOR_OFFSET, align 4
  %15 = call i32 @WREG32(i32 %13, i32 %14)
  %16 = load i32, i32* @mmRLC_GPM_SCRATCH_DATA, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @upper_32_bits(i32 %21)
  %23 = call i32 @WREG32(i32 %16, i32 %22)
  %24 = load i32, i32* @mmRLC_GPM_SCRATCH_DATA, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @lower_32_bits(i32 %29)
  %31 = call i32 @WREG32(i32 %24, i32 %30)
  %32 = load i32, i32* @mmRLC_GPM_SCRATCH_DATA, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @WREG32(i32 %32, i32 %37)
  br label %53

39:                                               ; preds = %1
  %40 = load i32, i32* @mmRLC_GPM_SCRATCH_ADDR, align 4
  %41 = load i32, i32* @RLC_CLEAR_STATE_DESCRIPTOR_OFFSET, align 4
  %42 = call i32 @WREG32(i32 %40, i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %49, %39
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* @mmRLC_GPM_SCRATCH_DATA, align 4
  %48 = call i32 @WREG32(i32 %47, i32 0)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %43

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %12
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %53
  %61 = load i32, i32* @mmRLC_GPM_SCRATCH_ADDR, align 4
  %62 = load i32, i32* @RLC_SAVE_AND_RESTORE_STARTING_OFFSET, align 4
  %63 = call i32 @WREG32(i32 %61, i32 %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %84, %60
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %65, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %64
  %73 = load i32, i32* @mmRLC_GPM_SCRATCH_DATA, align 4
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @WREG32(i32 %73, i32 %82)
  br label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %64

87:                                               ; preds = %64
  br label %88

88:                                               ; preds = %87, %53
  %89 = load i32, i32* @mmRLC_PG_CNTL, align 4
  %90 = call i32 @RREG32(i32 %89)
  store i32 %90, i32* %3, align 4
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @RLC_PG_CNTL__GFX_POWER_GATING_SRC_MASK, align 4
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i32, i32* @mmRLC_PG_CNTL, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @WREG32(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %88
  %102 = load i32, i32* @mmRLC_SAVE_AND_RESTORE_BASE, align 4
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 8
  %109 = call i32 @WREG32(i32 %102, i32 %108)
  %110 = load i32, i32* @mmRLC_JUMP_TABLE_RESTORE, align 4
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = ashr i32 %115, 8
  %117 = call i32 @WREG32(i32 %110, i32 %116)
  %118 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %119 = call i32 @RREG32(i32 %118)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %3, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT, align 4
  %125 = shl i32 96, %124
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @WREG32(i32 %128, i32 %129)
  store i32 269488144, i32* %3, align 4
  %131 = load i32, i32* @mmRLC_PG_DELAY, align 4
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @WREG32(i32 %131, i32 %132)
  %134 = load i32, i32* @mmRLC_PG_DELAY_2, align 4
  %135 = call i32 @RREG32(i32 %134)
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* %3, align 4
  %137 = and i32 %136, -256
  store i32 %137, i32* %3, align 4
  %138 = load i32, i32* %3, align 4
  %139 = or i32 %138, 3
  store i32 %139, i32* %3, align 4
  %140 = load i32, i32* @mmRLC_PG_DELAY_2, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @WREG32(i32 %140, i32 %141)
  %143 = load i32, i32* @mmRLC_AUTO_PG_CTRL, align 4
  %144 = call i32 @RREG32(i32 %143)
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* @RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %3, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* @RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT, align 4
  %150 = shl i32 1792, %149
  %151 = load i32, i32* %3, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %3, align 4
  %153 = load i32, i32* @mmRLC_AUTO_PG_CTRL, align 4
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @WREG32(i32 %153, i32 %154)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
