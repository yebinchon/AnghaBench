; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_wait_for_rlc_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_wait_for_rlc_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@mmRLC_SERDES_CU_MASTER_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Timeout wait for RLC serdes %u,%u\0A\00", align 1
@RLC_SERDES_NONCU_MASTER_BUSY__SE_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@RLC_SERDES_NONCU_MASTER_BUSY__GC_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@RLC_SERDES_NONCU_MASTER_BUSY__TC0_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@RLC_SERDES_NONCU_MASTER_BUSY__TC1_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@mmRLC_SERDES_NONCU_MASTER_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v8_0_wait_for_rlc_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_wait_for_rlc_serdes(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %70, %1
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %11, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %66, %18
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %19
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device* %28, i32 %30, i32 %32, i32 -1)
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %47, %27
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i32, i32* @mmRLC_SERDES_CU_MASTER_BUSY, align 4
  %42 = call i64 @RREG32(i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %50

45:                                               ; preds = %40
  %46 = call i32 @udelay(i32 1)
  br label %47

47:                                               ; preds = %45
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %34

50:                                               ; preds = %44, %34
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = call i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device* %57, i32 -1, i32 -1, i32 -1)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %62, i64 %63)
  br label %104

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %4, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %19

69:                                               ; preds = %19
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %3, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %3, align 8
  br label %10

73:                                               ; preds = %10
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %75 = call i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device* %74, i32 -1, i32 -1, i32 -1)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__SE_MASTER_BUSY_MASK, align 8
  %80 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__GC_MASTER_BUSY_MASK, align 8
  %81 = or i64 %79, %80
  %82 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__TC0_MASTER_BUSY_MASK, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__TC1_MASTER_BUSY_MASK, align 8
  %85 = or i64 %83, %84
  store i64 %85, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %86

86:                                               ; preds = %101, %73
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load i32, i32* @mmRLC_SERDES_NONCU_MASTER_BUSY, align 4
  %94 = call i64 @RREG32(i32 %93)
  %95 = load i64, i64* %6, align 8
  %96 = and i64 %94, %95
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %104

99:                                               ; preds = %92
  %100 = call i32 @udelay(i32 1)
  br label %101

101:                                              ; preds = %99
  %102 = load i64, i64* %5, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %5, align 8
  br label %86

104:                                              ; preds = %56, %98, %86
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DRM_INFO(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
