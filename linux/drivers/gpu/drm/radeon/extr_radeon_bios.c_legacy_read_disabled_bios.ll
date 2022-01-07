; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_bios.c_legacy_read_disabled_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_bios.c_legacy_read_disabled_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@RADEON_SEPROM_CNTL1 = common dso_local global i32 0, align 4
@RADEON_VIPH_CONTROL = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RV370_BUS_CNTL = common dso_local global i32 0, align 4
@RADEON_BUS_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_EXT_CNTL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_ATI_RADEON_QY = common dso_local global i64 0, align 8
@RADEON_FP2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_SINGLE_CRTC = common dso_local global i32 0, align 4
@RADEON_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_SCK_PRESCALE_MASK = common dso_local global i32 0, align 4
@RADEON_SCK_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@RADEON_VIPH_EN = common dso_local global i32 0, align 4
@RV370_BUS_BIOS_DIS_ROM = common dso_local global i32 0, align 4
@RADEON_BUS_BIOS_DIS_ROM = common dso_local global i32 0, align 4
@RADEON_CRTC_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_DISP_REQ_EN_B = common dso_local global i32 0, align 4
@RADEON_CRTC_EXT_DISP_EN = common dso_local global i32 0, align 4
@RADEON_CRTC2_EN = common dso_local global i32 0, align 4
@RADEON_CRTC2_DISP_REQ_EN_B = common dso_local global i32 0, align 4
@RADEON_CRTC_CRT_ON = common dso_local global i32 0, align 4
@RADEON_CRTC_SYNC_TRISTAT = common dso_local global i32 0, align 4
@RADEON_CRTC_DISPLAY_DIS = common dso_local global i32 0, align 4
@RADEON_FP2_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @legacy_read_disabled_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_read_disabled_bios(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %11 = load i32, i32* @RADEON_SEPROM_CNTL1, align 4
  %12 = call i32 @RREG32(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %14 = call i32 @RREG32(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RADEON_IS_PCIE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @RV370_BUS_CNTL, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %29 = call i32 @RREG32(i32 %28)
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI_DEVICE_ID_ATI_RADEON_QY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %43 = call i32 @RREG32(i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %27
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %53 = call i32 @RREG32(i32 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* @RADEON_SEPROM_CNTL1, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @RADEON_SCK_PRESCALE_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load i32, i32* @RADEON_SCK_PRESCALE_SHIFT, align 4
  %61 = shl i32 12, %60
  %62 = or i32 %59, %61
  %63 = call i32 @WREG32(i32 %55, i32 %62)
  %64 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @RADEON_VIPH_EN, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @WREG32(i32 %64, i32 %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RADEON_IS_PCIE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %54
  %77 = load i32, i32* @RV370_BUS_CNTL, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @RV370_BUS_BIOS_DIS_ROM, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = call i32 @WREG32(i32 %77, i32 %81)
  br label %90

83:                                               ; preds = %54
  %84 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @RADEON_BUS_BIOS_DIS_ROM, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = call i32 @WREG32(i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %83, %76
  %91 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @RADEON_CRTC_EN, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = load i32, i32* @RADEON_CRTC_DISP_REQ_EN_B, align 4
  %97 = load i32, i32* @RADEON_CRTC_EXT_DISP_EN, align 4
  %98 = or i32 %96, %97
  %99 = or i32 %95, %98
  %100 = call i32 @WREG32(i32 %91, i32 %99)
  %101 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %90
  %108 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @RADEON_CRTC2_EN, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = load i32, i32* @RADEON_CRTC2_DISP_REQ_EN_B, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @WREG32(i32 %108, i32 %114)
  br label %116

116:                                              ; preds = %107, %90
  %117 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @RADEON_CRTC_CRT_ON, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  %122 = load i32, i32* @RADEON_CRTC_SYNC_TRISTAT, align 4
  %123 = load i32, i32* @RADEON_CRTC_DISPLAY_DIS, align 4
  %124 = or i32 %122, %123
  %125 = or i32 %121, %124
  %126 = call i32 @WREG32(i32 %117, i32 %125)
  %127 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @PCI_DEVICE_ID_ATI_RADEON_QY, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %116
  %137 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @RADEON_FP2_ON, align 4
  %140 = xor i32 %139, -1
  %141 = and i32 %138, %140
  %142 = call i32 @WREG32(i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %136, %116
  %144 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %145 = call i32 @radeon_read_bios(%struct.radeon_device* %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* @RADEON_SEPROM_CNTL1, align 4
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @WREG32(i32 %146, i32 %147)
  %149 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @WREG32(i32 %149, i32 %150)
  %152 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @RADEON_IS_PCIE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %143
  %159 = load i32, i32* @RV370_BUS_CNTL, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @WREG32(i32 %159, i32 %160)
  br label %166

162:                                              ; preds = %143
  %163 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @WREG32(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %158
  %167 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @WREG32(i32 %167, i32 %168)
  %170 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %166
  %177 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @WREG32(i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %166
  %181 = load i32, i32* @RADEON_CRTC_EXT_CNTL, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @WREG32(i32 %181, i32 %182)
  %184 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @PCI_DEVICE_ID_ATI_RADEON_QY, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %180
  %194 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @WREG32(i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %193, %180
  %198 = load i32, i32* %10, align 4
  ret i32 %198
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_read_bios(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
