; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_2d_sensor.c_rmi_2d_sensor_set_input_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_2d_sensor.c_rmi_2d_sensor_set_input_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_2d_sensor = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, %struct.TYPE_2__, i64, %struct.input_dev* }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }
%struct.input_dev = type { i32, i32, i32 }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@DMAX = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@ABS_MT_TOOL_TYPE = common dso_local global i32 0, align 4
@MT_TOOL_MAX = common dso_local global i32 0, align 4
@rmi_sensor_touchpad = common dso_local global i64 0, align 8
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_TRACK = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@INPUT_PROP_TOPBUTTONPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rmi_2d_sensor*)* @rmi_2d_sensor_set_input_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_2d_sensor_set_input_params(%struct.rmi_2d_sensor* %0) #0 {
  %2 = alloca %struct.rmi_2d_sensor*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rmi_2d_sensor* %0, %struct.rmi_2d_sensor** %2, align 8
  %9 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %10 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %9, i32 0, i32 14
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %3, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %13 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %12, i32 0, i32 13
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %205

16:                                               ; preds = %1
  %17 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %18 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %17, i32 0, i32 12
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %22 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %24 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %23, i32 0, i32 12
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %16
  %29 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %30 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %33 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %32, i32 0, i32 12
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @min(i32 %31, i64 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %39 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %28, %16
  %41 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %42 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %41, i32 0, i32 12
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %46 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %48 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %47, i32 0, i32 12
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %40
  %53 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %54 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %57 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %56, i32 0, i32 12
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @min(i32 %55, i64 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %63 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %52, %40
  %65 = load i32, i32* @EV_ABS, align 4
  %66 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_bit(i32 %65, i32 %68)
  %70 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %71 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %6, align 4
  %73 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %74 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  %76 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %77 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %76, i32 0, i32 12
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %64
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @swap(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %64
  %86 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %87 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @input_set_abs_params(%struct.input_dev* %86, i32 %87, i32 0, i32 %88, i32 0, i32 0)
  %90 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %91 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @input_set_abs_params(%struct.input_dev* %90, i32 %91, i32 0, i32 %92, i32 0, i32 0)
  %94 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %95 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %163

98:                                               ; preds = %85
  %99 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %100 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %163

103:                                              ; preds = %98
  %104 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %105 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %108 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %106, %109
  %111 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %112 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = sdiv i32 %110, %113
  store i32 %114, i32* %4, align 4
  %115 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %116 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %119 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %117, %120
  %122 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %123 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %121, %124
  store i32 %125, i32* %5, align 4
  %126 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %127 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %126, i32 0, i32 12
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %103
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @swap(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %103
  %136 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %137 = load i32, i32* @ABS_X, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @input_abs_set_res(%struct.input_dev* %136, i32 %137, i32 %138)
  %140 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %141 = load i32, i32* @ABS_Y, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @input_abs_set_res(%struct.input_dev* %140, i32 %141, i32 %142)
  %144 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %145 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @input_abs_set_res(%struct.input_dev* %144, i32 %145, i32 %146)
  %148 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %149 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @input_abs_set_res(%struct.input_dev* %148, i32 %149, i32 %150)
  %152 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %153 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %135
  %157 = load i32, i32* @DMAX, align 4
  %158 = load i32, i32* %4, align 4
  %159 = mul nsw i32 %157, %158
  %160 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %161 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %156, %135
  br label %163

163:                                              ; preds = %162, %98, %85
  %164 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %165 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %166 = call i32 @input_set_abs_params(%struct.input_dev* %164, i32 %165, i32 0, i32 255, i32 0, i32 0)
  %167 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %168 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %169 = call i32 @input_set_abs_params(%struct.input_dev* %167, i32 %168, i32 0, i32 15, i32 0, i32 0)
  %170 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %171 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %172 = call i32 @input_set_abs_params(%struct.input_dev* %170, i32 %171, i32 0, i32 15, i32 0, i32 0)
  %173 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %174 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %175 = call i32 @input_set_abs_params(%struct.input_dev* %173, i32 %174, i32 0, i32 1, i32 0, i32 0)
  %176 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %177 = load i32, i32* @ABS_MT_TOOL_TYPE, align 4
  %178 = load i32, i32* @MT_TOOL_MAX, align 4
  %179 = call i32 @input_set_abs_params(%struct.input_dev* %176, i32 %177, i32 0, i32 %178, i32 0, i32 0)
  %180 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %181 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %180, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @rmi_sensor_touchpad, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %163
  %186 = load i32, i32* @INPUT_MT_POINTER, align 4
  store i32 %186, i32* %8, align 4
  br label %189

187:                                              ; preds = %163
  %188 = load i32, i32* @INPUT_MT_DIRECT, align 4
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %191 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %190, i32 0, i32 11
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* @INPUT_MT_TRACK, align 4
  %196 = load i32, i32* %8, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %200 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %201 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %200, i32 0, i32 10
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @input_mt_init_slots(%struct.input_dev* %199, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %198, %1
  %206 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %207 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %206, i32 0, i32 9
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %205
  %211 = load i32, i32* @EV_REL, align 4
  %212 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %213 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @set_bit(i32 %211, i32 %214)
  %216 = load i32, i32* @REL_X, align 4
  %217 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %218 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @set_bit(i32 %216, i32 %219)
  %221 = load i32, i32* @REL_Y, align 4
  %222 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %223 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @set_bit(i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %210, %205
  %227 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %2, align 8
  %228 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %227, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load i32, i32* @INPUT_PROP_TOPBUTTONPAD, align 4
  %233 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %234 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @set_bit(i32 %232, i32 %235)
  br label %237

237:                                              ; preds = %231, %226
  ret void
}

declare dso_local i8* @min(i32, i64) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
