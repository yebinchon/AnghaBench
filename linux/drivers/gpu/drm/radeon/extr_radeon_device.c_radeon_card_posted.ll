; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_card_posted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_card_posted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CHIP_BONAIRE = common dso_local global i64 0, align 8
@EFI_BOOT = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@CHIP_R600 = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_MASTER_EN = common dso_local global i32 0, align 4
@AVIVO_D1CRTC_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D2CRTC_CONTROL = common dso_local global i64 0, align 8
@AVIVO_CRTC_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_GEN_CNTL = common dso_local global i64 0, align 8
@RADEON_CRTC2_GEN_CNTL = common dso_local global i64 0, align 8
@RADEON_CRTC_EN = common dso_local global i32 0, align 4
@R600_CONFIG_MEMSIZE = common dso_local global i64 0, align 8
@RADEON_CONFIG_MEMSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_card_posted(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHIP_BONAIRE, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i64 (...) @radeon_device_is_virtual()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %139

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @EFI_BOOT, align 4
  %16 = call i64 @efi_enabled(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_R600, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %139

33:                                               ; preds = %26, %18, %14
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i64 @ASIC_IS_NODCE(%struct.radeon_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %122

38:                                               ; preds = %33
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %38
  %43 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %44 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @RREG32(i64 %45)
  %47 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %48 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @RREG32(i64 %49)
  %51 = or i32 %46, %50
  store i32 %51, i32* %4, align 4
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 4
  br i1 %55, label %56, label %68

56:                                               ; preds = %42
  %57 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %58 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @RREG32(i64 %59)
  %61 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %62 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @RREG32(i64 %63)
  %65 = or i32 %60, %64
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %56, %42
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 6
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %75 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @RREG32(i64 %76)
  %78 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %79 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @RREG32(i64 %80)
  %82 = or i32 %77, %81
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %73, %68
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @EVERGREEN_CRTC_MASTER_EN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 1, i32* %2, align 4
  br label %139

91:                                               ; preds = %85
  br label %121

92:                                               ; preds = %38
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %98 = call i32 @RREG32(i64 %97)
  %99 = load i64, i64* @AVIVO_D2CRTC_CONTROL, align 8
  %100 = call i32 @RREG32(i64 %99)
  %101 = or i32 %98, %100
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @AVIVO_CRTC_EN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %139

107:                                              ; preds = %96
  br label %120

108:                                              ; preds = %92
  %109 = load i64, i64* @RADEON_CRTC_GEN_CNTL, align 8
  %110 = call i32 @RREG32(i64 %109)
  %111 = load i64, i64* @RADEON_CRTC2_GEN_CNTL, align 8
  %112 = call i32 @RREG32(i64 %111)
  %113 = or i32 %110, %112
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @RADEON_CRTC_EN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  store i32 1, i32* %2, align 4
  br label %139

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %107
  br label %121

121:                                              ; preds = %120, %91
  br label %122

122:                                              ; preds = %121, %37
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CHIP_R600, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i64, i64* @R600_CONFIG_MEMSIZE, align 8
  %130 = call i32 @RREG32(i64 %129)
  store i32 %130, i32* %4, align 4
  br label %134

131:                                              ; preds = %122
  %132 = load i64, i64* @RADEON_CONFIG_MEMSIZE, align 8
  %133 = call i32 @RREG32(i64 %132)
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 1, i32* %2, align 4
  br label %139

138:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %137, %118, %106, %90, %32, %13
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i64 @radeon_device_is_virtual(...) #1

declare dso_local i64 @efi_enabled(i32) #1

declare dso_local i64 @ASIC_IS_NODCE(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
