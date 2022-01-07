; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_sq_ramping_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_sq_ramping_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.ni_power_info = type { i32 }
%struct.ni_ps = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@NISLANDS_DPM2_SQ_RAMP_MAX_POWER = common dso_local global i32 0, align 4
@MAX_POWER_MASK = common dso_local global i32 0, align 4
@MAX_POWER_SHIFT = common dso_local global i32 0, align 4
@NISLANDS_DPM2_SQ_RAMP_MIN_POWER = common dso_local global i32 0, align 4
@MIN_POWER_MASK = common dso_local global i32 0, align 4
@MIN_POWER_SHIFT = common dso_local global i32 0, align 4
@NISLANDS_DPM2_SQ_RAMP_MAX_POWER_DELTA = common dso_local global i32 0, align 4
@MAX_POWER_DELTA_MASK = common dso_local global i32 0, align 4
@MAX_POWER_DELTA_SHIFT = common dso_local global i32 0, align 4
@NISLANDS_DPM2_SQ_RAMP_STI_SIZE = common dso_local global i32 0, align 4
@STI_SIZE_MASK = common dso_local global i32 0, align 4
@STI_SIZE_SHIFT = common dso_local global i32 0, align 4
@NISLANDS_DPM2_SQ_RAMP_LTI_RATIO = common dso_local global i32 0, align 4
@LTI_RATIO_MASK = common dso_local global i32 0, align 4
@LTI_RATIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_11__*)* @ni_populate_sq_ramping_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_populate_sq_ramping_values(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.ni_power_info*, align 8
  %9 = alloca %struct.ni_ps*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %15 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %14)
  store %struct.ni_power_info* %15, %struct.ni_power_info** %8, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %17 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %16)
  store %struct.ni_ps* %17, %struct.ni_ps** %9, align 8
  %18 = load %struct.ni_power_info*, %struct.ni_power_info** %8, align 8
  %19 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.ni_ps*, %struct.ni_ps** %9, align 8
  %22 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %166

28:                                               ; preds = %3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ni_ps*, %struct.ni_ps** %9, align 8
  %33 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %166

39:                                               ; preds = %28
  %40 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %166

49:                                               ; preds = %39
  %50 = load i32, i32* @NISLANDS_DPM2_SQ_RAMP_MAX_POWER, align 4
  %51 = load i32, i32* @MAX_POWER_MASK, align 4
  %52 = load i32, i32* @MAX_POWER_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* @NISLANDS_DPM2_SQ_RAMP_MIN_POWER, align 4
  %58 = load i32, i32* @MIN_POWER_MASK, align 4
  %59 = load i32, i32* @MIN_POWER_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* @NISLANDS_DPM2_SQ_RAMP_MAX_POWER_DELTA, align 4
  %65 = load i32, i32* @MAX_POWER_DELTA_MASK, align 4
  %66 = load i32, i32* @MAX_POWER_DELTA_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i32, i32* @NISLANDS_DPM2_SQ_RAMP_STI_SIZE, align 4
  %72 = load i32, i32* @STI_SIZE_MASK, align 4
  %73 = load i32, i32* @STI_SIZE_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i32, i32* @NISLANDS_DPM2_SQ_RAMP_LTI_RATIO, align 4
  %79 = load i32, i32* @LTI_RATIO_MASK, align 4
  %80 = load i32, i32* @LTI_RATIO_SHIFT, align 4
  %81 = ashr i32 %79, %80
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %77
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %162, %84
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.ni_ps*, %struct.ni_ps** %9, align 8
  %88 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %165

91:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %92 = load %struct.ni_ps*, %struct.ni_ps** %9, align 8
  %93 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %99, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %91
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %106
  %110 = load i32, i32* @NISLANDS_DPM2_SQ_RAMP_MAX_POWER, align 4
  %111 = call i32 @MAX_POWER(i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* @NISLANDS_DPM2_SQ_RAMP_MIN_POWER, align 4
  %115 = call i32 @MIN_POWER(i32 %114)
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* @NISLANDS_DPM2_SQ_RAMP_MAX_POWER_DELTA, align 4
  %119 = call i32 @MAX_POWER_DELTA(i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* @NISLANDS_DPM2_SQ_RAMP_STI_SIZE, align 4
  %123 = call i32 @STI_SIZE(i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* @NISLANDS_DPM2_SQ_RAMP_LTI_RATIO, align 4
  %127 = call i32 @LTI_RATIO(i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %143

130:                                              ; preds = %106, %91
  %131 = load i32, i32* @MAX_POWER_MASK, align 4
  %132 = load i32, i32* @MIN_POWER_MASK, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* @MAX_POWER_DELTA_MASK, align 4
  %137 = load i32, i32* @STI_SIZE_MASK, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @LTI_RATIO_MASK, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %130, %109
  %144 = load i32, i32* %10, align 4
  %145 = call i8* @cpu_to_be32(i32 %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  store i8* %145, i8** %152, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i8* @cpu_to_be32(i32 %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i8* %154, i8** %161, align 8
  br label %162

162:                                              ; preds = %143
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %85

165:                                              ; preds = %85
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %46, %36, %25
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @MAX_POWER(i32) #1

declare dso_local i32 @MIN_POWER(i32) #1

declare dso_local i32 @MAX_POWER_DELTA(i32) #1

declare dso_local i32 @STI_SIZE(i32) #1

declare dso_local i32 @LTI_RATIO(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
