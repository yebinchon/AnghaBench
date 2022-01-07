; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_of_touchscreen.c_touchscreen_parse_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_of_touchscreen.c_touchscreen_parse_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.input_absinfo*, %struct.TYPE_2__ }
%struct.input_absinfo = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.touchscreen_properties = type { i8*, i8*, i8*, i8*, i8* }

@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"touchscreen-min-x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"touchscreen-size-x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"touchscreen-fuzz-x\00", align 1
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"touchscreen-min-y\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"touchscreen-size-y\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"touchscreen-fuzz-y\00", align 1
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"touchscreen-max-pressure\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"touchscreen-fuzz-pressure\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"touchscreen-inverted-x\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"touchscreen-inverted-y\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"touchscreen-swapped-x-y\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @touchscreen_parse_properties(%struct.input_dev* %0, i32 %1, %struct.touchscreen_properties* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.touchscreen_properties*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.input_absinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.touchscreen_properties* %2, %struct.touchscreen_properties** %6, align 8
  %14 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %19 = call i32 @input_alloc_absinfo(%struct.input_dev* %18)
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 0
  %22 = load %struct.input_absinfo*, %struct.input_absinfo** %21, align 8
  %23 = icmp ne %struct.input_absinfo* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %239

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @ABS_MT_POSITION_X, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ABS_X, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %9, align 4
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @input_abs_get_min(%struct.input_dev* %35, i32 %36)
  %38 = call i32 @touchscreen_get_prop_u32(%struct.device* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %37, i32* %10)
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i8* @input_abs_get_max(%struct.input_dev* %40, i32 %41)
  %43 = getelementptr i8, i8* %42, i64 1
  %44 = call i32 @touchscreen_get_prop_u32(%struct.device* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32* %11)
  %45 = or i32 %38, %44
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @input_abs_get_fuzz(%struct.input_dev* %47, i32 %48)
  %50 = call i32 @touchscreen_get_prop_u32(%struct.device* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %49, i32* %12)
  %51 = or i32 %45, %50
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %32
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub i32 %58, 1
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @touchscreen_set_params(%struct.input_dev* %55, i32 %56, i32 %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %32
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @ABS_Y, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %9, align 4
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @input_abs_get_min(%struct.input_dev* %72, i32 %73)
  %75 = call i32 @touchscreen_get_prop_u32(%struct.device* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %74, i32* %10)
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i8* @input_abs_get_max(%struct.input_dev* %77, i32 %78)
  %80 = getelementptr i8, i8* %79, i64 1
  %81 = call i32 @touchscreen_get_prop_u32(%struct.device* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %80, i32* %11)
  %82 = or i32 %75, %81
  %83 = load %struct.device*, %struct.device** %7, align 8
  %84 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i8* @input_abs_get_fuzz(%struct.input_dev* %84, i32 %85)
  %87 = call i32 @touchscreen_get_prop_u32(%struct.device* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %86, i32* %12)
  %88 = or i32 %82, %87
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %69
  %92 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub i32 %95, 1
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @touchscreen_set_params(%struct.input_dev* %92, i32 %93, i32 %94, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %69
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @ABS_MT_PRESSURE, align 4
  br label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @ABS_PRESSURE, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %9, align 4
  %108 = load %struct.device*, %struct.device** %7, align 8
  %109 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i8* @input_abs_get_max(%struct.input_dev* %109, i32 %110)
  %112 = call i32 @touchscreen_get_prop_u32(%struct.device* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %111, i32* %11)
  %113 = load %struct.device*, %struct.device** %7, align 8
  %114 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i8* @input_abs_get_fuzz(%struct.input_dev* %114, i32 %115)
  %117 = call i32 @touchscreen_get_prop_u32(%struct.device* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %116, i32* %12)
  %118 = or i32 %112, %117
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %106
  %122 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @touchscreen_set_params(%struct.input_dev* %122, i32 %123, i32 0, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %106
  %128 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %6, align 8
  %129 = icmp ne %struct.touchscreen_properties* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  br label %239

131:                                              ; preds = %127
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @ABS_MT_POSITION_X, align 4
  br label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @ABS_X, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %9, align 4
  %140 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i8* @input_abs_get_max(%struct.input_dev* %140, i32 %141)
  %143 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %6, align 8
  %144 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %146 = load i32, i32* %9, align 4
  %147 = add i32 %146, 1
  %148 = call i8* @input_abs_get_max(%struct.input_dev* %145, i32 %147)
  %149 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %6, align 8
  %150 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %149, i32 0, i32 3
  store i8* %148, i8** %150, align 8
  %151 = load %struct.device*, %struct.device** %7, align 8
  %152 = call i8* @device_property_read_bool(%struct.device* %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %153 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %6, align 8
  %154 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  %155 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %6, align 8
  %156 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %177

159:                                              ; preds = %138
  %160 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %161 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %160, i32 0, i32 0
  %162 = load %struct.input_absinfo*, %struct.input_absinfo** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %162, i64 %164
  store %struct.input_absinfo* %165, %struct.input_absinfo** %8, align 8
  %166 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %167 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %170 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = sub nsw i64 %172, %168
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %170, align 8
  %175 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %176 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %159, %138
  %178 = load %struct.device*, %struct.device** %7, align 8
  %179 = call i8* @device_property_read_bool(%struct.device* %178, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %180 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %6, align 8
  %181 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %6, align 8
  %183 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %205

186:                                              ; preds = %177
  %187 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %188 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %187, i32 0, i32 0
  %189 = load %struct.input_absinfo*, %struct.input_absinfo** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = add i32 %190, 1
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %189, i64 %192
  store %struct.input_absinfo* %193, %struct.input_absinfo** %8, align 8
  %194 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %195 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %198 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = sub nsw i64 %200, %196
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %198, align 8
  %203 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %204 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %186, %177
  %206 = load %struct.device*, %struct.device** %7, align 8
  %207 = call i8* @device_property_read_bool(%struct.device* %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %208 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %6, align 8
  %209 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %208, i32 0, i32 0
  store i8* %207, i8** %209, align 8
  %210 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %6, align 8
  %211 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %239

214:                                              ; preds = %205
  %215 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %216 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %215, i32 0, i32 0
  %217 = load %struct.input_absinfo*, %struct.input_absinfo** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %217, i64 %219
  %221 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %222 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %221, i32 0, i32 0
  %223 = load %struct.input_absinfo*, %struct.input_absinfo** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = add i32 %224, 1
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %223, i64 %226
  %228 = bitcast %struct.input_absinfo* %220 to { i64, i32 }*
  %229 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %228, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = bitcast %struct.input_absinfo* %227 to { i64, i32 }*
  %234 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %233, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @swap(i64 %230, i32 %232, i64 %235, i32 %237)
  br label %239

239:                                              ; preds = %24, %130, %214, %205
  ret void
}

declare dso_local i32 @input_alloc_absinfo(%struct.input_dev*) #1

declare dso_local i32 @touchscreen_get_prop_u32(%struct.device*, i8*, i8*, i32*) #1

declare dso_local i8* @input_abs_get_min(%struct.input_dev*, i32) #1

declare dso_local i8* @input_abs_get_max(%struct.input_dev*, i32) #1

declare dso_local i8* @input_abs_get_fuzz(%struct.input_dev*, i32) #1

declare dso_local i32 @touchscreen_set_params(%struct.input_dev*, i32, i32, i32, i32) #1

declare dso_local i8* @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @swap(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
