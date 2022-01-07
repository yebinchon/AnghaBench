; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }

@CHIP_POLARIS10 = common dso_local global i64 0, align 8
@CHIP_POLARIS11 = common dso_local global i64 0, align 8
@CHIP_POLARIS12 = common dso_local global i64 0, align 8
@CHIP_VEGAM = common dso_local global i64 0, align 8
@DCE_CLOCK_TYPE_DISPCLK = common dso_local global i32 0, align 4
@ATOM_GCK_DFS = common dso_local global i32 0, align 4
@DCE_CLOCK_TYPE_DPREFCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dce_v11_0_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v11_0_hw_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = call i32 @dce_v11_0_init_golden_registers(%struct.amdgpu_device* %7)
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = call i32 @dce_v11_0_set_vga_render_state(%struct.amdgpu_device* %9, i32 0)
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = call i32 @amdgpu_atombios_crtc_powergate_init(%struct.amdgpu_device* %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = call i32 @amdgpu_atombios_encoder_init_dig(%struct.amdgpu_device* %13)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_POLARIS10, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHIP_POLARIS11, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_POLARIS12, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHIP_VEGAM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32, %26, %20, %1
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DCE_CLOCK_TYPE_DISPCLK, align 4
  %45 = load i32, i32* @ATOM_GCK_DFS, align 4
  %46 = call i32 @amdgpu_atombios_crtc_set_dce_clock(%struct.amdgpu_device* %39, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %48 = load i32, i32* @DCE_CLOCK_TYPE_DPREFCLK, align 4
  %49 = load i32, i32* @ATOM_GCK_DFS, align 4
  %50 = call i32 @amdgpu_atombios_crtc_set_dce_clock(%struct.amdgpu_device* %47, i32 0, i32 %48, i32 %49)
  br label %58

51:                                               ; preds = %32
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @amdgpu_atombios_crtc_set_disp_eng_pll(%struct.amdgpu_device* %52, i32 %56)
  br label %58

58:                                               ; preds = %51, %38
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %60 = call i32 @dce_v11_0_hpd_init(%struct.amdgpu_device* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %80, %58
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %62, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %61
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @dce_v11_0_audio_enable(%struct.amdgpu_device* %70, i32* %78, i32 0)
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %61

83:                                               ; preds = %61
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %85 = call i32 @dce_v11_0_pageflip_interrupt_init(%struct.amdgpu_device* %84)
  ret i32 0
}

declare dso_local i32 @dce_v11_0_init_golden_registers(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v11_0_set_vga_render_state(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_atombios_crtc_powergate_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_atombios_encoder_init_dig(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_atombios_crtc_set_dce_clock(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_atombios_crtc_set_disp_eng_pll(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @dce_v11_0_hpd_init(%struct.amdgpu_device*) #1

declare dso_local i32 @dce_v11_0_audio_enable(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @dce_v11_0_pageflip_interrupt_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
