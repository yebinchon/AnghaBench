; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_wait_for_rlc_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_wait_for_rlc_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@GC = common dso_local global i32 0, align 4
@mmRLC_SERDES_CU_MASTER_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Timeout wait for RLC serdes %u,%u\0A\00", align 1
@RLC_SERDES_NONCU_MASTER_BUSY__SE_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@RLC_SERDES_NONCU_MASTER_BUSY__GC_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@RLC_SERDES_NONCU_MASTER_BUSY__TC0_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@RLC_SERDES_NONCU_MASTER_BUSY__TC1_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@mmRLC_SERDES_NONCU_MASTER_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v9_0_wait_for_rlc_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_wait_for_rlc_serdes(%struct.amdgpu_device* %0) #0 {
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

10:                                               ; preds = %71, %1
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %11, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %67, %18
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %19
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device* %28, i32 %30, i32 %32, i32 -1)
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %48, %27
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i32, i32* @GC, align 4
  %42 = load i32, i32* @mmRLC_SERDES_CU_MASTER_BUSY, align 4
  %43 = call i64 @RREG32_SOC15(i32 %41, i32 0, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  %47 = call i32 @udelay(i32 1)
  br label %48

48:                                               ; preds = %46
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %34

51:                                               ; preds = %45, %34
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %59 = call i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device* %58, i32 -1, i32 -1, i32 -1)
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %64)
  br label %106

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %4, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %4, align 8
  br label %19

70:                                               ; preds = %19
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %3, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %3, align 8
  br label %10

74:                                               ; preds = %10
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %76 = call i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device* %75, i32 -1, i32 -1, i32 -1)
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__SE_MASTER_BUSY_MASK, align 8
  %81 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__GC_MASTER_BUSY_MASK, align 8
  %82 = or i64 %80, %81
  %83 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__TC0_MASTER_BUSY_MASK, align 8
  %84 = or i64 %82, %83
  %85 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__TC1_MASTER_BUSY_MASK, align 8
  %86 = or i64 %84, %85
  store i64 %86, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %87

87:                                               ; preds = %103, %74
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load i32, i32* @GC, align 4
  %95 = load i32, i32* @mmRLC_SERDES_NONCU_MASTER_BUSY, align 4
  %96 = call i64 @RREG32_SOC15(i32 %94, i32 0, i32 %95)
  %97 = load i64, i64* %6, align 8
  %98 = and i64 %96, %97
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %106

101:                                              ; preds = %93
  %102 = call i32 @udelay(i32 1)
  br label %103

103:                                              ; preds = %101
  %104 = load i64, i64* %5, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %5, align 8
  br label %87

106:                                              ; preds = %57, %100, %87
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i64 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DRM_INFO(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
