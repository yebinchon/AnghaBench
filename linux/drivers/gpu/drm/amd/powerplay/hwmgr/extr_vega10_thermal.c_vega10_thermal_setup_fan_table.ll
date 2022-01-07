; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_thermal_setup_fan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_thermal_setup_fan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_8__, %struct.vega10_hwmgr* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64 }
%struct.vega10_hwmgr = type { %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i8*, i32, i8* }
%struct.TYPE_6__ = type { i32 }

@GNLD_FAN_CONTROL = common dso_local global i64 0, align 8
@PPSMC_MSG_SetFanTemperatureTarget = common dso_local global i32 0, align 4
@PPTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to update Fan Control Table in PPTable!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega10_thermal_setup_fan_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vega10_hwmgr*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 1
  %9 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %8, align 8
  store %struct.vega10_hwmgr* %9, %struct.vega10_hwmgr** %5, align 8
  %10 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %11 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %14 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load i64, i64* @GNLD_FAN_CONTROL, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %160

22:                                               ; preds = %1
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 15
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 15
  store i8* %28, i8** %30, align 8
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 14
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 13
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 13
  store i8* %43, i8** %45, align 8
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %47 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 12
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 12
  store i64 %50, i64* %52, align 8
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %54 = load i32, i32* @PPSMC_MSG_SetFanTemperatureTarget, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 12
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %53, i32 %54, i32 %58)
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %61 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 255
  %66 = sdiv i32 %65, 100
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %70 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 11
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 11
  store i8* %74, i8** %76, align 8
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 8
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %85 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %92 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %99 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %106 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %113 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %120 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %127 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %134 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %141 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %148 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %149 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = bitcast %struct.TYPE_10__* %150 to i32*
  %152 = load i32, i32* @PPTABLE, align 4
  %153 = call i32 @smum_smc_table_manager(%struct.pp_hwmgr* %147, i32* %151, i32 %152, i32 0)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %22
  %157 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %22
  %159 = load i32, i32* %4, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %21
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smum_smc_table_manager(%struct.pp_hwmgr*, i32*, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
