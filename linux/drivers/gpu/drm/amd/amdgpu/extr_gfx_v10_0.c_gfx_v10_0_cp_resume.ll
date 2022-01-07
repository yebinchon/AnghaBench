; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, %struct.amdgpu_ring*, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_DIRECT = common dso_local global i64 0, align 8
@amdgpu_async_gfx_ring = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"gfx %d ring me %d pipe %d q %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"compute ring %d mec %d pipe %d q %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_cp_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_cp_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AMD_IS_APU, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = call i32 @gfx_v10_0_enable_gui_idle_interrupt(%struct.amdgpu_device* %14, i32 0)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AMDGPU_FW_LOAD_DIRECT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = call i32 @gfx_v10_0_cp_gfx_load_microcode(%struct.amdgpu_device* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %154

30:                                               ; preds = %23
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = call i32 @gfx_v10_0_cp_compute_load_microcode(%struct.amdgpu_device* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %154

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = call i32 @gfx_v10_0_kiq_resume(%struct.amdgpu_device* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %154

45:                                               ; preds = %38
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = call i32 @gfx_v10_0_kcq_resume(%struct.amdgpu_device* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %154

52:                                               ; preds = %45
  %53 = load i32, i32* @amdgpu_async_gfx_ring, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = call i32 @gfx_v10_0_cp_gfx_resume(%struct.amdgpu_device* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %154

62:                                               ; preds = %55
  br label %71

63:                                               ; preds = %52
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = call i32 @gfx_v10_0_cp_async_gfx_ring_resume(%struct.amdgpu_device* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %154

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %62
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %108, %71
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %72
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %83, i64 %85
  store %struct.amdgpu_ring* %86, %struct.amdgpu_ring** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %89 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %92 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %95 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %90, i32 %93, i32 %96)
  %98 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %99 = call i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring* %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %79
  %103 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %104 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %154

107:                                              ; preds = %79
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %72

111:                                              ; preds = %72
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %150, %111
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %153

119:                                              ; preds = %112
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %123, i64 %125
  store %struct.amdgpu_ring* %126, %struct.amdgpu_ring** %6, align 8
  %127 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %128 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %132 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %135 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %138 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @DRM_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %133, i32 %136, i32 %139)
  %141 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %142 = call i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring* %141)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %119
  %146 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %147 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %145, %119
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %112

153:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %102, %68, %60, %50, %43, %35, %28
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @gfx_v10_0_enable_gui_idle_interrupt(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v10_0_cp_gfx_load_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_cp_compute_load_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_kiq_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_kcq_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_cp_gfx_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_cp_async_gfx_ring_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
