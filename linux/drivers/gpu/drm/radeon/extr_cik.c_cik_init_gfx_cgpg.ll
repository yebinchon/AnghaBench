; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_init_gfx_cgpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_init_gfx_cgpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i32, i32, i32, i64 }

@RLC_GPM_SCRATCH_ADDR = common dso_local global i32 0, align 4
@RLC_CLEAR_STATE_DESCRIPTOR_OFFSET = common dso_local global i32 0, align 4
@RLC_GPM_SCRATCH_DATA = common dso_local global i32 0, align 4
@RLC_SAVE_AND_RESTORE_STARTING_OFFSET = common dso_local global i32 0, align 4
@RLC_PG_CNTL = common dso_local global i32 0, align 4
@GFX_PG_SRC = common dso_local global i32 0, align 4
@RLC_SAVE_AND_RESTORE_BASE = common dso_local global i32 0, align 4
@RLC_CP_TABLE_RESTORE = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@IDLE_POLL_COUNT_MASK = common dso_local global i32 0, align 4
@RLC_PG_DELAY = common dso_local global i32 0, align 4
@RLC_PG_DELAY_2 = common dso_local global i32 0, align 4
@RLC_AUTO_PG_CTRL = common dso_local global i32 0, align 4
@GRBM_REG_SGIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cik_init_gfx_cgpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_init_gfx_cgpg(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load i32, i32* @RLC_GPM_SCRATCH_ADDR, align 4
  %13 = load i32, i32* @RLC_CLEAR_STATE_DESCRIPTOR_OFFSET, align 4
  %14 = call i32 @WREG32(i32 %12, i32 %13)
  %15 = load i32, i32* @RLC_GPM_SCRATCH_DATA, align 4
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @upper_32_bits(i32 %19)
  %21 = call i32 @WREG32(i32 %15, i32 %20)
  %22 = load i32, i32* @RLC_GPM_SCRATCH_DATA, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lower_32_bits(i32 %26)
  %28 = call i32 @WREG32(i32 %22, i32 %27)
  %29 = load i32, i32* @RLC_GPM_SCRATCH_DATA, align 4
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @WREG32(i32 %29, i32 %33)
  br label %49

35:                                               ; preds = %1
  %36 = load i32, i32* @RLC_GPM_SCRATCH_ADDR, align 4
  %37 = load i32, i32* @RLC_CLEAR_STATE_DESCRIPTOR_OFFSET, align 4
  %38 = call i32 @WREG32(i32 %36, i32 %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %45, %35
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @RLC_GPM_SCRATCH_DATA, align 4
  %44 = call i32 @WREG32(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %39

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %11
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load i32, i32* @RLC_GPM_SCRATCH_ADDR, align 4
  %57 = load i32, i32* @RLC_SAVE_AND_RESTORE_STARTING_OFFSET, align 4
  %58 = call i32 @WREG32(i32 %56, i32 %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %77, %55
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %59
  %67 = load i32, i32* @RLC_GPM_SCRATCH_DATA, align 4
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @WREG32(i32 %67, i32 %75)
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %59

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i32, i32* @RLC_PG_CNTL, align 4
  %83 = call i32 @RREG32(i32 %82)
  store i32 %83, i32* %3, align 4
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @GFX_PG_SRC, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @RLC_PG_CNTL, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @WREG32(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %81
  %95 = load i32, i32* @RLC_SAVE_AND_RESTORE_BASE, align 4
  %96 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 8
  %101 = call i32 @WREG32(i32 %95, i32 %100)
  %102 = load i32, i32* @RLC_CP_TABLE_RESTORE, align 4
  %103 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 %106, 8
  %108 = call i32 @WREG32(i32 %102, i32 %107)
  %109 = load i32, i32* @CP_RB_WPTR_POLL_CNTL, align 4
  %110 = call i32 @RREG32(i32 %109)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* @IDLE_POLL_COUNT_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %3, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %3, align 4
  %115 = call i32 @IDLE_POLL_COUNT(i32 96)
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* @CP_RB_WPTR_POLL_CNTL, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @WREG32(i32 %118, i32 %119)
  store i32 269488144, i32* %3, align 4
  %121 = load i32, i32* @RLC_PG_DELAY, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @WREG32(i32 %121, i32 %122)
  %124 = load i32, i32* @RLC_PG_DELAY_2, align 4
  %125 = call i32 @RREG32(i32 %124)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = and i32 %126, -256
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = or i32 %128, 3
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* @RLC_PG_DELAY_2, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @WREG32(i32 %130, i32 %131)
  %133 = load i32, i32* @RLC_AUTO_PG_CTRL, align 4
  %134 = call i32 @RREG32(i32 %133)
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* @GRBM_REG_SGIT_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %3, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %3, align 4
  %139 = call i32 @GRBM_REG_SGIT(i32 1792)
  %140 = load i32, i32* %3, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* @RLC_AUTO_PG_CTRL, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @WREG32(i32 %142, i32 %143)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @IDLE_POLL_COUNT(i32) #1

declare dso_local i32 @GRBM_REG_SGIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
