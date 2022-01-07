; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_pplib_non_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_parse_pplib_non_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32, i32 }

@ATOM_PPLIB_PCIE_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BATTERY = common dso_local global i8* null, align 8
@POWER_STATE_TYPE_BALANCED = common dso_local global i8* null, align 8
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i8* null, align 8
@ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE = common dso_local global i32 0, align 4
@ATOM_PPLIB_SINGLE_DISPLAY_ONLY = common dso_local global i32 0, align 4
@RADEON_PM_STATE_SINGLE_DISPLAY_ONLY = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i8* null, align 8
@CHIP_BARTS = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_VDDCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, %struct._ATOM_PPLIB_NONCLOCK_INFO*)* @radeon_atombios_parse_pplib_non_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atombios_parse_pplib_non_clock_info(%struct.radeon_device* %0, i32 %1, i32 %2, %struct._ATOM_PPLIB_NONCLOCK_INFO* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %3, %struct._ATOM_PPLIB_NONCLOCK_INFO** %8, align 8
  %16 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %8, align 8
  %17 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %8, align 8
  %21 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %25 = call i32 @radeon_atombios_get_default_voltages(%struct.radeon_device* %24, i8** %12, i8** %13, i8** %14)
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %26, i32* %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32 %35, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @ATOM_PPLIB_PCIE_LINK_WIDTH_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store i32 %49, i32* %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %107 [
    i32 130, label %61
    i32 131, label %71
    i32 128, label %81
    i32 129, label %91
  ]

61:                                               ; preds = %4
  %62 = load i8*, i8** @POWER_STATE_TYPE_BATTERY, align 8
  %63 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  store i8* %62, i8** %70, align 8
  br label %107

71:                                               ; preds = %4
  %72 = load i8*, i8** @POWER_STATE_TYPE_BALANCED, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  store i8* %72, i8** %80, align 8
  br label %107

81:                                               ; preds = %4
  %82 = load i8*, i8** @POWER_STATE_TYPE_PERFORMANCE, align 8
  %83 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 5
  store i8* %82, i8** %90, align 8
  br label %107

91:                                               ; preds = %4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load i8*, i8** @POWER_STATE_TYPE_PERFORMANCE, align 8
  %98 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 5
  store i8* %97, i8** %105, align 8
  br label %106

106:                                              ; preds = %96, %91
  br label %107

107:                                              ; preds = %4, %106, %81, %71, %61
  %108 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 6
  store i32 0, i32* %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @ATOM_PPLIB_SINGLE_DISPLAY_ONLY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %107
  %121 = load i32, i32* @RADEON_PM_STATE_SINGLE_DISPLAY_ONLY, align 4
  %122 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %121
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %120, %107
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %338

137:                                              ; preds = %132
  %138 = load i8*, i8** @POWER_STATE_TYPE_DEFAULT, align 8
  %139 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 5
  store i8* %138, i8** %146, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %162
  %164 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 4
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %171, align 8
  %172 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @CHIP_BARTS, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %247

177:                                              ; preds = %137
  %178 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @RADEON_IS_IGP, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %247, label %184

184:                                              ; preds = %177
  %185 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 5
  store i32 %196, i32* %199, align 4
  %200 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %213 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 4
  store i32 %211, i32* %214, align 8
  %215 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %229 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 3
  store i8* %227, i8** %230, align 8
  %231 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %232 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 3
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i64 0
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %245 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 2
  store i8* %243, i8** %246, align 8
  br label %337

247:                                              ; preds = %177, %137
  store i8* null, i8** %15, align 8
  %248 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %249 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %253 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDCI, align 4
  %254 = call i32 @radeon_atom_get_max_voltage(%struct.radeon_device* %252, i32 %253, i8** %15)
  br label %255

255:                                              ; preds = %251, %247
  store i32 0, i32* %9, align 4
  br label %256

256:                                              ; preds = %333, %255
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %7, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %336

260:                                              ; preds = %256
  %261 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %262 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %266 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %272, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 2
  store i32 %264, i32* %277, align 4
  %278 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %279 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %283 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %284, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 3
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %289, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 1
  store i32 %281, i32* %294, align 8
  %295 = load i8*, i8** %12, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %313

297:                                              ; preds = %260
  %298 = load i8*, i8** %12, align 8
  %299 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %300 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %301, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 3
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  store i8* %298, i8** %312, align 8
  br label %313

313:                                              ; preds = %297, %260
  %314 = load i8*, i8** %15, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %332

316:                                              ; preds = %313
  %317 = load i8*, i8** %15, align 8
  %318 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %319 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %320, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 3
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  store i8* %317, i8** %331, align 8
  br label %332

332:                                              ; preds = %316, %313
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %9, align 4
  br label %256

336:                                              ; preds = %256
  br label %337

337:                                              ; preds = %336, %184
  br label %338

338:                                              ; preds = %337, %132
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @radeon_atombios_get_default_voltages(%struct.radeon_device*, i8**, i8**, i8**) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_max_voltage(%struct.radeon_device*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
