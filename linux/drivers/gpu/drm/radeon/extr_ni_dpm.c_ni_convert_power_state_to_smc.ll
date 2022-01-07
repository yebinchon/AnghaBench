; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_convert_power_state_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_convert_power_state_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, i8*, i64 }
%struct.evergreen_power_info = type { i64 }
%struct.ni_power_info = type { i32, i32 }
%struct.ni_ps = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@ATOM_PPLIB_DISALLOW_ON_DC = common dso_local global i32 0, align 4
@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@NISLANDS_MAX_SMC_PERFORMANCE_LEVELS_PER_SWSTATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NISLANDS_DRIVER_STATE_ARB_INDEX = common dso_local global i64 0, align 8
@PPSMC_DISPLAY_WATERMARK_LOW = common dso_local global i8* null, align 8
@PPSMC_DISPLAY_WATERMARK_HIGH = common dso_local global i8* null, align 8
@NISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT = common dso_local global i64 0, align 8
@NI_SMC_SOFT_REGISTER_watermark_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_9__*)* @ni_convert_power_state_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_convert_power_state_to_smc(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.evergreen_power_info*, align 8
  %9 = alloca %struct.ni_power_info*, align 8
  %10 = alloca %struct.ni_ps*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %15 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %14)
  store %struct.evergreen_power_info* %15, %struct.evergreen_power_info** %8, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %17 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %16)
  store %struct.ni_power_info* %17, %struct.ni_power_info** %9, align 8
  %18 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %19 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %18)
  store %struct.ni_ps* %19, %struct.ni_ps** %10, align 8
  %20 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %21 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %24 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 100
  %32 = sdiv i32 %31, 100
  store i32 %32, i32* %13, align 4
  %33 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %34 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ATOM_PPLIB_DISALLOW_ON_DC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %49 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NISLANDS_MAX_SMC_PERFORMANCE_LEVELS_PER_SWSTATE, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %206

56:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %168, %56
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %60 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %171

63:                                               ; preds = %57
  %64 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %65 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %66 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %75
  %77 = call i32 @ni_convert_power_level_to_smc(%struct.radeon_device* %64, %struct.TYPE_10__* %70, %struct.TYPE_11__* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i64, i64* @NISLANDS_DRIVER_STATE_ARB_INDEX, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  store i64 %81, i64* %88, align 8
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %63
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %4, align 4
  br label %206

93:                                               ; preds = %63
  %94 = load %struct.ni_power_info*, %struct.ni_power_info** %9, align 8
  %95 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %93
  %99 = load %struct.ni_ps*, %struct.ni_ps** %10, align 8
  %100 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i8*, i8** @PPSMC_DISPLAY_WATERMARK_LOW, align 8
  br label %113

111:                                              ; preds = %98
  %112 = load i8*, i8** @PPSMC_DISPLAY_WATERMARK_HIGH, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i8* [ %110, %109 ], [ %112, %111 ]
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store i8* %114, i8** %121, align 8
  br label %138

122:                                              ; preds = %93
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 2
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i8*, i8** @PPSMC_DISPLAY_WATERMARK_LOW, align 8
  br label %129

127:                                              ; preds = %122
  %128 = load i8*, i8** @PPSMC_DISPLAY_WATERMARK_HIGH, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i8* [ %126, %125 ], [ %128, %127 ]
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  store i8* %130, i8** %137, align 8
  br label %138

138:                                              ; preds = %129, %113
  %139 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %140 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %138
  %144 = load i64, i64* @NISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  store i64 %147, i64* %154, align 8
  br label %163

155:                                              ; preds = %138
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %155, %143
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %57

171:                                              ; preds = %57
  %172 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %173 = load i32, i32* @NI_SMC_SOFT_REGISTER_watermark_threshold, align 4
  %174 = load i32, i32* %13, align 4
  %175 = sdiv i32 %174, 512
  %176 = call i32 @cpu_to_be32(i32 %175)
  %177 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %172, i32 %173, i32 %176)
  %178 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %179 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %181 = call i32 @ni_populate_smc_sp(%struct.radeon_device* %178, %struct.radeon_ps* %179, %struct.TYPE_9__* %180)
  %182 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %183 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %185 = call i32 @ni_populate_power_containment_values(%struct.radeon_device* %182, %struct.radeon_ps* %183, %struct.TYPE_9__* %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %171
  %189 = load %struct.ni_power_info*, %struct.ni_power_info** %9, align 8
  %190 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %189, i32 0, i32 0
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %171
  %192 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %193 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = call i32 @ni_populate_sq_ramping_values(%struct.radeon_device* %192, %struct.radeon_ps* %193, %struct.TYPE_9__* %194)
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load %struct.ni_power_info*, %struct.ni_power_info** %9, align 8
  %200 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %199, i32 0, i32 1
  store i32 0, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %191
  %202 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %203 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %205 = call i32 @ni_populate_smc_t(%struct.radeon_device* %202, %struct.radeon_ps* %203, %struct.TYPE_9__* %204)
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %201, %91, %53
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @ni_convert_power_level_to_smc(%struct.radeon_device*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @rv770_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ni_populate_smc_sp(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_9__*) #1

declare dso_local i32 @ni_populate_power_containment_values(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_9__*) #1

declare dso_local i32 @ni_populate_sq_ramping_values(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_9__*) #1

declare dso_local i32 @ni_populate_smc_t(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
