; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_wait_for_rlc_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_wait_for_rlc_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@mmRLC_SERDES_CU_MASTER_BUSY = common dso_local global i32 0, align 4
@RLC_SERDES_NONCU_MASTER_BUSY__SE_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@RLC_SERDES_NONCU_MASTER_BUSY__GC_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@RLC_SERDES_NONCU_MASTER_BUSY__TC0_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@RLC_SERDES_NONCU_MASTER_BUSY__TC1_MASTER_BUSY_MASK = common dso_local global i64 0, align 8
@mmRLC_SERDES_NONCU_MASTER_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v7_0_wait_for_rlc_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_wait_for_rlc_serdes(%struct.amdgpu_device* %0) #0 {
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

10:                                               ; preds = %55, %1
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %11, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %19
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @gfx_v7_0_select_se_sh(%struct.amdgpu_device* %28, i32 %30, i32 %32, i32 -1)
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
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %19

54:                                               ; preds = %19
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %3, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %3, align 8
  br label %10

58:                                               ; preds = %10
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %60 = call i32 @gfx_v7_0_select_se_sh(%struct.amdgpu_device* %59, i32 -1, i32 -1, i32 -1)
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__SE_MASTER_BUSY_MASK, align 8
  %65 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__GC_MASTER_BUSY_MASK, align 8
  %66 = or i64 %64, %65
  %67 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__TC0_MASTER_BUSY_MASK, align 8
  %68 = or i64 %66, %67
  %69 = load i64, i64* @RLC_SERDES_NONCU_MASTER_BUSY__TC1_MASTER_BUSY_MASK, align 8
  %70 = or i64 %68, %69
  store i64 %70, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %71

71:                                               ; preds = %86, %58
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i32, i32* @mmRLC_SERDES_NONCU_MASTER_BUSY, align 4
  %79 = call i64 @RREG32(i32 %78)
  %80 = load i64, i64* %6, align 8
  %81 = and i64 %79, %80
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %89

84:                                               ; preds = %77
  %85 = call i32 @udelay(i32 1)
  br label %86

86:                                               ; preds = %84
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %5, align 8
  br label %71

89:                                               ; preds = %83, %71
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v7_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
