; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_always_on_cu_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_always_on_cu_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.amdgpu_cu_info }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.amdgpu_cu_info = type { i64**, i64** }

@AMD_IS_APU = common dso_local global i32 0, align 4
@CHIP_VEGA12 = common dso_local global i64 0, align 8
@GC = common dso_local global i32 0, align 4
@mmRLC_PG_ALWAYS_ON_CU_MASK = common dso_local global i32 0, align 4
@mmRLC_LB_ALWAYS_ACTIVE_CU_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v9_0_init_always_on_cu_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_init_always_on_cu_mask(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_cu_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store %struct.amdgpu_cu_info* %14, %struct.amdgpu_cu_info** %3, align 8
  store i64 2, i64* %4, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AMD_IS_APU, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i64 4, i64* %5, align 8
  br label %31

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHIP_VEGA12, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i64 8, i64* %5, align 8
  br label %30

29:                                               ; preds = %22
  store i64 12, i64* %5, align 8
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %125, %31
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %36, %41
  br i1 %42, label %43, label %128

43:                                               ; preds = %35
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %121, %43
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %45, %50
  br i1 %51, label %52, label %124

52:                                               ; preds = %44
  store i64 1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = load i64, i64* %6, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device* %53, i32 %55, i32 %57, i32 -1)
  store i64 0, i64* %8, align 8
  br label %59

59:                                               ; preds = %104, %52
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %60, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %59
  %68 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %3, align 8
  %69 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %68, i32 0, i32 0
  %70 = load i64**, i64*** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i64*, i64** %70, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %67
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* @GC, align 4
  %86 = load i32, i32* @mmRLC_PG_ALWAYS_ON_CU_MASK, align 4
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @WREG32_SOC15(i32 %85, i32 0, i32 %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %5, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %10, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %10, align 8
  br label %98

97:                                               ; preds = %89
  br label %107

98:                                               ; preds = %93
  %99 = load i64, i64* %11, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %98, %67
  %102 = load i64, i64* %9, align 8
  %103 = shl i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %101
  %105 = load i64, i64* %8, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %8, align 8
  br label %59

107:                                              ; preds = %97, %59
  %108 = load i32, i32* @GC, align 4
  %109 = load i32, i32* @mmRLC_LB_ALWAYS_ACTIVE_CU_MASK, align 4
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @WREG32_SOC15(i32 %108, i32 0, i32 %109, i64 %110)
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.amdgpu_cu_info*, %struct.amdgpu_cu_info** %3, align 8
  %114 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %113, i32 0, i32 1
  %115 = load i64**, i64*** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds i64*, i64** %115, i64 %116
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  store i64 %112, i64* %120, align 8
  br label %121

121:                                              ; preds = %107
  %122 = load i64, i64* %7, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %7, align 8
  br label %44

124:                                              ; preds = %44
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %6, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %6, align 8
  br label %35

128:                                              ; preds = %35
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %130 = call i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device* %129, i32 -1, i32 -1, i32 -1)
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 2
  %133 = call i32 @mutex_unlock(i32* %132)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
