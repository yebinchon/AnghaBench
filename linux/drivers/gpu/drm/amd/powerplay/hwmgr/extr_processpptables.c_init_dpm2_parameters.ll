; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_init_dpm2_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_init_dpm2_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i8*, i8*, i64, i8*, i64, i64, i64, i64, i8*, i8* }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64 }

@PHM_PlatformCaps_PowerControl = common dso_local global i32 0, align 4
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V5 = common dso_local global i64 0, align 8
@PHM_PlatformCaps_EnablePlatformPowerManagement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_14__*)* @init_dpm2_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_dpm2_parameters(%struct.pp_hwmgr* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @le16_to_cpu(i64 %15)
  %17 = icmp uge i64 %16, 48
  br i1 %17, label %18, label %181

18:                                               ; preds = %2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = bitcast %struct.TYPE_14__* %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 7
  %23 = bitcast i32* %22 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %7, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %8, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le32_to_cpu(i32 %29)
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 13
  store i8* %30, i8** %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @le32_to_cpu(i32 %36)
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 12
  store i8* %37, i8** %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @le16_to_cpu(i64 %43)
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  store i64 %44, i64* %47, align 8
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 11
  store i64 0, i64* %50, align 8
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 10
  store i64 0, i64* %53, align 8
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %55 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %58 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 8
  store i64 0, i64* %59, align 8
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %61 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 1500000, i32* %62, align 8
  %63 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %64 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 6250, i32* %65, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @le32_to_cpu(i32 %68)
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %71 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 7
  store i8* %69, i8** %72, align 8
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %74 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %18
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %80 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PHM_PlatformCaps_PowerControl, align 4
  %84 = call i32 @phm_cap_set(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %18
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @le32_to_cpu(i32 %88)
  %90 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %91 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 5
  store i8* %89, i8** %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @le32_to_cpu(i32 %95)
  %97 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %98 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 4
  store i8* %96, i8** %99, align 8
  %100 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %101 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 0, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %85
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = ptrtoint %struct.TYPE_11__* %108 to i64
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @le16_to_cpu(i64 %112)
  %114 = add i64 %109, %113
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %12, align 8
  %116 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %118 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @get_cac_leakage_table(%struct.pp_hwmgr* %116, i32** %119, i32* %120)
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %107, %85
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @le16_to_cpu(i64 %125)
  %127 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %128 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  store i64 %126, i64* %129, align 8
  %130 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %131 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i32* null, i32** %132, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 0, %135
  br i1 %136, label %137, label %180

137:                                              ; preds = %122
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = ptrtoint %struct.TYPE_14__* %138 to i64
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @le16_to_cpu(i64 %142)
  %144 = add i64 %139, %143
  %145 = inttoptr i64 %144 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %9, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %179

150:                                              ; preds = %137
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @le16_to_cpu(i64 %153)
  %155 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V5, align 8
  %156 = icmp sge i64 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %150
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @le16_to_cpu(i64 %160)
  store i64 %161, i64* %10, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %163 = ptrtoint %struct.TYPE_14__* %162 to i64
  %164 = load i64, i64* %10, align 8
  %165 = add i64 %163, %164
  %166 = inttoptr i64 %165 to i32*
  store i32* %166, i32** %11, align 8
  %167 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %168 = load i32*, i32** %11, align 8
  %169 = call i64 @get_platform_power_management_table(%struct.pp_hwmgr* %167, i32* %168)
  %170 = icmp eq i64 0, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %157
  %172 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %173 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @PHM_PlatformCaps_EnablePlatformPowerManagement, align 4
  %177 = call i32 @phm_cap_set(i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %171, %157
  br label %179

179:                                              ; preds = %178, %150, %137
  br label %180

180:                                              ; preds = %179, %122
  br label %181

181:                                              ; preds = %180, %2
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @phm_cap_set(i32, i32) #1

declare dso_local i32 @get_cac_leakage_table(%struct.pp_hwmgr*, i32**, i32*) #1

declare dso_local i64 @get_platform_power_management_table(%struct.pp_hwmgr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
