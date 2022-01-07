; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds.c_oaktrail_lvds_get_configuration_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds.c_oaktrail_lvds_get_configuration_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.oaktrail_timing_info }
%struct.oaktrail_timing_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.psb_intel_mode_device = type { %struct.drm_display_mode*, i64 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.psb_intel_mode_device*)* @oaktrail_lvds_get_configuration_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oaktrail_lvds_get_configuration_mode(%struct.drm_device* %0, %struct.psb_intel_mode_device* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.psb_intel_mode_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_psb_private*, align 8
  %7 = alloca %struct.oaktrail_timing_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.psb_intel_mode_device* %1, %struct.psb_intel_mode_device** %4, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  store %struct.drm_psb_private* %10, %struct.drm_psb_private** %6, align 8
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %12 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.oaktrail_timing_info* %13, %struct.oaktrail_timing_info** %7, align 8
  %14 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %15 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %14, i32 0, i32 0
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %15, align 8
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %17 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %140

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.drm_display_mode* @kzalloc(i32 36, i32 %21)
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %5, align 8
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %24 = icmp ne %struct.drm_display_mode* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %194

26:                                               ; preds = %20
  %27 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %28 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %32 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %30, %33
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %38 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %42 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %51 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %55 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = add nsw i32 %49, %57
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %65 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %69 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %67, %70
  %72 = add nsw i32 %63, %71
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %79 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 8
  %82 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %83 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %81, %84
  %86 = add nsw i32 %77, %85
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %93 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 4
  %96 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %97 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %96, i32 0, i32 11
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %95, %98
  %100 = add nsw i32 %91, %99
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %104 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %107 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 4
  %110 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %111 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %110, i32 0, i32 13
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %109, %112
  %114 = add nsw i32 %105, %113
  %115 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %116 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  %117 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %118 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %121 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %120, i32 0, i32 14
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %125 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %123, %126
  %128 = add nsw i32 %119, %127
  %129 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %130 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  %131 = load %struct.oaktrail_timing_info*, %struct.oaktrail_timing_info** %7, align 8
  %132 = getelementptr inbounds %struct.oaktrail_timing_info, %struct.oaktrail_timing_info* %131, i32 0, i32 16
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 10
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 8
  store i32 %134, i32* %136, align 4
  %137 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %138 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %139 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %138, i32 0, i32 0
  store %struct.drm_display_mode* %137, %struct.drm_display_mode** %139, align 8
  br label %140

140:                                              ; preds = %26, %2
  %141 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %142 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %141, i32 0, i32 0
  %143 = load %struct.drm_display_mode*, %struct.drm_display_mode** %142, align 8
  %144 = icmp eq %struct.drm_display_mode* %143, null
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %147 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %152 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %153 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @drm_mode_duplicate(%struct.drm_device* %151, i64 %154)
  %156 = bitcast i8* %155 to %struct.drm_display_mode*
  %157 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %158 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %157, i32 0, i32 0
  store %struct.drm_display_mode* %156, %struct.drm_display_mode** %158, align 8
  br label %159

159:                                              ; preds = %150, %145, %140
  %160 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %161 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %160, i32 0, i32 0
  %162 = load %struct.drm_display_mode*, %struct.drm_display_mode** %161, align 8
  %163 = icmp eq %struct.drm_display_mode* %162, null
  br i1 %163, label %164, label %179

164:                                              ; preds = %159
  %165 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %166 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %171 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  %172 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i8* @drm_mode_duplicate(%struct.drm_device* %170, i64 %173)
  %175 = bitcast i8* %174 to %struct.drm_display_mode*
  %176 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %177 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %176, i32 0, i32 0
  store %struct.drm_display_mode* %175, %struct.drm_display_mode** %177, align 8
  br label %178

178:                                              ; preds = %169, %164
  br label %179

179:                                              ; preds = %178, %159
  %180 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %181 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %180, i32 0, i32 0
  %182 = load %struct.drm_display_mode*, %struct.drm_display_mode** %181, align 8
  %183 = icmp eq %struct.drm_display_mode* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %194

185:                                              ; preds = %179
  %186 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %187 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %186, i32 0, i32 0
  %188 = load %struct.drm_display_mode*, %struct.drm_display_mode** %187, align 8
  %189 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %188)
  %190 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %4, align 8
  %191 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %190, i32 0, i32 0
  %192 = load %struct.drm_display_mode*, %struct.drm_display_mode** %191, align 8
  %193 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %192, i32 0)
  br label %194

194:                                              ; preds = %185, %184, %25
  ret void
}

declare dso_local %struct.drm_display_mode* @kzalloc(i32, i32) #1

declare dso_local i8* @drm_mode_duplicate(%struct.drm_device*, i64) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
