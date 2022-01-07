; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_apply_state_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_apply_state_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.radeon_clock_and_voltage_limits, i32, i32, i32, i32, %struct.radeon_clock_and_voltage_limits }
%struct.radeon_clock_and_voltage_limits = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.radeon_ps = type { i32 }
%struct.ni_ps = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i32 }

@ATOM_PPLIB_R600_FLAGS_PCIEGEN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @ni_apply_state_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_apply_state_adjust_rules(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.ni_ps*, align 8
  %6 = alloca %struct.radeon_clock_and_voltage_limits*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %12 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %11)
  store %struct.ni_ps* %12, %struct.ni_ps** %5, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i64 @ni_dpm_vblank_too_short(%struct.radeon_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %2
  store i32 1, i32* %7, align 4
  br label %25

24:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 6
  store %struct.radeon_clock_and_voltage_limits* %37, %struct.radeon_clock_and_voltage_limits** %6, align 8
  br label %44

38:                                               ; preds = %25
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store %struct.radeon_clock_and_voltage_limits* %43, %struct.radeon_clock_and_voltage_limits** %6, align 8
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %159

51:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %155, %51
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %55 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %158

58:                                               ; preds = %52
  %59 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %60 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %68 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %58
  %72 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %73 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %76 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %75, i32 0, i32 2
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i64 %74, i64* %81, align 8
  br label %82

82:                                               ; preds = %71, %58
  %83 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %84 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %83, i32 0, i32 2
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %92 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %82
  %96 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %97 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %100 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %99, i32 0, i32 2
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i64 %98, i64* %105, align 8
  br label %106

106:                                              ; preds = %95, %82
  %107 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %108 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %107, i32 0, i32 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %116 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %114, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %106
  %120 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %121 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %124 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %123, i32 0, i32 2
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  store i64 %122, i64* %129, align 8
  br label %130

130:                                              ; preds = %119, %106
  %131 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %132 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %131, i32 0, i32 2
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %140 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %138, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %130
  %144 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %145 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %148 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %147, i32 0, i32 2
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  store i64 %146, i64* %153, align 8
  br label %154

154:                                              ; preds = %143, %130
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %52

158:                                              ; preds = %52
  br label %159

159:                                              ; preds = %158, %44
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %195

162:                                              ; preds = %159
  %163 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %164 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %163, i32 0, i32 2
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %167 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %175 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %174, i32 0, i32 2
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  store i64 %173, i64* %178, align 8
  %179 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %180 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %179, i32 0, i32 2
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %183 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %191 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %190, i32 0, i32 2
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  store i64 %189, i64* %194, align 8
  br label %195

195:                                              ; preds = %162, %159
  %196 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %197 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %198 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %201 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %204 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %203, i32 0, i32 2
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i64 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %209 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %208, i32 0, i32 2
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = call i32 @btc_skip_blacklist_clocks(%struct.radeon_device* %196, i64 %199, i64 %202, i64* %207, i64* %212)
  store i32 1, i32* %10, align 4
  br label %214

214:                                              ; preds = %293, %195
  %215 = load i32, i32* %10, align 4
  %216 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %217 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %296

220:                                              ; preds = %214
  %221 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %222 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %221, i32 0, i32 2
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %230 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %229, i32 0, i32 2
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp slt i64 %228, %237
  br i1 %238, label %239, label %256

239:                                              ; preds = %220
  %240 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %241 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %240, i32 0, i32 2
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %250 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %249, i32 0, i32 2
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 1
  store i64 %248, i64* %255, align 8
  br label %256

256:                                              ; preds = %239, %220
  %257 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %258 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %257, i32 0, i32 2
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %258, align 8
  %260 = load i32, i32* %10, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %266 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %265, i32 0, i32 2
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sub nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp slt i64 %264, %273
  br i1 %274, label %275, label %292

275:                                              ; preds = %256
  %276 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %277 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %276, i32 0, i32 2
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %277, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %286 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %285, i32 0, i32 2
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 2
  store i64 %284, i64* %291, align 8
  br label %292

292:                                              ; preds = %275, %256
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %10, align 4
  br label %214

296:                                              ; preds = %214
  %297 = load i32, i32* %7, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %390

299:                                              ; preds = %296
  %300 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %301 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %300, i32 0, i32 2
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %8, align 8
  %306 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %307 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %306, i32 0, i32 2
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i64 0
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %9, align 8
  store i32 1, i32* %10, align 4
  br label %312

312:                                              ; preds = %359, %299
  %313 = load i32, i32* %10, align 4
  %314 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %315 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp slt i32 %313, %316
  br i1 %317, label %318, label %362

318:                                              ; preds = %312
  %319 = load i64, i64* %8, align 8
  %320 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %321 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %320, i32 0, i32 2
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = load i32, i32* %10, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = icmp slt i64 %319, %327
  br i1 %328, label %329, label %338

329:                                              ; preds = %318
  %330 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %331 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %330, i32 0, i32 2
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %331, align 8
  %333 = load i32, i32* %10, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %8, align 8
  br label %338

338:                                              ; preds = %329, %318
  %339 = load i64, i64* %9, align 8
  %340 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %341 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %340, i32 0, i32 2
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %341, align 8
  %343 = load i32, i32* %10, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 3
  %347 = load i64, i64* %346, align 8
  %348 = icmp slt i64 %339, %347
  br i1 %348, label %349, label %358

349:                                              ; preds = %338
  %350 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %351 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %350, i32 0, i32 2
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %351, align 8
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  store i64 %357, i64* %9, align 8
  br label %358

358:                                              ; preds = %349, %338
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %10, align 4
  br label %312

362:                                              ; preds = %312
  store i32 0, i32* %10, align 4
  br label %363

363:                                              ; preds = %386, %362
  %364 = load i32, i32* %10, align 4
  %365 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %366 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = icmp slt i32 %364, %367
  br i1 %368, label %369, label %389

369:                                              ; preds = %363
  %370 = load i64, i64* %8, align 8
  %371 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %372 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %371, i32 0, i32 2
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %372, align 8
  %374 = load i32, i32* %10, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  store i64 %370, i64* %377, align 8
  %378 = load i64, i64* %9, align 8
  %379 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %380 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %379, i32 0, i32 2
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %380, align 8
  %382 = load i32, i32* %10, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 3
  store i64 %378, i64* %385, align 8
  br label %386

386:                                              ; preds = %369
  %387 = load i32, i32* %10, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %10, align 4
  br label %363

389:                                              ; preds = %363
  br label %474

390:                                              ; preds = %296
  store i32 1, i32* %10, align 4
  br label %391

391:                                              ; preds = %470, %390
  %392 = load i32, i32* %10, align 4
  %393 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %394 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = icmp slt i32 %392, %395
  br i1 %396, label %397, label %473

397:                                              ; preds = %391
  %398 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %399 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %398, i32 0, i32 2
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %399, align 8
  %401 = load i32, i32* %10, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %407 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %406, i32 0, i32 2
  %408 = load %struct.TYPE_10__*, %struct.TYPE_10__** %407, align 8
  %409 = load i32, i32* %10, align 4
  %410 = sub nsw i32 %409, 1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = icmp slt i64 %405, %414
  br i1 %415, label %416, label %433

416:                                              ; preds = %397
  %417 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %418 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %417, i32 0, i32 2
  %419 = load %struct.TYPE_10__*, %struct.TYPE_10__** %418, align 8
  %420 = load i32, i32* %10, align 4
  %421 = sub nsw i32 %420, 1
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %427 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %426, i32 0, i32 2
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %427, align 8
  %429 = load i32, i32* %10, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %431, i32 0, i32 0
  store i64 %425, i64* %432, align 8
  br label %433

433:                                              ; preds = %416, %397
  %434 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %435 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %434, i32 0, i32 2
  %436 = load %struct.TYPE_10__*, %struct.TYPE_10__** %435, align 8
  %437 = load i32, i32* %10, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i32 0, i32 3
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %443 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %442, i32 0, i32 2
  %444 = load %struct.TYPE_10__*, %struct.TYPE_10__** %443, align 8
  %445 = load i32, i32* %10, align 4
  %446 = sub nsw i32 %445, 1
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %444, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 3
  %450 = load i64, i64* %449, align 8
  %451 = icmp slt i64 %441, %450
  br i1 %451, label %452, label %469

452:                                              ; preds = %433
  %453 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %454 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %453, i32 0, i32 2
  %455 = load %struct.TYPE_10__*, %struct.TYPE_10__** %454, align 8
  %456 = load i32, i32* %10, align 4
  %457 = sub nsw i32 %456, 1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %455, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %459, i32 0, i32 3
  %461 = load i64, i64* %460, align 8
  %462 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %463 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %462, i32 0, i32 2
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %463, align 8
  %465 = load i32, i32* %10, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i32 0, i32 3
  store i64 %461, i64* %468, align 8
  br label %469

469:                                              ; preds = %452, %433
  br label %470

470:                                              ; preds = %469
  %471 = load i32, i32* %10, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %10, align 4
  br label %391

473:                                              ; preds = %391
  br label %474

474:                                              ; preds = %473, %389
  store i32 1, i32* %10, align 4
  br label %475

475:                                              ; preds = %504, %474
  %476 = load i32, i32* %10, align 4
  %477 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %478 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = icmp slt i32 %476, %479
  br i1 %480, label %481, label %507

481:                                              ; preds = %475
  %482 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %483 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %484 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %487 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %490 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %489, i32 0, i32 2
  %491 = load %struct.TYPE_10__*, %struct.TYPE_10__** %490, align 8
  %492 = load i32, i32* %10, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %494, i32 0, i32 1
  %496 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %497 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %496, i32 0, i32 2
  %498 = load %struct.TYPE_10__*, %struct.TYPE_10__** %497, align 8
  %499 = load i32, i32* %10, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %498, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 0
  %503 = call i32 @btc_skip_blacklist_clocks(%struct.radeon_device* %482, i64 %485, i64 %488, i64* %495, i64* %502)
  br label %504

504:                                              ; preds = %481
  %505 = load i32, i32* %10, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %10, align 4
  br label %475

507:                                              ; preds = %475
  store i32 0, i32* %10, align 4
  br label %508

508:                                              ; preds = %524, %507
  %509 = load i32, i32* %10, align 4
  %510 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %511 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 8
  %513 = icmp slt i32 %509, %512
  br i1 %513, label %514, label %527

514:                                              ; preds = %508
  %515 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %516 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %517 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %518 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %517, i32 0, i32 2
  %519 = load %struct.TYPE_10__*, %struct.TYPE_10__** %518, align 8
  %520 = load i32, i32* %10, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %519, i64 %521
  %523 = call i32 @btc_adjust_clock_combinations(%struct.radeon_device* %515, %struct.radeon_clock_and_voltage_limits* %516, %struct.TYPE_10__* %522)
  br label %524

524:                                              ; preds = %514
  %525 = load i32, i32* %10, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %10, align 4
  br label %508

527:                                              ; preds = %508
  store i32 0, i32* %10, align 4
  br label %528

528:                                              ; preds = %627, %527
  %529 = load i32, i32* %10, align 4
  %530 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %531 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = icmp slt i32 %529, %532
  br i1 %533, label %534, label %630

534:                                              ; preds = %528
  %535 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %536 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %538, i32 0, i32 5
  %540 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %541 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %540, i32 0, i32 2
  %542 = load %struct.TYPE_10__*, %struct.TYPE_10__** %541, align 8
  %543 = load i32, i32* %10, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %542, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i32 0, i32 1
  %547 = load i64, i64* %546, align 8
  %548 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %549 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %548, i32 0, i32 2
  %550 = load i64, i64* %549, align 8
  %551 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %552 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %551, i32 0, i32 2
  %553 = load %struct.TYPE_10__*, %struct.TYPE_10__** %552, align 8
  %554 = load i32, i32* %10, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %553, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 2
  %558 = call i32 @btc_apply_voltage_dependency_rules(i32* %539, i64 %547, i64 %550, i64* %557)
  %559 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %560 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %561, i32 0, i32 2
  %563 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %562, i32 0, i32 4
  %564 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %565 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %564, i32 0, i32 2
  %566 = load %struct.TYPE_10__*, %struct.TYPE_10__** %565, align 8
  %567 = load i32, i32* %10, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %566, i64 %568
  %570 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %569, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %573 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %572, i32 0, i32 3
  %574 = load i64, i64* %573, align 8
  %575 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %576 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %575, i32 0, i32 2
  %577 = load %struct.TYPE_10__*, %struct.TYPE_10__** %576, align 8
  %578 = load i32, i32* %10, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %577, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %580, i32 0, i32 3
  %582 = call i32 @btc_apply_voltage_dependency_rules(i32* %563, i64 %571, i64 %574, i64* %581)
  %583 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %584 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %585, i32 0, i32 2
  %587 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %586, i32 0, i32 3
  %588 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %589 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %588, i32 0, i32 2
  %590 = load %struct.TYPE_10__*, %struct.TYPE_10__** %589, align 8
  %591 = load i32, i32* %10, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %590, i64 %592
  %594 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %593, i32 0, i32 0
  %595 = load i64, i64* %594, align 8
  %596 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %597 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %596, i32 0, i32 2
  %598 = load i64, i64* %597, align 8
  %599 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %600 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %599, i32 0, i32 2
  %601 = load %struct.TYPE_10__*, %struct.TYPE_10__** %600, align 8
  %602 = load i32, i32* %10, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %601, i64 %603
  %605 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %604, i32 0, i32 2
  %606 = call i32 @btc_apply_voltage_dependency_rules(i32* %587, i64 %595, i64 %598, i64* %605)
  %607 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %608 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %608, i32 0, i32 0
  %610 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %609, i32 0, i32 2
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 2
  %612 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %613 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %612, i32 0, i32 1
  %614 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %613, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %617 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %616, i32 0, i32 2
  %618 = load i64, i64* %617, align 8
  %619 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %620 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %619, i32 0, i32 2
  %621 = load %struct.TYPE_10__*, %struct.TYPE_10__** %620, align 8
  %622 = load i32, i32* %10, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %621, i64 %623
  %625 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %624, i32 0, i32 2
  %626 = call i32 @btc_apply_voltage_dependency_rules(i32* %611, i64 %615, i64 %618, i64* %625)
  br label %627

627:                                              ; preds = %534
  %628 = load i32, i32* %10, align 4
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %10, align 4
  br label %528

630:                                              ; preds = %528
  store i32 0, i32* %10, align 4
  br label %631

631:                                              ; preds = %660, %630
  %632 = load i32, i32* %10, align 4
  %633 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %634 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = icmp slt i32 %632, %635
  br i1 %636, label %637, label %663

637:                                              ; preds = %631
  %638 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %639 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %640 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %639, i32 0, i32 2
  %641 = load i64, i64* %640, align 8
  %642 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %643 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %642, i32 0, i32 3
  %644 = load i64, i64* %643, align 8
  %645 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %646 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %645, i32 0, i32 2
  %647 = load %struct.TYPE_10__*, %struct.TYPE_10__** %646, align 8
  %648 = load i32, i32* %10, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %647, i64 %649
  %651 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %650, i32 0, i32 2
  %652 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %653 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %652, i32 0, i32 2
  %654 = load %struct.TYPE_10__*, %struct.TYPE_10__** %653, align 8
  %655 = load i32, i32* %10, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %654, i64 %656
  %658 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %657, i32 0, i32 3
  %659 = call i32 @btc_apply_voltage_delta_rules(%struct.radeon_device* %638, i64 %641, i64 %644, i64* %651, i64* %658)
  br label %660

660:                                              ; preds = %637
  %661 = load i32, i32* %10, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %10, align 4
  br label %631

663:                                              ; preds = %631
  %664 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %665 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %664, i32 0, i32 1
  store i32 1, i32* %665, align 4
  store i32 0, i32* %10, align 4
  br label %666

666:                                              ; preds = %721, %663
  %667 = load i32, i32* %10, align 4
  %668 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %669 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 8
  %671 = icmp slt i32 %667, %670
  br i1 %671, label %672, label %724

672:                                              ; preds = %666
  %673 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %674 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %673, i32 0, i32 2
  %675 = load %struct.TYPE_10__*, %struct.TYPE_10__** %674, align 8
  %676 = load i32, i32* %10, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %675, i64 %677
  %679 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %678, i32 0, i32 2
  %680 = load i64, i64* %679, align 8
  %681 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %682 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %682, i32 0, i32 0
  %684 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %683, i32 0, i32 2
  %685 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %684, i32 0, i32 1
  %686 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %685, i32 0, i32 2
  %687 = load i64, i64* %686, align 8
  %688 = icmp sgt i64 %680, %687
  br i1 %688, label %689, label %692

689:                                              ; preds = %672
  %690 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %691 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %690, i32 0, i32 1
  store i32 0, i32* %691, align 4
  br label %692

692:                                              ; preds = %689, %672
  %693 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %694 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %693, i32 0, i32 2
  %695 = load %struct.TYPE_10__*, %struct.TYPE_10__** %694, align 8
  %696 = load i32, i32* %10, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %695, i64 %697
  %699 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %698, i32 0, i32 2
  %700 = load i64, i64* %699, align 8
  %701 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %702 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %702, i32 0, i32 0
  %704 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %703, i32 0, i32 2
  %705 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %704, i32 0, i32 0
  %706 = load i64, i64* %705, align 8
  %707 = icmp slt i64 %700, %706
  br i1 %707, label %708, label %720

708:                                              ; preds = %692
  %709 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %710 = xor i32 %709, -1
  %711 = load %struct.ni_ps*, %struct.ni_ps** %5, align 8
  %712 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %711, i32 0, i32 2
  %713 = load %struct.TYPE_10__*, %struct.TYPE_10__** %712, align 8
  %714 = load i32, i32* %10, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %713, i64 %715
  %717 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %716, i32 0, i32 4
  %718 = load i32, i32* %717, align 8
  %719 = and i32 %718, %710
  store i32 %719, i32* %717, align 8
  br label %720

720:                                              ; preds = %708, %692
  br label %721

721:                                              ; preds = %720
  %722 = load i32, i32* %10, align 4
  %723 = add nsw i32 %722, 1
  store i32 %723, i32* %10, align 4
  br label %666

724:                                              ; preds = %666
  ret void
}

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i64 @ni_dpm_vblank_too_short(%struct.radeon_device*) #1

declare dso_local i32 @btc_skip_blacklist_clocks(%struct.radeon_device*, i64, i64, i64*, i64*) #1

declare dso_local i32 @btc_adjust_clock_combinations(%struct.radeon_device*, %struct.radeon_clock_and_voltage_limits*, %struct.TYPE_10__*) #1

declare dso_local i32 @btc_apply_voltage_dependency_rules(i32*, i64, i64, i64*) #1

declare dso_local i32 @btc_apply_voltage_delta_rules(%struct.radeon_device*, i64, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
