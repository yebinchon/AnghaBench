; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_parse_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_parse_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_12__, %struct.radeon_mode_info }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.igp_ps* }
%struct.igp_ps = type { i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rs780_parse_power_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs780_parse_power_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mode_info*, align 8
  %5 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  %6 = alloca %union.pplib_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.pplib_clock_info*, align 8
  %9 = alloca %union.power_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.igp_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 1
  store %struct.radeon_mode_info* %16, %struct.radeon_mode_info** %4, align 8
  %17 = load i32, i32* @DATA, align 4
  %18 = load i32, i32* @PowerPlayInfo, align 4
  %19 = call i32 @GetIndexIntoMasterTable(i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @atom_parse_data_header(%struct.TYPE_15__* %22, i32 %23, i32* null, i32* %12, i32* %13, i64* %11)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %210

29:                                               ; preds = %1
  %30 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %31 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add nsw i64 %34, %35
  %37 = inttoptr i64 %36 to %union.power_info*
  store %union.power_info* %37, %union.power_info** %9, align 8
  %38 = load %union.power_info*, %union.power_info** %9, align 8
  %39 = bitcast %union.power_info* %38 to %struct.TYPE_13__*
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.TYPE_14__* @kcalloc(i32 %41, i32 4, i32 %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %47, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = icmp ne %struct.TYPE_14__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %29
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %210

57:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %198, %57
  %59 = load i32, i32* %7, align 4
  %60 = load %union.power_info*, %union.power_info** %9, align 8
  %61 = bitcast %union.power_info* %60 to %struct.TYPE_13__*
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %201

65:                                               ; preds = %58
  %66 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %67 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %union.power_info*, %union.power_info** %9, align 8
  %74 = bitcast %union.power_info* %73 to %struct.TYPE_13__*
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @le16_to_cpu(i32 %76)
  %78 = add nsw i64 %72, %77
  %79 = load i32, i32* %7, align 4
  %80 = load %union.power_info*, %union.power_info** %9, align 8
  %81 = bitcast %union.power_info* %80 to %struct.TYPE_13__*
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %79, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %78, %85
  %87 = inttoptr i64 %86 to %union.pplib_power_state*
  store %union.pplib_power_state* %87, %union.pplib_power_state** %6, align 8
  %88 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %89 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %11, align 8
  %94 = add nsw i64 %92, %93
  %95 = load %union.power_info*, %union.power_info** %9, align 8
  %96 = bitcast %union.power_info* %95 to %struct.TYPE_13__*
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @le16_to_cpu(i32 %98)
  %100 = add nsw i64 %94, %99
  %101 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %102 = bitcast %union.pplib_power_state* %101 to %struct.TYPE_10__*
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %union.power_info*, %union.power_info** %9, align 8
  %106 = bitcast %union.power_info* %105 to %struct.TYPE_13__*
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %104, %108
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %100, %110
  %112 = inttoptr i64 %111 to %struct._ATOM_PPLIB_NONCLOCK_INFO*
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %112, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %113 = load %union.power_info*, %union.power_info** %9, align 8
  %114 = bitcast %union.power_info* %113 to %struct.TYPE_13__*
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %197

119:                                              ; preds = %65
  %120 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %121 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %11, align 8
  %126 = add nsw i64 %124, %125
  %127 = load %union.power_info*, %union.power_info** %9, align 8
  %128 = bitcast %union.power_info* %127 to %struct.TYPE_13__*
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @le16_to_cpu(i32 %130)
  %132 = add nsw i64 %126, %131
  %133 = load %union.pplib_power_state*, %union.pplib_power_state** %6, align 8
  %134 = bitcast %union.pplib_power_state* %133 to %struct.TYPE_10__*
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load %union.power_info*, %union.power_info** %9, align 8
  %140 = bitcast %union.power_info* %139 to %struct.TYPE_13__*
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %138, %142
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %132, %144
  %146 = inttoptr i64 %145 to %union.pplib_clock_info*
  store %union.pplib_clock_info* %146, %union.pplib_clock_info** %8, align 8
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call %struct.igp_ps* @kzalloc(i32 4, i32 %147)
  store %struct.igp_ps* %148, %struct.igp_ps** %14, align 8
  %149 = load %struct.igp_ps*, %struct.igp_ps** %14, align 8
  %150 = icmp eq %struct.igp_ps* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %119
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = call i32 @kfree(%struct.TYPE_14__* %156)
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %210

160:                                              ; preds = %119
  %161 = load %struct.igp_ps*, %struct.igp_ps** %14, align 8
  %162 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  store %struct.igp_ps* %161, %struct.igp_ps** %170, align 8
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 %178
  %180 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %5, align 8
  %181 = load %union.power_info*, %union.power_info** %9, align 8
  %182 = bitcast %union.power_info* %181 to %struct.TYPE_13__*
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @rs780_parse_pplib_non_clock_info(%struct.radeon_device* %171, %struct.TYPE_14__* %179, %struct._ATOM_PPLIB_NONCLOCK_INFO* %180, i32 %184)
  %186 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i64 %193
  %195 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %196 = call i32 @rs780_parse_pplib_clock_info(%struct.radeon_device* %186, %struct.TYPE_14__* %194, %union.pplib_clock_info* %195)
  br label %197

197:                                              ; preds = %160, %65
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %58

201:                                              ; preds = %58
  %202 = load %union.power_info*, %union.power_info** %9, align 8
  %203 = bitcast %union.power_info* %202 to %struct.TYPE_13__*
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %207 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  store i32 %205, i32* %209, align 8
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %201, %151, %54, %26
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_15__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local %struct.TYPE_14__* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.igp_ps* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

declare dso_local i32 @rs780_parse_pplib_non_clock_info(%struct.radeon_device*, %struct.TYPE_14__*, %struct._ATOM_PPLIB_NONCLOCK_INFO*, i32) #1

declare dso_local i32 @rs780_parse_pplib_clock_info(%struct.radeon_device*, %struct.TYPE_14__*, %union.pplib_clock_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
