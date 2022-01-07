; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/extr_base.c_nvkm_iccsense_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/extr_base.c_nvkm_iccsense_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_iccsense = type { i32, i32, i32, i32 }
%struct.nvbios_power_budget = type { i32 }
%struct.nvbios_iccsense = type { i32, %struct.pwr_rail_t* }
%struct.pwr_rail_t = type { i32, i32, i64, i32, %struct.pwr_rail_resistor_t* }
%struct.pwr_rail_resistor_t = type { i64, i32 }
%struct.nvbios_power_budget_entry = type { i32, i32 }
%struct.nvkm_iccsense_sensor = type { i64, i32 }
%struct.nvkm_iccsense_rail = type { i32 (%struct.nvkm_iccsense.0*, %struct.nvkm_iccsense_rail*)*, i32, i32, i64, %struct.nvkm_iccsense_sensor* }
%struct.nvkm_iccsense.0 = type opaque

@.str = private unnamed_addr constant [37 x i8] c"config mismatch found for extdev %i\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"create rail for extdev %i: { idx: %i, mohm: %i }\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_iccsense_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_iccsense_oneinit(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_iccsense*, align 8
  %5 = alloca %struct.nvkm_bios*, align 8
  %6 = alloca %struct.nvbios_power_budget, align 4
  %7 = alloca %struct.nvbios_iccsense, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvbios_power_budget_entry, align 4
  %11 = alloca %struct.pwr_rail_t*, align 8
  %12 = alloca %struct.nvkm_iccsense_sensor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvkm_iccsense_rail*, align 8
  %15 = alloca %struct.pwr_rail_resistor_t*, align 8
  %16 = alloca i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %18 = call %struct.nvkm_iccsense* @nvkm_iccsense(%struct.nvkm_subdev* %17)
  store %struct.nvkm_iccsense* %18, %struct.nvkm_iccsense** %4, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.nvkm_bios*, %struct.nvkm_bios** %22, align 8
  store %struct.nvkm_bios* %23, %struct.nvkm_bios** %5, align 8
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %25 = icmp ne %struct.nvkm_bios* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %199

27:                                               ; preds = %1
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %29 = call i32 @nvbios_power_budget_header(%struct.nvkm_bios* %28, %struct.nvbios_power_budget* %6)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 255
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %38 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nvbios_power_budget_entry(%struct.nvkm_bios* %37, %struct.nvbios_power_budget* %6, i32 %39, %struct.nvbios_power_budget_entry* %10)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.nvbios_power_budget_entry, %struct.nvbios_power_budget_entry* %10, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %4, align 8
  %47 = getelementptr inbounds %struct.nvkm_iccsense, %struct.nvkm_iccsense* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.nvbios_power_budget_entry, %struct.nvbios_power_budget_entry* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %4, align 8
  %51 = getelementptr inbounds %struct.nvkm_iccsense, %struct.nvkm_iccsense* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %36
  br label %53

53:                                               ; preds = %52, %32, %27
  %54 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %55 = call i64 @nvbios_iccsense_parse(%struct.nvkm_bios* %54, %struct.nvbios_iccsense* %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.nvbios_iccsense, %struct.nvbios_iccsense* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57, %53
  store i32 0, i32* %2, align 4
  br label %199

62:                                               ; preds = %57
  %63 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %4, align 8
  %64 = getelementptr inbounds %struct.nvkm_iccsense, %struct.nvkm_iccsense* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %195, %62
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds %struct.nvbios_iccsense, %struct.nvbios_iccsense* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %198

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.nvbios_iccsense, %struct.nvbios_iccsense* %7, i32 0, i32 1
  %72 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %72, i64 %74
  store %struct.pwr_rail_t* %75, %struct.pwr_rail_t** %11, align 8
  %76 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %11, align 8
  %77 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  %81 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %11, align 8
  %82 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80, %70
  br label %195

86:                                               ; preds = %80
  %87 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %4, align 8
  %88 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %11, align 8
  %89 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.nvkm_iccsense_sensor* @nvkm_iccsense_get_sensor(%struct.nvkm_iccsense* %87, i32 %90)
  store %struct.nvkm_iccsense_sensor* %91, %struct.nvkm_iccsense_sensor** %12, align 8
  %92 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %12, align 8
  %93 = icmp ne %struct.nvkm_iccsense_sensor* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  br label %195

95:                                               ; preds = %86
  %96 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %12, align 8
  %97 = getelementptr inbounds %struct.nvkm_iccsense_sensor, %struct.nvkm_iccsense_sensor* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %11, align 8
  %102 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %12, align 8
  %105 = getelementptr inbounds %struct.nvkm_iccsense_sensor, %struct.nvkm_iccsense_sensor* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %121

106:                                              ; preds = %95
  %107 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %12, align 8
  %108 = getelementptr inbounds %struct.nvkm_iccsense_sensor, %struct.nvkm_iccsense_sensor* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %11, align 8
  %111 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %116 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %11, align 8
  %117 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @nvkm_error(%struct.nvkm_subdev* %115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %114, %106
  br label %121

121:                                              ; preds = %120, %100
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %191, %121
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %11, align 8
  %125 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %194

128:                                              ; preds = %122
  %129 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %11, align 8
  %130 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %129, i32 0, i32 4
  %131 = load %struct.pwr_rail_resistor_t*, %struct.pwr_rail_resistor_t** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.pwr_rail_resistor_t, %struct.pwr_rail_resistor_t* %131, i64 %133
  store %struct.pwr_rail_resistor_t* %134, %struct.pwr_rail_resistor_t** %15, align 8
  %135 = load %struct.pwr_rail_resistor_t*, %struct.pwr_rail_resistor_t** %15, align 8
  %136 = getelementptr inbounds %struct.pwr_rail_resistor_t, %struct.pwr_rail_resistor_t* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %128
  %140 = load %struct.pwr_rail_resistor_t*, %struct.pwr_rail_resistor_t** %15, align 8
  %141 = getelementptr inbounds %struct.pwr_rail_resistor_t, %struct.pwr_rail_resistor_t* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139, %128
  br label %191

145:                                              ; preds = %139
  %146 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %12, align 8
  %147 = getelementptr inbounds %struct.nvkm_iccsense_sensor, %struct.nvkm_iccsense_sensor* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %152 [
    i32 130, label %149
    i32 129, label %150
    i32 128, label %151
  ]

149:                                              ; preds = %145
  store i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)* @nvkm_iccsense_ina209_read, i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)** %16, align 8
  br label %153

150:                                              ; preds = %145
  store i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)* @nvkm_iccsense_ina219_read, i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)** %16, align 8
  br label %153

151:                                              ; preds = %145
  store i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)* @nvkm_iccsense_ina3221_read, i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)** %16, align 8
  br label %153

152:                                              ; preds = %145
  br label %191

153:                                              ; preds = %151, %150, %149
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call %struct.nvkm_iccsense_rail* @kmalloc(i32 32, i32 %154)
  store %struct.nvkm_iccsense_rail* %155, %struct.nvkm_iccsense_rail** %14, align 8
  %156 = load %struct.nvkm_iccsense_rail*, %struct.nvkm_iccsense_rail** %14, align 8
  %157 = icmp ne %struct.nvkm_iccsense_rail* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %199

161:                                              ; preds = %153
  %162 = load i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)*, i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)** %16, align 8
  %163 = bitcast i32 (%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*)* %162 to i32 (%struct.nvkm_iccsense.0*, %struct.nvkm_iccsense_rail*)*
  %164 = load %struct.nvkm_iccsense_rail*, %struct.nvkm_iccsense_rail** %14, align 8
  %165 = getelementptr inbounds %struct.nvkm_iccsense_rail, %struct.nvkm_iccsense_rail* %164, i32 0, i32 0
  store i32 (%struct.nvkm_iccsense.0*, %struct.nvkm_iccsense_rail*)* %163, i32 (%struct.nvkm_iccsense.0*, %struct.nvkm_iccsense_rail*)** %165, align 8
  %166 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %12, align 8
  %167 = load %struct.nvkm_iccsense_rail*, %struct.nvkm_iccsense_rail** %14, align 8
  %168 = getelementptr inbounds %struct.nvkm_iccsense_rail, %struct.nvkm_iccsense_rail* %167, i32 0, i32 4
  store %struct.nvkm_iccsense_sensor* %166, %struct.nvkm_iccsense_sensor** %168, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.nvkm_iccsense_rail*, %struct.nvkm_iccsense_rail** %14, align 8
  %171 = getelementptr inbounds %struct.nvkm_iccsense_rail, %struct.nvkm_iccsense_rail* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  %172 = load %struct.pwr_rail_resistor_t*, %struct.pwr_rail_resistor_t** %15, align 8
  %173 = getelementptr inbounds %struct.pwr_rail_resistor_t, %struct.pwr_rail_resistor_t* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.nvkm_iccsense_rail*, %struct.nvkm_iccsense_rail** %14, align 8
  %176 = getelementptr inbounds %struct.nvkm_iccsense_rail, %struct.nvkm_iccsense_rail* %175, i32 0, i32 3
  store i64 %174, i64* %176, align 8
  %177 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %178 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %11, align 8
  %179 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.nvkm_iccsense_rail*, %struct.nvkm_iccsense_rail** %14, align 8
  %183 = getelementptr inbounds %struct.nvkm_iccsense_rail, %struct.nvkm_iccsense_rail* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @nvkm_debug(%struct.nvkm_subdev* %177, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %181, i64 %184)
  %186 = load %struct.nvkm_iccsense_rail*, %struct.nvkm_iccsense_rail** %14, align 8
  %187 = getelementptr inbounds %struct.nvkm_iccsense_rail, %struct.nvkm_iccsense_rail* %186, i32 0, i32 2
  %188 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %4, align 8
  %189 = getelementptr inbounds %struct.nvkm_iccsense, %struct.nvkm_iccsense* %188, i32 0, i32 1
  %190 = call i32 @list_add_tail(i32* %187, i32* %189)
  br label %191

191:                                              ; preds = %161, %152, %144
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %13, align 4
  br label %122

194:                                              ; preds = %122
  br label %195

195:                                              ; preds = %194, %94, %85
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %65

198:                                              ; preds = %65
  store i32 0, i32* %2, align 4
  br label %199

199:                                              ; preds = %198, %158, %61, %26
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.nvkm_iccsense* @nvkm_iccsense(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvbios_power_budget_header(%struct.nvkm_bios*, %struct.nvbios_power_budget*) #1

declare dso_local i32 @nvbios_power_budget_entry(%struct.nvkm_bios*, %struct.nvbios_power_budget*, i32, %struct.nvbios_power_budget_entry*) #1

declare dso_local i64 @nvbios_iccsense_parse(%struct.nvkm_bios*, %struct.nvbios_iccsense*) #1

declare dso_local %struct.nvkm_iccsense_sensor* @nvkm_iccsense_get_sensor(%struct.nvkm_iccsense*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_iccsense_ina209_read(%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*) #1

declare dso_local i32 @nvkm_iccsense_ina219_read(%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*) #1

declare dso_local i32 @nvkm_iccsense_ina3221_read(%struct.nvkm_iccsense*, %struct.nvkm_iccsense_rail*) #1

declare dso_local %struct.nvkm_iccsense_rail* @kmalloc(i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
