; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_rlc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_rlc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}*, {}* }

@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@GC = common dso_local global i32 0, align 4
@mmRLC_CGCG_CGLS_CTRL = common dso_local global i32 0, align 4
@mmRLC_PG_CNTL = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_DIRECT = common dso_local global i64 0, align 8
@AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_rlc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_rlc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

9:                                                ; preds = %1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = call i32 @gfx_v10_0_wait_for_rlc_autoload_complete(%struct.amdgpu_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %104

23:                                               ; preds = %16
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = call i32 @gfx_v10_0_init_pg(%struct.amdgpu_device* %24)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = call i32 @gfx_v10_0_rlc_enable_srm(%struct.amdgpu_device* %26)
  br label %103

28:                                               ; preds = %9
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = bitcast {}** %34 to i32 (%struct.amdgpu_device*)**
  %36 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %35, align 8
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = call i32 %36(%struct.amdgpu_device* %37)
  %39 = load i32, i32* @GC, align 4
  %40 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %41 = call i32 @WREG32_SOC15(i32 %39, i32 0, i32 %40, i32 0)
  %42 = load i32, i32* @GC, align 4
  %43 = load i32, i32* @mmRLC_PG_CNTL, align 4
  %44 = call i32 @WREG32_SOC15(i32 %42, i32 0, i32 %43, i32 0)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AMDGPU_FW_LOAD_DIRECT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %28
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = call i32 @gfx_v10_0_rlc_load_microcode(%struct.amdgpu_device* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %104

58:                                               ; preds = %51
  br label %75

59:                                               ; preds = %28
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = call i32 @gfx_v10_0_rlc_backdoor_autoload_enable(%struct.amdgpu_device* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %104

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74, %58
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %77 = call i32 @gfx_v10_0_init_pg(%struct.amdgpu_device* %76)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i32 (%struct.amdgpu_device*)**
  %85 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %84, align 8
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = call i32 %85(%struct.amdgpu_device* %86)
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %75
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %96 = call i32 @gfx_v10_0_wait_for_rlc_autoload_complete(%struct.amdgpu_device* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %104

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %75
  br label %103

103:                                              ; preds = %102, %23
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %99, %71, %56, %21, %8
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_wait_for_rlc_autoload_complete(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_init_pg(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_enable_srm(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_rlc_load_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_enable(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
