; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_parse_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_parse_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_12__, %struct.radeon_mode_info }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.rv6xx_ps* }
%struct.rv6xx_ps = type { i32 }
%struct.radeon_mode_info = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32 }
%union.pplib_power_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }
%union.pplib_clock_info = type { i32 }
%union.power_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PowerPlayInfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rv6xx_parse_power_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv6xx_parse_power_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mode_info*, align 8
  %5 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  %6 = alloca %union.pplib_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.pplib_clock_info*, align 8
  %10 = alloca %union.power_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rv6xx_ps*, align 8
  %16 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 1
  store %struct.radeon_mode_info* %18, %struct.radeon_mode_info** %4, align 8
  %19 = load i32, i32* @DATA, align 4
  %20 = load i32, i32* @PowerPlayInfo, align 4
  %21 = call i32 @GetIndexIntoMasterTable(i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @atom_parse_data_header(%struct.TYPE_15__* %24, i32 %25, i32* null, i32* %13, i32* %14, i64* %12)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %226

31:                                               ; preds = %1
  %32 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = add nsw i64 %36, %37
  %39 = inttoptr i64 %38 to %union.power_info*
  store %union.power_info* %39, %union.power_info** %10, align 8
  %40 = load %union.power_info*, %union.power_info** %10, align 8
  %41 = bitcast %union.power_info* %40 to %struct.TYPE_13__*
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.TYPE_14__* @kcalloc(i32 %43, i32 4, i32 %44)
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %49, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = icmp ne %struct.TYPE_14__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %31
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %226

59:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %214, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %union.power_info*, %union.power_info** %10, align 8
  %63 = bitcast %union.power_info* %62 to %struct.TYPE_13__*
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %217

67:                                               ; preds = %60
  %68 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %69 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %union.power_info*, %union.power_info** %10, align 8
  %76 = bitcast %union.power_info* %75 to %struct.TYPE_13__*
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le16_to_cpu(i32 %78)
  %80 = add nsw i64 %74, %79
  %81 = load i32, i32* %7, align 4
  %82 = load %union.power_info*, %union.power_info** %10, align 8
  %83 = bitcast %union.power_info* %82 to %struct.TYPE_13__*
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %81, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %80, %87
  %89 = inttoptr i64 %88 to %union.pplib_power_state*
  store %union.pplib_power_state* %89, %union.pplib_power_state** %6, align 8
  %90 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %91 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = add nsw i64 %94, %95
  %97 = load %union.power_info*, %union.power_info** %10, align 8
  %98 = bitcast %union.power_info* %97 to %struct.TYPE_13__*
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @le16_to_cpu(i32 %100)
  %102 = add nsw i64 %96, %101
  %103 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %104 = bitcast %union.pplib_power_state* %103 to %struct.TYPE_10__*
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %union.power_info*, %union.power_info** %10, align 8
  %108 = bitcast %union.power_info* %107 to %struct.TYPE_13__*
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %106, %110
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %102, %112
  %114 = inttoptr i64 %113 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %114, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %115 = load %union.power_info*, %union.power_info** %10, align 8
  %116 = bitcast %union.power_info* %115 to %struct.TYPE_13__*
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %213

121:                                              ; preds = %67
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call %struct.rv6xx_ps* @kzalloc(i32 4, i32 %122)
  store %struct.rv6xx_ps* %123, %struct.rv6xx_ps** %15, align 8
  %124 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %15, align 8
  %125 = icmp eq %struct.rv6xx_ps* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = call i32 @kfree(%struct.TYPE_14__* %131)
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %226

135:                                              ; preds = %121
  %136 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %15, align 8
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  store %struct.rv6xx_ps* %136, %struct.rv6xx_ps** %145, align 8
  %146 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %147 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i64 %153
  %155 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %156 = call i32 @rv6xx_parse_pplib_non_clock_info(%struct.radeon_device* %146, %struct.TYPE_14__* %154, %struct._ATOM_PPLIB_NONCLOCK_INFO* %155)
  %157 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %158 = bitcast %union.pplib_power_state* %157 to %struct.TYPE_10__*
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32* %161, i32** %16, align 8
  store i32 0, i32* %8, align 4
  br label %162

162:                                              ; preds = %209, %135
  %163 = load i32, i32* %8, align 4
  %164 = load %union.power_info*, %union.power_info** %10, align 8
  %165 = bitcast %union.power_info* %164 to %struct.TYPE_13__*
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, 1
  %169 = icmp slt i32 %163, %168
  br i1 %169, label %170, label %212

170:                                              ; preds = %162
  %171 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %172 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %171, i32 0, i32 0
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %12, align 8
  %177 = add nsw i64 %175, %176
  %178 = load %union.power_info*, %union.power_info** %10, align 8
  %179 = bitcast %union.power_info* %178 to %struct.TYPE_13__*
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @le16_to_cpu(i32 %181)
  %183 = add nsw i64 %177, %182
  %184 = load i32*, i32** %16, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %union.power_info*, %union.power_info** %10, align 8
  %190 = bitcast %union.power_info* %189 to %struct.TYPE_13__*
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %188, %192
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %183, %194
  %196 = inttoptr i64 %195 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %196, %union.pplib_clock_info** %9, align 8
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %199 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i64 %204
  %206 = load i32, i32* %8, align 4
  %207 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %208 = call i32 @rv6xx_parse_pplib_clock_info(%struct.radeon_device* %197, %struct.TYPE_14__* %205, i32 %206, %union.pplib_clock_info* %207)
  br label %209

209:                                              ; preds = %170
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %162

212:                                              ; preds = %162
  br label %213

213:                                              ; preds = %212, %67
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %60

217:                                              ; preds = %60
  %218 = load %union.power_info*, %union.power_info** %10, align 8
  %219 = bitcast %union.power_info* %218 to %struct.TYPE_13__*
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %223 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  store i32 %221, i32* %225, align 8
  store i32 0, i32* %2, align 4
  br label %226

226:                                              ; preds = %217, %126, %56, %28
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_15__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local %struct.TYPE_14__* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.rv6xx_ps* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

declare dso_local i32 @rv6xx_parse_pplib_non_clock_info(%struct.radeon_device*, %struct.TYPE_14__*, %struct._ATOM_PPLIB_NONCLOCK_INFO*) #1

declare dso_local i32 @rv6xx_parse_pplib_clock_info(%struct.radeon_device*, %struct.TYPE_14__*, i32, %union.pplib_clock_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
