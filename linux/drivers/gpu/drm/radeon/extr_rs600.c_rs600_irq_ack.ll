; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@R_000044_GEN_INT_STATUS = common dso_local global i32 0, align 4
@R_007EDC_DISP_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@R_006534_D1MODE_VBLANK_STATUS = common dso_local global i32 0, align 4
@R_006D34_D2MODE_VBLANK_STATUS = common dso_local global i32 0, align 4
@R_007D08_DC_HOT_PLUG_DETECT1_INT_CONTROL = common dso_local global i32 0, align 4
@R_007D18_DC_HOT_PLUG_DETECT2_INT_CONTROL = common dso_local global i32 0, align 4
@R_007404_HDMI0_STATUS = common dso_local global i32 0, align 4
@R_007408_HDMI0_AUDIO_PACKET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rs600_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs600_irq_ack(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load i32, i32* @R_000044_GEN_INT_STATUS, align 4
  %7 = call i32 @RREG32(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = call i32 @S_000044_SW_INT(i32 1)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @G_000044_DISPLAY_INT_STAT(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %82

12:                                               ; preds = %1
  %13 = load i32, i32* @R_007EDC_DISP_INTERRUPT_STATUS, align 4
  %14 = call i32 @RREG32(i32 %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %14, i32* %19, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @G_007EDC_LB_D1_VBLANK_INTERRUPT(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %12
  %29 = load i32, i32* @R_006534_D1MODE_VBLANK_STATUS, align 4
  %30 = call i32 @S_006534_D1MODE_VBLANK_ACK(i32 1)
  %31 = call i32 @WREG32(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %12
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @G_007EDC_LB_D2_VBLANK_INTERRUPT(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @R_006D34_D2MODE_VBLANK_STATUS, align 4
  %43 = call i32 @S_006D34_D2MODE_VBLANK_ACK(i32 1)
  %44 = call i32 @WREG32(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %32
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @G_007EDC_DC_HOT_PLUG_DETECT1_INTERRUPT(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load i32, i32* @R_007D08_DC_HOT_PLUG_DETECT1_INT_CONTROL, align 4
  %56 = call i32 @RREG32(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = call i32 @S_007D08_DC_HOT_PLUG_DETECT1_INT_ACK(i32 1)
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @R_007D08_DC_HOT_PLUG_DETECT1_INT_CONTROL, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %45
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @G_007EDC_DC_HOT_PLUG_DETECT2_INTERRUPT(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load i32, i32* @R_007D18_DC_HOT_PLUG_DETECT2_INT_CONTROL, align 4
  %74 = call i32 @RREG32(i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = call i32 @S_007D18_DC_HOT_PLUG_DETECT2_INT_ACK(i32 1)
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @R_007D18_DC_HOT_PLUG_DETECT2_INT_CONTROL, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @WREG32(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %72, %63
  br label %88

82:                                               ; preds = %1
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %81
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = call i64 @ASIC_IS_DCE2(%struct.radeon_device* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %88
  %93 = load i32, i32* @R_007404_HDMI0_STATUS, align 4
  %94 = call i32 @RREG32(i32 %93)
  %95 = call i32 @S_007404_HDMI0_AZ_FORMAT_WTRIG(i32 1)
  %96 = and i32 %94, %95
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 %96, i32* %101, align 4
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @G_007404_HDMI0_AZ_FORMAT_WTRIG(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %92
  %111 = load i32, i32* @R_007408_HDMI0_AUDIO_PACKET_CONTROL, align 4
  %112 = call i32 @RREG32(i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = call i32 @S_007408_HDMI0_AZ_FORMAT_WTRIG_ACK(i32 1)
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @R_007408_HDMI0_AUDIO_PACKET_CONTROL, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @WREG32(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %110, %92
  br label %126

120:                                              ; preds = %88
  %121 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %119
  %127 = load i32, i32* %3, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* @R_000044_GEN_INT_STATUS, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @WREG32(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* %4, align 4
  %136 = and i32 %134, %135
  ret i32 %136
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @S_000044_SW_INT(i32) #1

declare dso_local i64 @G_000044_DISPLAY_INT_STAT(i32) #1

declare dso_local i64 @G_007EDC_LB_D1_VBLANK_INTERRUPT(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @S_006534_D1MODE_VBLANK_ACK(i32) #1

declare dso_local i64 @G_007EDC_LB_D2_VBLANK_INTERRUPT(i32) #1

declare dso_local i32 @S_006D34_D2MODE_VBLANK_ACK(i32) #1

declare dso_local i64 @G_007EDC_DC_HOT_PLUG_DETECT1_INTERRUPT(i32) #1

declare dso_local i32 @S_007D08_DC_HOT_PLUG_DETECT1_INT_ACK(i32) #1

declare dso_local i64 @G_007EDC_DC_HOT_PLUG_DETECT2_INTERRUPT(i32) #1

declare dso_local i32 @S_007D18_DC_HOT_PLUG_DETECT2_INT_ACK(i32) #1

declare dso_local i64 @ASIC_IS_DCE2(%struct.radeon_device*) #1

declare dso_local i32 @S_007404_HDMI0_AZ_FORMAT_WTRIG(i32) #1

declare dso_local i64 @G_007404_HDMI0_AZ_FORMAT_WTRIG(i32) #1

declare dso_local i32 @S_007408_HDMI0_AZ_FORMAT_WTRIG_ACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
