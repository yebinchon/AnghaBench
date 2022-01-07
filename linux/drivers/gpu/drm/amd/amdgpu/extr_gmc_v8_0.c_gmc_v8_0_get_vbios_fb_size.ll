; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_get_vbios_fb_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_get_vbios_fb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmD1VGA_CONTROL = common dso_local global i32 0, align 4
@D1VGA_CONTROL = common dso_local global i32 0, align 4
@D1VGA_MODE_ENABLE = common dso_local global i32 0, align 4
@mmVIEWPORT_SIZE = common dso_local global i32 0, align 4
@VIEWPORT_SIZE = common dso_local global i32 0, align 4
@VIEWPORT_HEIGHT = common dso_local global i32 0, align 4
@VIEWPORT_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v8_0_get_vbios_fb_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v8_0_get_vbios_fb_size(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load i32, i32* @mmD1VGA_CONTROL, align 4
  %8 = call i32 @RREG32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @D1VGA_CONTROL, align 4
  %11 = load i32, i32* @D1VGA_MODE_ENABLE, align 4
  %12 = call i32 @REG_GET_FIELD(i32 %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 9437184, i32* %5, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load i32, i32* @mmVIEWPORT_SIZE, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @VIEWPORT_SIZE, align 4
  %20 = load i32, i32* @VIEWPORT_HEIGHT, align 4
  %21 = call i32 @REG_GET_FIELD(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @VIEWPORT_SIZE, align 4
  %24 = load i32, i32* @VIEWPORT_WIDTH, align 4
  %25 = call i32 @REG_GET_FIELD(i32 %22, i32 %23, i32 %24)
  %26 = mul nsw i32 %21, %25
  %27 = mul nsw i32 %26, 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %15, %14
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub i32 %32, %33
  %35 = icmp ult i32 %34, 8388608
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
