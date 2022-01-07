; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_bapm_vddc_vid_sidd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_bapm_vddc_vid_sidd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ci_power_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_EVV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_populate_bapm_vddc_vid_sidd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_bapm_vddc_vid_sidd(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %9)
  store %struct.ci_power_info* %10, %struct.ci_power_info** %4, align 8
  %11 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %12 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %16 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %20 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %169

34:                                               ; preds = %1
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 8
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %169

46:                                               ; preds = %34
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %53, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %46
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %169

65:                                               ; preds = %46
  store i64 0, i64* %8, align 8
  br label %66

66:                                               ; preds = %165, %65
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %67, %75
  br i1 %76, label %77, label %168

77:                                               ; preds = %66
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ATOM_PP_PLATFORM_CAP_EVV, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %132

86:                                               ; preds = %77
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ci_convert_to_vid(i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ci_convert_to_vid(i32 %112)
  %114 = load i32*, i32** %5, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %113, i32* %116, align 4
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ci_convert_to_vid(i32 %127)
  %129 = load i32*, i32** %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32 %128, i32* %131, align 4
  br label %164

132:                                              ; preds = %77
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ci_convert_to_vid(i32 %143)
  %145 = load i32*, i32** %6, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32 %144, i32* %147, align 4
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @ci_convert_to_vid(i32 %159)
  %161 = load i32*, i32** %5, align 8
  %162 = load i64, i64* %8, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32 %160, i32* %163, align 4
  br label %164

164:                                              ; preds = %132, %86
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %8, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %8, align 8
  br label %66

168:                                              ; preds = %66
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %62, %43, %31
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_convert_to_vid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
