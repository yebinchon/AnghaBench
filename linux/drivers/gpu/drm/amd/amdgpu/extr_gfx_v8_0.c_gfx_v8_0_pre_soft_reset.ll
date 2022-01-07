; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_pre_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_pre_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.amdgpu_ring*, %struct.TYPE_5__, i64, i32 }
%struct.amdgpu_ring = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*)* }

@GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_GFX = common dso_local global i32 0, align 4
@SOFT_RESET_CPF = common dso_local global i32 0, align 4
@SOFT_RESET_CPC = common dso_local global i32 0, align 4
@SOFT_RESET_CPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v8_0_pre_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_pre_soft_reset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_ring*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %118

22:                                               ; preds = %15, %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %32, align 8
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %35 = call i32 %33(%struct.amdgpu_device* %34)
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %38 = load i32, i32* @SOFT_RESET_CP, align 4
  %39 = call i64 @REG_GET_FIELD(i64 %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %22
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %44 = load i32, i32* @SOFT_RESET_GFX, align 4
  %45 = call i64 @REG_GET_FIELD(i64 %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %22
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %49 = call i32 @gfx_v8_0_cp_gfx_enable(%struct.amdgpu_device* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %53 = load i32, i32* @SOFT_RESET_CP, align 4
  %54 = call i64 @REG_GET_FIELD(i64 %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %59 = load i32, i32* @SOFT_RESET_CPF, align 4
  %60 = call i64 @REG_GET_FIELD(i64 %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %65 = load i32, i32* @SOFT_RESET_CPC, align 4
  %66 = call i64 @REG_GET_FIELD(i64 %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %71 = load i32, i32* @SOFT_RESET_CPG, align 4
  %72 = call i64 @REG_GET_FIELD(i64 %69, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %117

74:                                               ; preds = %68, %62, %56, %50
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %111, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %75
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %86, i64 %88
  store %struct.amdgpu_ring* %89, %struct.amdgpu_ring** %7, align 8
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 0
  %92 = call i32 @mutex_lock(i32* %91)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %95 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %98 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %101 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @vi_srbm_select(%struct.amdgpu_device* %93, i32 %96, i32 %99, i32 %102, i32 0)
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %105 = call i32 @gfx_v8_0_deactivate_hqd(%struct.amdgpu_device* %104, i32 2)
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %107 = call i32 @vi_srbm_select(%struct.amdgpu_device* %106, i32 0, i32 0, i32 0, i32 0)
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  br label %111

111:                                              ; preds = %82
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %75

114:                                              ; preds = %75
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %116 = call i32 @gfx_v8_0_cp_compute_enable(%struct.amdgpu_device* %115, i32 0)
  br label %117

117:                                              ; preds = %114, %68
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %21
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @REG_GET_FIELD(i64, i32, i32) #1

declare dso_local i32 @gfx_v8_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vi_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v8_0_deactivate_hqd(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gfx_v8_0_cp_compute_enable(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
