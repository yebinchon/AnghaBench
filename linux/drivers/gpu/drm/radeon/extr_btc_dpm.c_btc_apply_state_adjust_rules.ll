; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_apply_state_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_apply_state_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.radeon_clock_and_voltage_limits, i32, i32, i32, i32, %struct.radeon_clock_and_voltage_limits }
%struct.radeon_clock_and_voltage_limits = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_ps = type { i32, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i32 }

@ATOM_PPLIB_R600_FLAGS_PCIEGEN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @btc_apply_state_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_apply_state_adjust_rules(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv7xx_ps*, align 8
  %6 = alloca %struct.radeon_clock_and_voltage_limits*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %13 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %12)
  store %struct.rv7xx_ps* %13, %struct.rv7xx_ps** %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = call i64 @btc_dpm_vblank_too_short(%struct.radeon_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %2
  store i32 1, i32* %7, align 4
  br label %26

25:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 6
  store %struct.radeon_clock_and_voltage_limits* %38, %struct.radeon_clock_and_voltage_limits** %6, align 8
  br label %45

39:                                               ; preds = %26
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store %struct.radeon_clock_and_voltage_limits* %44, %struct.radeon_clock_and_voltage_limits** %6, align 8
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %245

52:                                               ; preds = %45
  %53 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %54 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %58 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %63 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %66 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %52
  %69 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %70 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %74 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %79 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %82 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %68
  %85 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %86 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %90 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %84
  %94 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %95 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %98 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i64 %96, i64* %99, align 8
  br label %100

100:                                              ; preds = %93, %84
  %101 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %102 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %106 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %104, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %111 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %114 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %109, %100
  %117 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %118 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %122 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %116
  %126 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %127 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %130 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  br label %132

132:                                              ; preds = %125, %116
  %133 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %134 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %138 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %136, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %132
  %142 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %143 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %146 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  store i64 %144, i64* %147, align 8
  br label %148

148:                                              ; preds = %141, %132
  %149 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %150 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %154 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %152, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %159 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %162 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  store i64 %160, i64* %163, align 8
  br label %164

164:                                              ; preds = %157, %148
  %165 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %166 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %170 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %168, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %164
  %174 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %175 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %178 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 3
  store i64 %176, i64* %179, align 8
  br label %180

180:                                              ; preds = %173, %164
  %181 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %182 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %186 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %184, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %180
  %190 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %191 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %194 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  store i64 %192, i64* %195, align 8
  br label %196

196:                                              ; preds = %189, %180
  %197 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %198 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %202 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp sgt i64 %200, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %196
  %206 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %207 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %210 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  store i64 %208, i64* %211, align 8
  br label %212

212:                                              ; preds = %205, %196
  %213 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %214 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %218 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp sgt i64 %216, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %212
  %222 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %223 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %226 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 2
  store i64 %224, i64* %227, align 8
  br label %228

228:                                              ; preds = %221, %212
  %229 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %230 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %234 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp sgt i64 %232, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %228
  %238 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %239 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %242 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 3
  store i64 %240, i64* %243, align 8
  br label %244

244:                                              ; preds = %237, %228
  br label %245

245:                                              ; preds = %244, %45
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %267

248:                                              ; preds = %245
  %249 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %250 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %9, align 8
  %253 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %254 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %8, align 8
  %257 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %258 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to i8*
  store i8* %261, i8** %10, align 8
  %262 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %263 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = inttoptr i64 %265 to i8*
  store i8* %266, i8** %11, align 8
  br label %286

267:                                              ; preds = %245
  %268 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %269 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %9, align 8
  %272 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %273 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %8, align 8
  %276 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %277 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = inttoptr i64 %279 to i8*
  store i8* %280, i8** %10, align 8
  %281 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %282 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to i8*
  store i8* %285, i8** %11, align 8
  br label %286

286:                                              ; preds = %267, %248
  %287 = load i64, i64* %9, align 8
  %288 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %289 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 1
  store i64 %287, i64* %290, align 8
  %291 = load i64, i64* %8, align 8
  %292 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %293 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  store i64 %291, i64* %294, align 8
  %295 = load i8*, i8** %10, align 8
  %296 = ptrtoint i8* %295 to i64
  %297 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %298 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 2
  store i64 %296, i64* %299, align 8
  %300 = load i8*, i8** %11, align 8
  %301 = ptrtoint i8* %300 to i64
  %302 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %303 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 3
  store i64 %301, i64* %304, align 8
  %305 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %306 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %307 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %310 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %313 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 1
  %315 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %316 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  %318 = call i32 @btc_skip_blacklist_clocks(%struct.radeon_device* %305, i64 %308, i64 %311, i64* %314, i64* %317)
  %319 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %320 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %324 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = icmp slt i64 %322, %326
  br i1 %327, label %328, label %336

328:                                              ; preds = %286
  %329 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %330 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %334 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 1
  store i64 %332, i64* %335, align 8
  br label %336

336:                                              ; preds = %328, %286
  %337 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %338 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %342 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = icmp slt i64 %340, %344
  br i1 %345, label %346, label %354

346:                                              ; preds = %336
  %347 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %348 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %352 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 2
  store i64 %350, i64* %353, align 8
  br label %354

354:                                              ; preds = %346, %336
  %355 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %356 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %360 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = icmp slt i64 %358, %362
  br i1 %363, label %364, label %372

364:                                              ; preds = %354
  %365 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %366 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %370 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 1
  store i64 %368, i64* %371, align 8
  br label %372

372:                                              ; preds = %364, %354
  %373 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %374 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %378 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = icmp slt i64 %376, %380
  br i1 %381, label %382, label %390

382:                                              ; preds = %372
  %383 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %384 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %388 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 2
  store i64 %386, i64* %389, align 8
  br label %390

390:                                              ; preds = %382, %372
  %391 = load i32, i32* %7, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %449

393:                                              ; preds = %390
  %394 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %395 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %394, i32 0, i32 3
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %8, align 8
  %398 = load i64, i64* %8, align 8
  %399 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %400 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = icmp slt i64 %398, %402
  br i1 %403, label %404, label %409

404:                                              ; preds = %393
  %405 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %406 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %8, align 8
  br label %409

409:                                              ; preds = %404, %393
  %410 = load i64, i64* %8, align 8
  %411 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %412 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = icmp slt i64 %410, %414
  br i1 %415, label %416, label %421

416:                                              ; preds = %409
  %417 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %418 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %8, align 8
  br label %421

421:                                              ; preds = %416, %409
  %422 = load i64, i64* %8, align 8
  %423 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %424 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %423, i32 0, i32 3
  %425 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %424, i32 0, i32 0
  store i64 %422, i64* %425, align 8
  %426 = load i8*, i8** %11, align 8
  %427 = ptrtoint i8* %426 to i64
  %428 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %429 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %428, i32 0, i32 3
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 3
  store i64 %427, i64* %430, align 8
  %431 = load i64, i64* %8, align 8
  %432 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %433 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 0
  store i64 %431, i64* %434, align 8
  %435 = load i8*, i8** %11, align 8
  %436 = ptrtoint i8* %435 to i64
  %437 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %438 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %437, i32 0, i32 2
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 3
  store i64 %436, i64* %439, align 8
  %440 = load i64, i64* %8, align 8
  %441 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %442 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 0
  store i64 %440, i64* %443, align 8
  %444 = load i8*, i8** %11, align 8
  %445 = ptrtoint i8* %444 to i64
  %446 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %447 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %447, i32 0, i32 3
  store i64 %445, i64* %448, align 8
  br label %522

449:                                              ; preds = %390
  %450 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %451 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %455 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %454, i32 0, i32 3
  %456 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = icmp slt i64 %453, %457
  br i1 %458, label %459, label %467

459:                                              ; preds = %449
  %460 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %461 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %460, i32 0, i32 3
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %465 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 0
  store i64 %463, i64* %466, align 8
  br label %467

467:                                              ; preds = %459, %449
  %468 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %469 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 3
  %471 = load i64, i64* %470, align 8
  %472 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %473 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %472, i32 0, i32 3
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %473, i32 0, i32 3
  %475 = load i64, i64* %474, align 8
  %476 = icmp slt i64 %471, %475
  br i1 %476, label %477, label %485

477:                                              ; preds = %467
  %478 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %479 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %478, i32 0, i32 3
  %480 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %479, i32 0, i32 3
  %481 = load i64, i64* %480, align 8
  %482 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %483 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i32 0, i32 3
  store i64 %481, i64* %484, align 8
  br label %485

485:                                              ; preds = %477, %467
  %486 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %487 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %491 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = icmp slt i64 %489, %493
  br i1 %494, label %495, label %503

495:                                              ; preds = %485
  %496 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %497 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %501 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 0
  store i64 %499, i64* %502, align 8
  br label %503

503:                                              ; preds = %495, %485
  %504 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %505 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 3
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %509 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %509, i32 0, i32 3
  %511 = load i64, i64* %510, align 8
  %512 = icmp slt i64 %507, %511
  br i1 %512, label %513, label %521

513:                                              ; preds = %503
  %514 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %515 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %515, i32 0, i32 3
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %519 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %519, i32 0, i32 3
  store i64 %517, i64* %520, align 8
  br label %521

521:                                              ; preds = %513, %503
  br label %522

522:                                              ; preds = %521, %421
  %523 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %524 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %525 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %524, i32 0, i32 1
  %526 = load i64, i64* %525, align 8
  %527 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %528 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %527, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %531 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %530, i32 0, i32 2
  %532 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %531, i32 0, i32 1
  %533 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %534 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %533, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %534, i32 0, i32 0
  %536 = call i32 @btc_skip_blacklist_clocks(%struct.radeon_device* %523, i64 %526, i64 %529, i64* %532, i64* %535)
  %537 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %538 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %539 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %538, i32 0, i32 1
  %540 = load i64, i64* %539, align 8
  %541 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %542 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %545 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i32 0, i32 1
  %547 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %548 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %548, i32 0, i32 0
  %550 = call i32 @btc_skip_blacklist_clocks(%struct.radeon_device* %537, i64 %540, i64 %543, i64* %546, i64* %549)
  %551 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %552 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %553 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %554 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %553, i32 0, i32 3
  %555 = call i32 @btc_adjust_clock_combinations(%struct.radeon_device* %551, %struct.radeon_clock_and_voltage_limits* %552, %struct.TYPE_10__* %554)
  %556 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %557 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %558 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %559 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %558, i32 0, i32 2
  %560 = call i32 @btc_adjust_clock_combinations(%struct.radeon_device* %556, %struct.radeon_clock_and_voltage_limits* %557, %struct.TYPE_10__* %559)
  %561 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %562 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %563 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %564 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %563, i32 0, i32 1
  %565 = call i32 @btc_adjust_clock_combinations(%struct.radeon_device* %561, %struct.radeon_clock_and_voltage_limits* %562, %struct.TYPE_10__* %564)
  %566 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %567 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %567, i32 0, i32 0
  %569 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %568, i32 0, i32 2
  %570 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %569, i32 0, i32 5
  %571 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %572 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %571, i32 0, i32 3
  %573 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i32 0, i32 1
  %574 = load i64, i64* %573, align 8
  %575 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %576 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %575, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %579 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %578, i32 0, i32 3
  %580 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %579, i32 0, i32 2
  %581 = call i32 @btc_apply_voltage_dependency_rules(i32* %570, i64 %574, i64 %577, i64* %580)
  %582 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %583 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %584, i32 0, i32 2
  %586 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %585, i32 0, i32 4
  %587 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %588 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %587, i32 0, i32 3
  %589 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %588, i32 0, i32 0
  %590 = load i64, i64* %589, align 8
  %591 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %592 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %591, i32 0, i32 3
  %593 = load i64, i64* %592, align 8
  %594 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %595 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %594, i32 0, i32 3
  %596 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %595, i32 0, i32 3
  %597 = call i32 @btc_apply_voltage_dependency_rules(i32* %586, i64 %590, i64 %593, i64* %596)
  %598 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %599 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %600, i32 0, i32 2
  %602 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %601, i32 0, i32 3
  %603 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %604 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %603, i32 0, i32 3
  %605 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %604, i32 0, i32 0
  %606 = load i64, i64* %605, align 8
  %607 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %608 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %607, i32 0, i32 2
  %609 = load i64, i64* %608, align 8
  %610 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %611 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %610, i32 0, i32 3
  %612 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %611, i32 0, i32 2
  %613 = call i32 @btc_apply_voltage_dependency_rules(i32* %602, i64 %606, i64 %609, i64* %612)
  %614 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %615 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %616, i32 0, i32 2
  %618 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %617, i32 0, i32 2
  %619 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %620 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %619, i32 0, i32 1
  %621 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %620, i32 0, i32 0
  %622 = load i64, i64* %621, align 8
  %623 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %624 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %623, i32 0, i32 2
  %625 = load i64, i64* %624, align 8
  %626 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %627 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %626, i32 0, i32 3
  %628 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %627, i32 0, i32 2
  %629 = call i32 @btc_apply_voltage_dependency_rules(i32* %618, i64 %622, i64 %625, i64* %628)
  %630 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %631 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %630, i32 0, i32 0
  %632 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %631, i32 0, i32 0
  %633 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %632, i32 0, i32 2
  %634 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %633, i32 0, i32 5
  %635 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %636 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %635, i32 0, i32 2
  %637 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %636, i32 0, i32 1
  %638 = load i64, i64* %637, align 8
  %639 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %640 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %639, i32 0, i32 2
  %641 = load i64, i64* %640, align 8
  %642 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %643 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %642, i32 0, i32 2
  %644 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %643, i32 0, i32 2
  %645 = call i32 @btc_apply_voltage_dependency_rules(i32* %634, i64 %638, i64 %641, i64* %644)
  %646 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %647 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %647, i32 0, i32 0
  %649 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %648, i32 0, i32 2
  %650 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %649, i32 0, i32 4
  %651 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %652 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %651, i32 0, i32 2
  %653 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %656 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %655, i32 0, i32 3
  %657 = load i64, i64* %656, align 8
  %658 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %659 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %658, i32 0, i32 2
  %660 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %659, i32 0, i32 3
  %661 = call i32 @btc_apply_voltage_dependency_rules(i32* %650, i64 %654, i64 %657, i64* %660)
  %662 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %663 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %662, i32 0, i32 0
  %664 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %663, i32 0, i32 0
  %665 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %664, i32 0, i32 2
  %666 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %665, i32 0, i32 3
  %667 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %668 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %667, i32 0, i32 2
  %669 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %668, i32 0, i32 0
  %670 = load i64, i64* %669, align 8
  %671 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %672 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %671, i32 0, i32 2
  %673 = load i64, i64* %672, align 8
  %674 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %675 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %674, i32 0, i32 2
  %676 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %675, i32 0, i32 2
  %677 = call i32 @btc_apply_voltage_dependency_rules(i32* %666, i64 %670, i64 %673, i64* %676)
  %678 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %679 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %678, i32 0, i32 0
  %680 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %679, i32 0, i32 0
  %681 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %680, i32 0, i32 2
  %682 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %681, i32 0, i32 2
  %683 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %684 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %683, i32 0, i32 1
  %685 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %684, i32 0, i32 0
  %686 = load i64, i64* %685, align 8
  %687 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %688 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %687, i32 0, i32 2
  %689 = load i64, i64* %688, align 8
  %690 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %691 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %690, i32 0, i32 2
  %692 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %691, i32 0, i32 2
  %693 = call i32 @btc_apply_voltage_dependency_rules(i32* %682, i64 %686, i64 %689, i64* %692)
  %694 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %695 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %694, i32 0, i32 0
  %696 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %695, i32 0, i32 0
  %697 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %696, i32 0, i32 2
  %698 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %697, i32 0, i32 5
  %699 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %700 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %699, i32 0, i32 1
  %701 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %700, i32 0, i32 1
  %702 = load i64, i64* %701, align 8
  %703 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %704 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %703, i32 0, i32 2
  %705 = load i64, i64* %704, align 8
  %706 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %707 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %706, i32 0, i32 1
  %708 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %707, i32 0, i32 2
  %709 = call i32 @btc_apply_voltage_dependency_rules(i32* %698, i64 %702, i64 %705, i64* %708)
  %710 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %711 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %710, i32 0, i32 0
  %712 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %711, i32 0, i32 0
  %713 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %712, i32 0, i32 2
  %714 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %713, i32 0, i32 4
  %715 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %716 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %715, i32 0, i32 1
  %717 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %716, i32 0, i32 0
  %718 = load i64, i64* %717, align 8
  %719 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %720 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %719, i32 0, i32 3
  %721 = load i64, i64* %720, align 8
  %722 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %723 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %722, i32 0, i32 1
  %724 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %723, i32 0, i32 3
  %725 = call i32 @btc_apply_voltage_dependency_rules(i32* %714, i64 %718, i64 %721, i64* %724)
  %726 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %727 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %726, i32 0, i32 0
  %728 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %727, i32 0, i32 0
  %729 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %728, i32 0, i32 2
  %730 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %729, i32 0, i32 3
  %731 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %732 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %731, i32 0, i32 1
  %733 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %732, i32 0, i32 0
  %734 = load i64, i64* %733, align 8
  %735 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %736 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %735, i32 0, i32 2
  %737 = load i64, i64* %736, align 8
  %738 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %739 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %738, i32 0, i32 1
  %740 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %739, i32 0, i32 2
  %741 = call i32 @btc_apply_voltage_dependency_rules(i32* %730, i64 %734, i64 %737, i64* %740)
  %742 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %743 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %742, i32 0, i32 0
  %744 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %743, i32 0, i32 0
  %745 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %744, i32 0, i32 2
  %746 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %745, i32 0, i32 2
  %747 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %748 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %747, i32 0, i32 1
  %749 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %748, i32 0, i32 0
  %750 = load i64, i64* %749, align 8
  %751 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %752 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %751, i32 0, i32 2
  %753 = load i64, i64* %752, align 8
  %754 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %755 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %754, i32 0, i32 1
  %756 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %755, i32 0, i32 2
  %757 = call i32 @btc_apply_voltage_dependency_rules(i32* %746, i64 %750, i64 %753, i64* %756)
  %758 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %759 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %760 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %759, i32 0, i32 2
  %761 = load i64, i64* %760, align 8
  %762 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %763 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %762, i32 0, i32 3
  %764 = load i64, i64* %763, align 8
  %765 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %766 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %765, i32 0, i32 3
  %767 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %766, i32 0, i32 2
  %768 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %769 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %768, i32 0, i32 3
  %770 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %769, i32 0, i32 3
  %771 = call i32 @btc_apply_voltage_delta_rules(%struct.radeon_device* %758, i64 %761, i64 %764, i64* %767, i64* %770)
  %772 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %773 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %774 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %773, i32 0, i32 2
  %775 = load i64, i64* %774, align 8
  %776 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %777 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %776, i32 0, i32 3
  %778 = load i64, i64* %777, align 8
  %779 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %780 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %779, i32 0, i32 2
  %781 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %780, i32 0, i32 2
  %782 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %783 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %782, i32 0, i32 2
  %784 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %783, i32 0, i32 3
  %785 = call i32 @btc_apply_voltage_delta_rules(%struct.radeon_device* %772, i64 %775, i64 %778, i64* %781, i64* %784)
  %786 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %787 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %788 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %787, i32 0, i32 2
  %789 = load i64, i64* %788, align 8
  %790 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %791 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %790, i32 0, i32 3
  %792 = load i64, i64* %791, align 8
  %793 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %794 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %793, i32 0, i32 1
  %795 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %794, i32 0, i32 2
  %796 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %797 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %796, i32 0, i32 1
  %798 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %797, i32 0, i32 3
  %799 = call i32 @btc_apply_voltage_delta_rules(%struct.radeon_device* %786, i64 %789, i64 %792, i64* %795, i64* %798)
  %800 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %801 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %800, i32 0, i32 1
  %802 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %801, i32 0, i32 2
  %803 = load i64, i64* %802, align 8
  %804 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %805 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %804, i32 0, i32 0
  %806 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %805, i32 0, i32 0
  %807 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %806, i32 0, i32 2
  %808 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %807, i32 0, i32 1
  %809 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %808, i32 0, i32 2
  %810 = load i64, i64* %809, align 8
  %811 = icmp sle i64 %803, %810
  br i1 %811, label %812, label %841

812:                                              ; preds = %522
  %813 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %814 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %813, i32 0, i32 2
  %815 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %814, i32 0, i32 2
  %816 = load i64, i64* %815, align 8
  %817 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %818 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %817, i32 0, i32 0
  %819 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %818, i32 0, i32 0
  %820 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %819, i32 0, i32 2
  %821 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %820, i32 0, i32 1
  %822 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %821, i32 0, i32 2
  %823 = load i64, i64* %822, align 8
  %824 = icmp sle i64 %816, %823
  br i1 %824, label %825, label %841

825:                                              ; preds = %812
  %826 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %827 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %826, i32 0, i32 3
  %828 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %827, i32 0, i32 2
  %829 = load i64, i64* %828, align 8
  %830 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %831 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %830, i32 0, i32 0
  %832 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %831, i32 0, i32 0
  %833 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %832, i32 0, i32 2
  %834 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %833, i32 0, i32 1
  %835 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %834, i32 0, i32 2
  %836 = load i64, i64* %835, align 8
  %837 = icmp sle i64 %829, %836
  br i1 %837, label %838, label %841

838:                                              ; preds = %825
  %839 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %840 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %839, i32 0, i32 0
  store i32 1, i32* %840, align 8
  br label %844

841:                                              ; preds = %825, %812, %522
  %842 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %843 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %842, i32 0, i32 0
  store i32 0, i32* %843, align 8
  br label %844

844:                                              ; preds = %841, %838
  %845 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %846 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %845, i32 0, i32 3
  %847 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %846, i32 0, i32 2
  %848 = load i64, i64* %847, align 8
  %849 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %850 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %849, i32 0, i32 0
  %851 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %850, i32 0, i32 0
  %852 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %851, i32 0, i32 2
  %853 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %852, i32 0, i32 0
  %854 = load i64, i64* %853, align 8
  %855 = icmp slt i64 %848, %854
  br i1 %855, label %856, label %864

856:                                              ; preds = %844
  %857 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %858 = xor i32 %857, -1
  %859 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %860 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %859, i32 0, i32 3
  %861 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %860, i32 0, i32 4
  %862 = load i32, i32* %861, align 8
  %863 = and i32 %862, %858
  store i32 %863, i32* %861, align 8
  br label %864

864:                                              ; preds = %856, %844
  %865 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %866 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %865, i32 0, i32 2
  %867 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %866, i32 0, i32 2
  %868 = load i64, i64* %867, align 8
  %869 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %870 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %869, i32 0, i32 0
  %871 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %870, i32 0, i32 0
  %872 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %871, i32 0, i32 2
  %873 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %872, i32 0, i32 0
  %874 = load i64, i64* %873, align 8
  %875 = icmp slt i64 %868, %874
  br i1 %875, label %876, label %884

876:                                              ; preds = %864
  %877 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %878 = xor i32 %877, -1
  %879 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %880 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %879, i32 0, i32 2
  %881 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %880, i32 0, i32 4
  %882 = load i32, i32* %881, align 8
  %883 = and i32 %882, %878
  store i32 %883, i32* %881, align 8
  br label %884

884:                                              ; preds = %876, %864
  %885 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %886 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %885, i32 0, i32 1
  %887 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %886, i32 0, i32 2
  %888 = load i64, i64* %887, align 8
  %889 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %890 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %889, i32 0, i32 0
  %891 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %890, i32 0, i32 0
  %892 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %891, i32 0, i32 2
  %893 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %892, i32 0, i32 0
  %894 = load i64, i64* %893, align 8
  %895 = icmp slt i64 %888, %894
  br i1 %895, label %896, label %904

896:                                              ; preds = %884
  %897 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %898 = xor i32 %897, -1
  %899 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %900 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %899, i32 0, i32 1
  %901 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %900, i32 0, i32 4
  %902 = load i32, i32* %901, align 8
  %903 = and i32 %902, %898
  store i32 %903, i32* %901, align 8
  br label %904

904:                                              ; preds = %896, %884
  ret void
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i64 @btc_dpm_vblank_too_short(%struct.radeon_device*) #1

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
