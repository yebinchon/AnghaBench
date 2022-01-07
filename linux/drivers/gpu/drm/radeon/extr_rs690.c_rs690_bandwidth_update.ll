; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_bandwidth_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_bandwidth_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode, i64 }
%struct.drm_display_mode = type { i32 }
%struct.rs690_watermark = type { i32 }

@CHIP_RS690 = common dso_local global i64 0, align 8
@CHIP_RS740 = common dso_local global i64 0, align 8
@R_000104_MC_INIT_MISC_LAT_TIMER = common dso_local global i32 0, align 4
@C_000104_MC_DISP0R_INIT_LAT = common dso_local global i32 0, align 4
@C_000104_MC_DISP1R_INIT_LAT = common dso_local global i32 0, align 4
@R_006C9C_DCP_CONTROL = common dso_local global i32 0, align 4
@CHIP_RS780 = common dso_local global i64 0, align 8
@CHIP_RS880 = common dso_local global i64 0, align 8
@R_006D58_LB_MAX_REQ_OUTSTANDING = common dso_local global i32 0, align 4
@R_006548_D1MODE_PRIORITY_A_CNT = common dso_local global i32 0, align 4
@R_00654C_D1MODE_PRIORITY_B_CNT = common dso_local global i32 0, align 4
@R_006D48_D2MODE_PRIORITY_A_CNT = common dso_local global i32 0, align 4
@R_006D4C_D2MODE_PRIORITY_B_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs690_bandwidth_update(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.rs690_watermark, align 4
  %6 = alloca %struct.rs690_watermark, align 4
  %7 = alloca %struct.rs690_watermark, align 4
  %8 = alloca %struct.rs690_watermark, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %4, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %204

20:                                               ; preds = %1
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i32 @radeon_update_display_priority(%struct.radeon_device* %21)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.drm_display_mode* %41, %struct.drm_display_mode** %3, align 8
  br label %42

42:                                               ; preds = %33, %20
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.drm_display_mode* %61, %struct.drm_display_mode** %4, align 8
  br label %62

62:                                               ; preds = %53, %42
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %105

67:                                               ; preds = %62
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CHIP_RS690, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CHIP_RS740, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %73, %67
  %80 = load i32, i32* @R_000104_MC_INIT_MISC_LAT_TIMER, align 4
  %81 = call i32 @RREG32_MC(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @C_000104_MC_DISP0R_INIT_LAT, align 4
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @C_000104_MC_DISP1R_INIT_LAT, align 4
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %89 = icmp ne %struct.drm_display_mode* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = call i32 @S_000104_MC_DISP0R_INIT_LAT(i32 1)
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %79
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %96 = icmp ne %struct.drm_display_mode* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = call i32 @S_000104_MC_DISP1R_INIT_LAT(i32 1)
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* @R_000104_MC_INIT_MISC_LAT_TIMER, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @WREG32_MC(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %73, %62
  %106 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %109 = call i32 @rs690_line_buffer_adjust(%struct.radeon_device* %106, %struct.drm_display_mode* %107, %struct.drm_display_mode* %108)
  %110 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CHIP_RS690, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %105
  %116 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @CHIP_RS740, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115, %105
  %122 = load i32, i32* @R_006C9C_DCP_CONTROL, align 4
  %123 = call i32 @WREG32(i32 %122, i32 0)
  br label %124

124:                                              ; preds = %121, %115
  %125 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CHIP_RS780, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CHIP_RS880, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130, %124
  %137 = load i32, i32* @R_006C9C_DCP_CONTROL, align 4
  %138 = call i32 @WREG32(i32 %137, i32 2)
  br label %139

139:                                              ; preds = %136, %130
  %140 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %141 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %144, i64 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = call i32 @rs690_crtc_bandwidth_compute(%struct.radeon_device* %140, %struct.TYPE_6__* %146, %struct.rs690_watermark* %5, i32 0)
  %148 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %149 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %152, i64 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = call i32 @rs690_crtc_bandwidth_compute(%struct.radeon_device* %148, %struct.TYPE_6__* %154, %struct.rs690_watermark* %7, i32 0)
  %156 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %157 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %160, i64 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = call i32 @rs690_crtc_bandwidth_compute(%struct.radeon_device* %156, %struct.TYPE_6__* %162, %struct.rs690_watermark* %6, i32 1)
  %164 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %165 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %168, i64 1
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = call i32 @rs690_crtc_bandwidth_compute(%struct.radeon_device* %164, %struct.TYPE_6__* %170, %struct.rs690_watermark* %8, i32 1)
  %172 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %5, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  %175 = getelementptr inbounds %struct.rs690_watermark, %struct.rs690_watermark* %7, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = shl i32 %177, 16
  %179 = load i32, i32* %9, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* @R_006D58_LB_MAX_REQ_OUTSTANDING, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @WREG32(i32 %181, i32 %182)
  %184 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %185 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %186 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %187 = call i32 @rs690_compute_mode_priority(%struct.radeon_device* %184, %struct.rs690_watermark* %5, %struct.rs690_watermark* %7, %struct.drm_display_mode* %185, %struct.drm_display_mode* %186, i32* %10, i32* %12)
  %188 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %189 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %190 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %191 = call i32 @rs690_compute_mode_priority(%struct.radeon_device* %188, %struct.rs690_watermark* %6, %struct.rs690_watermark* %8, %struct.drm_display_mode* %189, %struct.drm_display_mode* %190, i32* %11, i32* %13)
  %192 = load i32, i32* @R_006548_D1MODE_PRIORITY_A_CNT, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @WREG32(i32 %192, i32 %193)
  %195 = load i32, i32* @R_00654C_D1MODE_PRIORITY_B_CNT, align 4
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @WREG32(i32 %195, i32 %196)
  %198 = load i32, i32* @R_006D48_D2MODE_PRIORITY_A_CNT, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @WREG32(i32 %198, i32 %199)
  %201 = load i32, i32* @R_006D4C_D2MODE_PRIORITY_B_CNT, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @WREG32(i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %139, %19
  ret void
}

declare dso_local i32 @radeon_update_display_priority(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_MC(i32) #1

declare dso_local i32 @S_000104_MC_DISP0R_INIT_LAT(i32) #1

declare dso_local i32 @S_000104_MC_DISP1R_INIT_LAT(i32) #1

declare dso_local i32 @WREG32_MC(i32, i32) #1

declare dso_local i32 @rs690_line_buffer_adjust(%struct.radeon_device*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @rs690_crtc_bandwidth_compute(%struct.radeon_device*, %struct.TYPE_6__*, %struct.rs690_watermark*, i32) #1

declare dso_local i32 @rs690_compute_mode_priority(%struct.radeon_device*, %struct.rs690_watermark*, %struct.rs690_watermark*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
