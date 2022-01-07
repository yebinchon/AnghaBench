; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_post_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_post_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.amdgpu_ring*, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*)* }
%struct.amdgpu_ring = type { i32, i32, i32 }

@GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_CPF = common dso_local global i32 0, align 4
@SOFT_RESET_CPC = common dso_local global i32 0, align 4
@SOFT_RESET_CPG = common dso_local global i32 0, align 4
@SOFT_RESET_GFX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v8_0_post_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_post_soft_reset(i8* %0) #0 {
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
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %122

22:                                               ; preds = %15, %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %29 = load i32, i32* @SOFT_RESET_CP, align 4
  %30 = call i64 @REG_GET_FIELD(i64 %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %22
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %35 = load i32, i32* @SOFT_RESET_CPF, align 4
  %36 = call i64 @REG_GET_FIELD(i64 %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %41 = load i32, i32* @SOFT_RESET_CPC, align 4
  %42 = call i64 @REG_GET_FIELD(i64 %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %47 = load i32, i32* @SOFT_RESET_CPG, align 4
  %48 = call i64 @REG_GET_FIELD(i64 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %95

50:                                               ; preds = %44, %38, %32, %22
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %87, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %51
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i64 %64
  store %struct.amdgpu_ring* %65, %struct.amdgpu_ring** %7, align 8
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 1
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %70 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %71 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @vi_srbm_select(%struct.amdgpu_device* %69, i32 %72, i32 %75, i32 %78, i32 0)
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %81 = call i32 @gfx_v8_0_deactivate_hqd(%struct.amdgpu_device* %80, i32 2)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %83 = call i32 @vi_srbm_select(%struct.amdgpu_device* %82, i32 0, i32 0, i32 0, i32 0)
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %87

87:                                               ; preds = %58
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %51

90:                                               ; preds = %51
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %92 = call i32 @gfx_v8_0_kiq_resume(%struct.amdgpu_device* %91)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %94 = call i32 @gfx_v8_0_kcq_resume(%struct.amdgpu_device* %93)
  br label %95

95:                                               ; preds = %90, %44
  %96 = load i64, i64* %5, align 8
  %97 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %98 = load i32, i32* @SOFT_RESET_CP, align 4
  %99 = call i64 @REG_GET_FIELD(i64 %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i64, i64* %5, align 8
  %103 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %104 = load i32, i32* @SOFT_RESET_GFX, align 4
  %105 = call i64 @REG_GET_FIELD(i64 %102, i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %95
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %109 = call i32 @gfx_v8_0_cp_gfx_resume(%struct.amdgpu_device* %108)
  br label %110

110:                                              ; preds = %107, %101
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %112 = call i32 @gfx_v8_0_cp_test_all_rings(%struct.amdgpu_device* %111)
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %118, align 8
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %121 = call i32 %119(%struct.amdgpu_device* %120)
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %110, %21
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @REG_GET_FIELD(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vi_srbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v8_0_deactivate_hqd(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gfx_v8_0_kiq_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_kcq_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_cp_gfx_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_cp_test_all_rings(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
