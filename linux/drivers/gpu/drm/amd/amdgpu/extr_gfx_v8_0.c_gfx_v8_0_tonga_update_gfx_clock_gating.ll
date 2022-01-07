; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_tonga_update_gfx_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_tonga_update_gfx_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@AMD_CG_SUPPORT_GFX_CGCG = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGLS = common dso_local global i32 0, align 4
@PP_STATE_SUPPORT_LS = common dso_local global i32 0, align 4
@PP_STATE_LS = common dso_local global i32 0, align 4
@PP_STATE_SUPPORT_CG = common dso_local global i32 0, align 4
@PP_STATE_CG = common dso_local global i32 0, align 4
@AMD_CG_STATE_UNGATE = common dso_local global i32 0, align 4
@PP_GROUP_GFX = common dso_local global i32 0, align 4
@PP_BLOCK_GFX_CG = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_MGCG = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_MGLS = common dso_local global i32 0, align 4
@PP_BLOCK_GFX_MG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @gfx_v8_0_tonga_update_gfx_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_tonga_update_gfx_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGCG, align 4
  %12 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGLS, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %2
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGLS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @PP_STATE_LS, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGCG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @PP_STATE_CG, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %33, %26
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* @PP_GROUP_GFX, align 4
  %47 = load i32, i32* @PP_BLOCK_GFX_CG, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @PP_CG_MSG_ID(i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %45
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGCG, align 4
  %68 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %63
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGLS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @PP_STATE_SUPPORT_LS, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @PP_STATE_LS, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %72
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGCG, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i32, i32* @PP_STATE_SUPPORT_CG, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* @PP_STATE_CG, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %89, %82
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %96
  %102 = load i32, i32* @PP_GROUP_GFX, align 4
  %103 = load i32, i32* @PP_BLOCK_GFX_MG, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @PP_CG_MSG_ID(i32 %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %101
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %101
  br label %119

119:                                              ; preds = %118, %63
  ret i32 0
}

declare dso_local i32 @PP_CG_MSG_ID(i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_dpm_set_clockgating_by_smu(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
