; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_set_hpd_irq_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_set_hpd_irq_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"invalid hdp %d\0A\00", align 1
@mmDC_HPD_INT_CONTROL = common dso_local global i64 0, align 8
@hpd_offsets = common dso_local global i64* null, align 8
@DC_HPD_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @dce_v10_0_set_hpd_irq_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v10_0_set_hpd_irq_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_irq_src*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp uge i32 %11, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %66 [
    i32 129, label %22
    i32 128, label %44
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* @mmDC_HPD_INT_CONTROL, align 8
  %24 = load i64*, i64** @hpd_offsets, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %23, %28
  %30 = call i32 @RREG32(i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @DC_HPD_INT_CONTROL, align 4
  %33 = load i32, i32* @DC_HPD_INT_EN, align 4
  %34 = call i32 @REG_SET_FIELD(i32 %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* @mmDC_HPD_INT_CONTROL, align 8
  %36 = load i64*, i64** @hpd_offsets, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %35, %40
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @WREG32(i64 %41, i32 %42)
  br label %67

44:                                               ; preds = %20
  %45 = load i64, i64* @mmDC_HPD_INT_CONTROL, align 8
  %46 = load i64*, i64** @hpd_offsets, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %45, %50
  %52 = call i32 @RREG32(i64 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @DC_HPD_INT_CONTROL, align 4
  %55 = load i32, i32* @DC_HPD_INT_EN, align 4
  %56 = call i32 @REG_SET_FIELD(i32 %53, i32 %54, i32 %55, i32 1)
  store i32 %56, i32* %10, align 4
  %57 = load i64, i64* @mmDC_HPD_INT_CONTROL, align 8
  %58 = load i64*, i64** @hpd_offsets, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @WREG32(i64 %63, i32 %64)
  br label %67

66:                                               ; preds = %20
  br label %67

67:                                               ; preds = %66, %44, %22
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
