; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_hpd_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_hpd_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmDC_HPD_INT_CONTROL = common dso_local global i64 0, align 8
@hpd_offsets = common dso_local global i64* null, align 8
@DC_HPD_INT_CONTROL = common dso_local global i32 0, align 4
@DC_HPD_INT_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @dce_v11_0_hpd_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_hpd_set_polarity(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @dce_v11_0_hpd_sense(%struct.amdgpu_device* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp uge i32 %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %48

17:                                               ; preds = %2
  %18 = load i64, i64* @mmDC_HPD_INT_CONTROL, align 8
  %19 = load i64*, i64** @hpd_offsets, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %18, %23
  %25 = call i32 @RREG32(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DC_HPD_INT_CONTROL, align 4
  %31 = load i32, i32* @DC_HPD_INT_POLARITY, align 4
  %32 = call i32 @REG_SET_FIELD(i32 %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %5, align 4
  br label %38

33:                                               ; preds = %17
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @DC_HPD_INT_CONTROL, align 4
  %36 = load i32, i32* @DC_HPD_INT_POLARITY, align 4
  %37 = call i32 @REG_SET_FIELD(i32 %34, i32 %35, i32 %36, i32 1)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i64, i64* @mmDC_HPD_INT_CONTROL, align 8
  %40 = load i64*, i64** @hpd_offsets, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %39, %44
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @WREG32(i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %16
  ret void
}

declare dso_local i32 @dce_v11_0_hpd_sense(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
