; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv7xx_parse_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv7xx_parse_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_12__, %struct.radeon_mode_info }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.rv7xx_ps* }
%struct.rv7xx_ps = type { i32 }
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv7xx_parse_power_table(%struct.radeon_device* %0) #0 {
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
  %15 = alloca %struct.rv7xx_ps*, align 8
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
  br label %230

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
  br label %230

59:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %218, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %union.power_info*, %union.power_info** %10, align 8
  %63 = bitcast %union.power_info* %62 to %struct.TYPE_13__*
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %221

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
  br i1 %120, label %121, label %217

121:                                              ; preds = %67
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call %struct.rv7xx_ps* @kzalloc(i32 4, i32 %122)
  store %struct.rv7xx_ps* %123, %struct.rv7xx_ps** %15, align 8
  %124 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %15, align 8
  %125 = icmp eq %struct.rv7xx_ps* %124, null
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
  br label %230

135:                                              ; preds = %121
  %136 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %15, align 8
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  store %struct.rv7xx_ps* %136, %struct.rv7xx_ps** %145, align 8
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
  %156 = load %union.power_info*, %union.power_info** %10, align 8
  %157 = bitcast %union.power_info* %156 to %struct.TYPE_13__*
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @rv7xx_parse_pplib_non_clock_info(%struct.radeon_device* %146, %struct.TYPE_14__* %154, %struct._ATOM_PPLIB_NONCLOCK_INFO* %155, i32 %159)
  %161 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %162 = bitcast %union.pplib_power_state* %161 to %struct.TYPE_10__*
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32* %165, i32** %16, align 8
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %213, %135
  %167 = load i32, i32* %8, align 4
  %168 = load %union.power_info*, %union.power_info** %10, align 8
  %169 = bitcast %union.power_info* %168 to %struct.TYPE_13__*
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 1
  %173 = icmp slt i32 %167, %172
  br i1 %173, label %174, label %216

174:                                              ; preds = %166
  %175 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %176 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %175, i32 0, i32 0
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %12, align 8
  %181 = add nsw i64 %179, %180
  %182 = load %union.power_info*, %union.power_info** %10, align 8
  %183 = bitcast %union.power_info* %182 to %struct.TYPE_13__*
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @le16_to_cpu(i32 %185)
  %187 = add nsw i64 %181, %186
  %188 = load i32*, i32** %16, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %union.power_info*, %union.power_info** %10, align 8
  %194 = bitcast %union.power_info* %193 to %struct.TYPE_13__*
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %192, %196
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %187, %198
  %200 = inttoptr i64 %199 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %200, %union.pplib_clock_info** %9, align 8
  %201 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i64 %208
  %210 = load i32, i32* %8, align 4
  %211 = load %union.pplib_clock_info*, %union.pplib_clock_info** %9, align 8
  %212 = call i32 @rv7xx_parse_pplib_clock_info(%struct.radeon_device* %201, %struct.TYPE_14__* %209, i32 %210, %union.pplib_clock_info* %211)
  br label %213

213:                                              ; preds = %174
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %166

216:                                              ; preds = %166
  br label %217

217:                                              ; preds = %216, %67
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %60

221:                                              ; preds = %60
  %222 = load %union.power_info*, %union.power_info** %10, align 8
  %223 = bitcast %union.power_info* %222 to %struct.TYPE_13__*
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %227 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  store i32 %225, i32* %229, align 8
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %221, %126, %56, %28
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_15__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local %struct.TYPE_14__* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.rv7xx_ps* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

declare dso_local i32 @rv7xx_parse_pplib_non_clock_info(%struct.radeon_device*, %struct.TYPE_14__*, %struct._ATOM_PPLIB_NONCLOCK_INFO*, i32) #1

declare dso_local i32 @rv7xx_parse_pplib_clock_info(%struct.radeon_device*, %struct.TYPE_14__*, i32, %union.pplib_clock_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
