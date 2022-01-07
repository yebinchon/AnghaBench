; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_rlc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_rlc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}*, {}* }
%struct.TYPE_5__ = type { i64 }

@GC = common dso_local global i32 0, align 4
@mmRLC_CGCG_CGLS_CTRL = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@amdgpu_lbpw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_rlc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_rlc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = call i32 @gfx_v9_0_init_csb(%struct.amdgpu_device* %9)
  store i32 0, i32* %2, align 4
  br label %77

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = bitcast {}** %17 to i32 (%struct.amdgpu_device*)**
  %19 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %18, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 %19(%struct.amdgpu_device* %20)
  %22 = load i32, i32* @GC, align 4
  %23 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %24 = call i32 @WREG32_SOC15(i32 %22, i32 0, i32 %23, i32 0)
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = call i32 @gfx_v9_0_init_pg(%struct.amdgpu_device* %25)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %11
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = call i32 @gfx_v9_0_rlc_load_microcode(%struct.amdgpu_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %77

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %11
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %65 [
    i32 129, label %45
    i32 128, label %55
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @amdgpu_lbpw, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = call i32 @gfx_v9_0_enable_lbpw(%struct.amdgpu_device* %49, i32 0)
  br label %54

51:                                               ; preds = %45
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = call i32 @gfx_v9_0_enable_lbpw(%struct.amdgpu_device* %52, i32 1)
  br label %54

54:                                               ; preds = %51, %48
  br label %66

55:                                               ; preds = %41
  %56 = load i32, i32* @amdgpu_lbpw, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = call i32 @gfx_v9_0_enable_lbpw(%struct.amdgpu_device* %59, i32 1)
  br label %64

61:                                               ; preds = %55
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = call i32 @gfx_v9_0_enable_lbpw(%struct.amdgpu_device* %62, i32 0)
  br label %64

64:                                               ; preds = %61, %58
  br label %66

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65, %64, %54
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = bitcast {}** %72 to i32 (%struct.amdgpu_device*)**
  %74 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %73, align 8
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = call i32 %74(%struct.amdgpu_device* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %66, %38, %8
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_init_csb(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v9_0_init_pg(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_rlc_load_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_enable_lbpw(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
