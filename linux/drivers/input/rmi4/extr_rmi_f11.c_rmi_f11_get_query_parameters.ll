; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_rmi_f11_get_query_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_rmi_f11_get_query_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_device = type { i32 }
%struct.f11_data = type { i32, i64, i64, i64, i64, i64 }
%struct.f11_2d_sensor_queries = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RMI_F11_QUERY_SIZE = common dso_local global i32 0, align 4
@RMI_F11_NR_FINGERS_MASK = common dso_local global i32 0, align 4
@RMI_F11_HAS_REL = common dso_local global i32 0, align 4
@RMI_F11_HAS_ABS = common dso_local global i32 0, align 4
@RMI_F11_HAS_GESTURES = common dso_local global i32 0, align 4
@RMI_F11_HAS_SENSITIVITY_ADJ = common dso_local global i32 0, align 4
@RMI_F11_CONFIGURABLE = common dso_local global i32 0, align 4
@RMI_F11_NR_ELECTRODES_MASK = common dso_local global i32 0, align 4
@RMI_F11_ABS_DATA_SIZE_MASK = common dso_local global i32 0, align 4
@RMI_F11_HAS_ANCHORED_FINGER = common dso_local global i32 0, align 4
@RMI_F11_HAS_ADJ_HYST = common dso_local global i32 0, align 4
@RMI_F11_HAS_DRIBBLE = common dso_local global i32 0, align 4
@RMI_F11_HAS_BENDING_CORRECTION = common dso_local global i32 0, align 4
@RMI_F11_HAS_LARGE_OBJECT_SUPPRESSION = common dso_local global i32 0, align 4
@RMI_F11_HAS_JITTER_FILTER = common dso_local global i32 0, align 4
@RMI_F11_QUERY_GESTURE_SIZE = common dso_local global i32 0, align 4
@RMI_F11_HAS_SINGLE_TAP = common dso_local global i32 0, align 4
@RMI_F11_HAS_TAP_AND_HOLD = common dso_local global i32 0, align 4
@RMI_F11_HAS_DOUBLE_TAP = common dso_local global i32 0, align 4
@RMI_F11_HAS_EARLY_TAP = common dso_local global i32 0, align 4
@RMI_F11_HAS_FLICK = common dso_local global i32 0, align 4
@RMI_F11_HAS_PRESS = common dso_local global i32 0, align 4
@RMI_F11_HAS_PINCH = common dso_local global i32 0, align 4
@RMI_F11_HAS_CHIRAL = common dso_local global i32 0, align 4
@RMI_F11_HAS_PALM_DET = common dso_local global i32 0, align 4
@RMI_F11_HAS_ROTATE = common dso_local global i32 0, align 4
@RMI_F11_HAS_TOUCH_SHAPES = common dso_local global i32 0, align 4
@RMI_F11_HAS_SCROLL_ZONES = common dso_local global i32 0, align 4
@RMI_F11_HAS_INDIVIDUAL_SCROLL_ZONES = common dso_local global i32 0, align 4
@RMI_F11_HAS_MF_SCROLL = common dso_local global i32 0, align 4
@RMI_F11_HAS_MF_EDGE_MOTION = common dso_local global i32 0, align 4
@RMI_F11_HAS_MF_SCROLL_INERTIA = common dso_local global i32 0, align 4
@RMI_F11_HAS_PEN = common dso_local global i32 0, align 4
@RMI_F11_HAS_PROXIMITY = common dso_local global i32 0, align 4
@RMI_F11_HAS_PALM_DET_SENSITIVITY = common dso_local global i32 0, align 4
@RMI_F11_HAS_SUPPRESS_ON_PALM_DETECT = common dso_local global i32 0, align 4
@RMI_F11_HAS_TWO_PEN_THRESHOLDS = common dso_local global i32 0, align 4
@RMI_F11_HAS_CONTACT_GEOMETRY = common dso_local global i32 0, align 4
@RMI_F11_HAS_PEN_HOVER_DISCRIMINATION = common dso_local global i32 0, align 4
@RMI_F11_HAS_PEN_FILTERS = common dso_local global i32 0, align 4
@RMI_F11_NR_TOUCH_SHAPES_MASK = common dso_local global i32 0, align 4
@RMI_F11_HAS_Z_TUNING = common dso_local global i32 0, align 4
@RMI_F11_HAS_ALGORITHM_SELECTION = common dso_local global i32 0, align 4
@RMI_F11_HAS_W_TUNING = common dso_local global i32 0, align 4
@RMI_F11_HAS_PITCH_INFO = common dso_local global i32 0, align 4
@RMI_F11_HAS_FINGER_SIZE = common dso_local global i32 0, align 4
@RMI_F11_HAS_SEGMENTATION_AGGRESSIVENESS = common dso_local global i32 0, align 4
@RMI_F11_HAS_XY_CLIP = common dso_local global i32 0, align 4
@RMI_F11_HAS_DRUMMING_FILTER = common dso_local global i32 0, align 4
@RMI_F11_HAS_GAPLESS_FINGER = common dso_local global i32 0, align 4
@RMI_F11_HAS_GAPLESS_FINGER_TUNING = common dso_local global i32 0, align 4
@RMI_F11_HAS_8BIT_W = common dso_local global i32 0, align 4
@RMI_F11_HAS_ADJUSTABLE_MAPPING = common dso_local global i32 0, align 4
@RMI_F11_HAS_INFO2 = common dso_local global i32 0, align 4
@RMI_F11_HAS_PHYSICAL_PROPS = common dso_local global i32 0, align 4
@RMI_F11_HAS_FINGER_LIMIT = common dso_local global i32 0, align 4
@RMI_F11_HAS_LINEAR_COEFF = common dso_local global i32 0, align 4
@RMI_F11_JITTER_WINDOW_MASK = common dso_local global i32 0, align 4
@RMI_F11_JITTER_FILTER_MASK = common dso_local global i32 0, align 4
@RMI_F11_JITTER_FILTER_SHIFT = common dso_local global i32 0, align 4
@RMI_F11_LIGHT_CONTROL_MASK = common dso_local global i32 0, align 4
@RMI_F11_IS_CLEAR = common dso_local global i32 0, align 4
@RMI_F11_CLICKPAD_PROPS_MASK = common dso_local global i32 0, align 4
@RMI_F11_CLICKPAD_PROPS_SHIFT = common dso_local global i32 0, align 4
@RMI_F11_MOUSE_BUTTONS_MASK = common dso_local global i32 0, align 4
@RMI_F11_MOUSE_BUTTONS_SHIFT = common dso_local global i32 0, align 4
@RMI_F11_HAS_ADVANCED_GESTURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_device*, %struct.f11_data*, %struct.f11_2d_sensor_queries*, i64)* @rmi_f11_get_query_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f11_get_query_parameters(%struct.rmi_device* %0, %struct.f11_data* %1, %struct.f11_2d_sensor_queries* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rmi_device*, align 8
  %7 = alloca %struct.f11_data*, align 8
  %8 = alloca %struct.f11_2d_sensor_queries*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rmi_device* %0, %struct.rmi_device** %6, align 8
  store %struct.f11_data* %1, %struct.f11_data** %7, align 8
  store %struct.f11_2d_sensor_queries* %2, %struct.f11_2d_sensor_queries** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @RMI_F11_QUERY_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @RMI_F11_QUERY_SIZE, align 4
  %23 = call i32 @rmi_read_block(%struct.rmi_device* %20, i64 %21, i32* %19, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

28:                                               ; preds = %4
  %29 = getelementptr inbounds i32, i32* %19, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = load i32, i32* @RMI_F11_NR_FINGERS_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %34 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds i32, i32* %19, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = load i32, i32* @RMI_F11_HAS_REL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %44 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds i32, i32* %19, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = load i32, i32* @RMI_F11_HAS_ABS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %54 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds i32, i32* %19, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = load i32, i32* @RMI_F11_HAS_GESTURES, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %64 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds i32, i32* %19, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = load i32, i32* @RMI_F11_HAS_SENSITIVITY_ADJ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %74 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds i32, i32* %19, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = load i32, i32* @RMI_F11_CONFIGURABLE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %84 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds i32, i32* %19, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RMI_F11_NR_ELECTRODES_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %90 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds i32, i32* %19, i64 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RMI_F11_NR_ELECTRODES_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %96 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds i32, i32* %19, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RMI_F11_NR_ELECTRODES_MASK, align 4
  %100 = and i32 %98, %99
  %101 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %102 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @RMI_F11_QUERY_SIZE, align 4
  store i32 %103, i32* %10, align 4
  %104 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %105 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %188

108:                                              ; preds = %28
  %109 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = call i32 @rmi_read(%struct.rmi_device* %109, i64 %113, i32* %19)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

119:                                              ; preds = %108
  %120 = getelementptr inbounds i32, i32* %19, i64 0
  %121 = load i32, i32* %120, align 16
  %122 = load i32, i32* @RMI_F11_ABS_DATA_SIZE_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %125 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds i32, i32* %19, i64 0
  %127 = load i32, i32* %126, align 16
  %128 = load i32, i32* @RMI_F11_HAS_ANCHORED_FINGER, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %135 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %134, i32 0, i32 10
  store i32 %133, i32* %135, align 4
  %136 = getelementptr inbounds i32, i32* %19, i64 0
  %137 = load i32, i32* %136, align 16
  %138 = load i32, i32* @RMI_F11_HAS_ADJ_HYST, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %145 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %144, i32 0, i32 11
  store i32 %143, i32* %145, align 4
  %146 = getelementptr inbounds i32, i32* %19, i64 0
  %147 = load i32, i32* %146, align 16
  %148 = load i32, i32* @RMI_F11_HAS_DRIBBLE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %155 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %154, i32 0, i32 12
  store i32 %153, i32* %155, align 4
  %156 = getelementptr inbounds i32, i32* %19, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = load i32, i32* @RMI_F11_HAS_BENDING_CORRECTION, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %165 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %164, i32 0, i32 13
  store i32 %163, i32* %165, align 4
  %166 = getelementptr inbounds i32, i32* %19, i64 0
  %167 = load i32, i32* %166, align 16
  %168 = load i32, i32* @RMI_F11_HAS_LARGE_OBJECT_SUPPRESSION, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %175 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %174, i32 0, i32 14
  store i32 %173, i32* %175, align 4
  %176 = getelementptr inbounds i32, i32* %19, i64 0
  %177 = load i32, i32* %176, align 16
  %178 = load i32, i32* @RMI_F11_HAS_JITTER_FILTER, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %185 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %184, i32 0, i32 15
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %119, %28
  %189 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %190 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %209

193:                                              ; preds = %188
  %194 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %195, %197
  %199 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %200 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %199, i32 0, i32 16
  %201 = call i32 @rmi_read(%struct.rmi_device* %194, i64 %198, i32* %200)
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %193
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

206:                                              ; preds = %193
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %206, %188
  %210 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %211 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %405

214:                                              ; preds = %209
  %215 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %216 = load i64, i64* %9, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %216, %218
  %220 = load i32, i32* @RMI_F11_QUERY_GESTURE_SIZE, align 4
  %221 = call i32 @rmi_read_block(%struct.rmi_device* %215, i64 %219, i32* %19, i32 %220)
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %214
  %225 = load i32, i32* %11, align 4
  store i32 %225, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

226:                                              ; preds = %214
  %227 = getelementptr inbounds i32, i32* %19, i64 0
  %228 = load i32, i32* %227, align 16
  %229 = load i32, i32* @RMI_F11_HAS_SINGLE_TAP, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  %232 = xor i1 %231, true
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %236 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %235, i32 0, i32 17
  store i32 %234, i32* %236, align 4
  %237 = getelementptr inbounds i32, i32* %19, i64 0
  %238 = load i32, i32* %237, align 16
  %239 = load i32, i32* @RMI_F11_HAS_TAP_AND_HOLD, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %246 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %245, i32 0, i32 18
  store i32 %244, i32* %246, align 4
  %247 = getelementptr inbounds i32, i32* %19, i64 0
  %248 = load i32, i32* %247, align 16
  %249 = load i32, i32* @RMI_F11_HAS_DOUBLE_TAP, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %256 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %255, i32 0, i32 19
  store i32 %254, i32* %256, align 4
  %257 = getelementptr inbounds i32, i32* %19, i64 0
  %258 = load i32, i32* %257, align 16
  %259 = load i32, i32* @RMI_F11_HAS_EARLY_TAP, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  %262 = xor i1 %261, true
  %263 = xor i1 %262, true
  %264 = zext i1 %263 to i32
  %265 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %266 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %265, i32 0, i32 20
  store i32 %264, i32* %266, align 4
  %267 = getelementptr inbounds i32, i32* %19, i64 0
  %268 = load i32, i32* %267, align 16
  %269 = load i32, i32* @RMI_F11_HAS_FLICK, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  %272 = xor i1 %271, true
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i32
  %275 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %276 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %275, i32 0, i32 21
  store i32 %274, i32* %276, align 4
  %277 = getelementptr inbounds i32, i32* %19, i64 0
  %278 = load i32, i32* %277, align 16
  %279 = load i32, i32* @RMI_F11_HAS_PRESS, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  %282 = xor i1 %281, true
  %283 = xor i1 %282, true
  %284 = zext i1 %283 to i32
  %285 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %286 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %285, i32 0, i32 22
  store i32 %284, i32* %286, align 4
  %287 = getelementptr inbounds i32, i32* %19, i64 0
  %288 = load i32, i32* %287, align 16
  %289 = load i32, i32* @RMI_F11_HAS_PINCH, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  %292 = xor i1 %291, true
  %293 = xor i1 %292, true
  %294 = zext i1 %293 to i32
  %295 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %296 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %295, i32 0, i32 23
  store i32 %294, i32* %296, align 4
  %297 = getelementptr inbounds i32, i32* %19, i64 0
  %298 = load i32, i32* %297, align 16
  %299 = load i32, i32* @RMI_F11_HAS_CHIRAL, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  %302 = xor i1 %301, true
  %303 = xor i1 %302, true
  %304 = zext i1 %303 to i32
  %305 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %306 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %305, i32 0, i32 24
  store i32 %304, i32* %306, align 4
  %307 = getelementptr inbounds i32, i32* %19, i64 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @RMI_F11_HAS_PALM_DET, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %316 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %315, i32 0, i32 25
  store i32 %314, i32* %316, align 4
  %317 = getelementptr inbounds i32, i32* %19, i64 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @RMI_F11_HAS_ROTATE, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  %322 = xor i1 %321, true
  %323 = xor i1 %322, true
  %324 = zext i1 %323 to i32
  %325 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %326 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %325, i32 0, i32 26
  store i32 %324, i32* %326, align 4
  %327 = getelementptr inbounds i32, i32* %19, i64 1
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @RMI_F11_HAS_TOUCH_SHAPES, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  %332 = xor i1 %331, true
  %333 = xor i1 %332, true
  %334 = zext i1 %333 to i32
  %335 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %336 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %335, i32 0, i32 27
  store i32 %334, i32* %336, align 4
  %337 = getelementptr inbounds i32, i32* %19, i64 1
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @RMI_F11_HAS_SCROLL_ZONES, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  %342 = xor i1 %341, true
  %343 = xor i1 %342, true
  %344 = zext i1 %343 to i32
  %345 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %346 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %345, i32 0, i32 28
  store i32 %344, i32* %346, align 4
  %347 = getelementptr inbounds i32, i32* %19, i64 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @RMI_F11_HAS_INDIVIDUAL_SCROLL_ZONES, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  %352 = xor i1 %351, true
  %353 = xor i1 %352, true
  %354 = zext i1 %353 to i32
  %355 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %356 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %355, i32 0, i32 29
  store i32 %354, i32* %356, align 4
  %357 = getelementptr inbounds i32, i32* %19, i64 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @RMI_F11_HAS_MF_SCROLL, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  %362 = xor i1 %361, true
  %363 = xor i1 %362, true
  %364 = zext i1 %363 to i32
  %365 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %366 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %365, i32 0, i32 30
  store i32 %364, i32* %366, align 4
  %367 = getelementptr inbounds i32, i32* %19, i64 1
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @RMI_F11_HAS_MF_EDGE_MOTION, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  %372 = xor i1 %371, true
  %373 = xor i1 %372, true
  %374 = zext i1 %373 to i32
  %375 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %376 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %375, i32 0, i32 31
  store i32 %374, i32* %376, align 4
  %377 = getelementptr inbounds i32, i32* %19, i64 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @RMI_F11_HAS_MF_SCROLL_INERTIA, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  %382 = xor i1 %381, true
  %383 = xor i1 %382, true
  %384 = zext i1 %383 to i32
  %385 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %386 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %385, i32 0, i32 32
  store i32 %384, i32* %386, align 4
  %387 = getelementptr inbounds i32, i32* %19, i64 0
  %388 = load i32, i32* %387, align 16
  %389 = icmp ne i32 %388, 0
  %390 = xor i1 %389, true
  %391 = xor i1 %390, true
  %392 = zext i1 %391 to i32
  %393 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %394 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %393, i32 0, i32 33
  store i32 %392, i32* %394, align 4
  %395 = getelementptr inbounds i32, i32* %19, i64 1
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %396, 0
  %398 = xor i1 %397, true
  %399 = xor i1 %398, true
  %400 = zext i1 %399 to i32
  %401 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %402 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %401, i32 0, i32 34
  store i32 %400, i32* %402, align 4
  %403 = load i32, i32* %10, align 4
  %404 = add nsw i32 %403, 2
  store i32 %404, i32* %10, align 4
  br label %405

405:                                              ; preds = %226, %209
  %406 = load %struct.f11_data*, %struct.f11_data** %7, align 8
  %407 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %406, i32 0, i32 5
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %504

410:                                              ; preds = %405
  %411 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %412 = load i64, i64* %9, align 8
  %413 = load i32, i32* %10, align 4
  %414 = sext i32 %413 to i64
  %415 = add nsw i64 %412, %414
  %416 = call i32 @rmi_read(%struct.rmi_device* %411, i64 %415, i32* %19)
  store i32 %416, i32* %11, align 4
  %417 = load i32, i32* %11, align 4
  %418 = icmp slt i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %410
  %420 = load i32, i32* %11, align 4
  store i32 %420, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

421:                                              ; preds = %410
  %422 = getelementptr inbounds i32, i32* %19, i64 0
  %423 = load i32, i32* %422, align 16
  %424 = load i32, i32* @RMI_F11_HAS_PEN, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  %427 = xor i1 %426, true
  %428 = xor i1 %427, true
  %429 = zext i1 %428 to i32
  %430 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %431 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %430, i32 0, i32 35
  store i32 %429, i32* %431, align 4
  %432 = getelementptr inbounds i32, i32* %19, i64 0
  %433 = load i32, i32* %432, align 16
  %434 = load i32, i32* @RMI_F11_HAS_PROXIMITY, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  %437 = xor i1 %436, true
  %438 = xor i1 %437, true
  %439 = zext i1 %438 to i32
  %440 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %441 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %440, i32 0, i32 36
  store i32 %439, i32* %441, align 4
  %442 = getelementptr inbounds i32, i32* %19, i64 0
  %443 = load i32, i32* %442, align 16
  %444 = load i32, i32* @RMI_F11_HAS_PALM_DET_SENSITIVITY, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  %447 = xor i1 %446, true
  %448 = xor i1 %447, true
  %449 = zext i1 %448 to i32
  %450 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %451 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %450, i32 0, i32 37
  store i32 %449, i32* %451, align 4
  %452 = getelementptr inbounds i32, i32* %19, i64 0
  %453 = load i32, i32* %452, align 16
  %454 = load i32, i32* @RMI_F11_HAS_SUPPRESS_ON_PALM_DETECT, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  %457 = xor i1 %456, true
  %458 = xor i1 %457, true
  %459 = zext i1 %458 to i32
  %460 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %461 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %460, i32 0, i32 38
  store i32 %459, i32* %461, align 4
  %462 = getelementptr inbounds i32, i32* %19, i64 0
  %463 = load i32, i32* %462, align 16
  %464 = load i32, i32* @RMI_F11_HAS_TWO_PEN_THRESHOLDS, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  %467 = xor i1 %466, true
  %468 = xor i1 %467, true
  %469 = zext i1 %468 to i32
  %470 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %471 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %470, i32 0, i32 39
  store i32 %469, i32* %471, align 4
  %472 = getelementptr inbounds i32, i32* %19, i64 0
  %473 = load i32, i32* %472, align 16
  %474 = load i32, i32* @RMI_F11_HAS_CONTACT_GEOMETRY, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  %477 = xor i1 %476, true
  %478 = xor i1 %477, true
  %479 = zext i1 %478 to i32
  %480 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %481 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %480, i32 0, i32 40
  store i32 %479, i32* %481, align 4
  %482 = getelementptr inbounds i32, i32* %19, i64 0
  %483 = load i32, i32* %482, align 16
  %484 = load i32, i32* @RMI_F11_HAS_PEN_HOVER_DISCRIMINATION, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  %487 = xor i1 %486, true
  %488 = xor i1 %487, true
  %489 = zext i1 %488 to i32
  %490 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %491 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %490, i32 0, i32 41
  store i32 %489, i32* %491, align 4
  %492 = getelementptr inbounds i32, i32* %19, i64 0
  %493 = load i32, i32* %492, align 16
  %494 = load i32, i32* @RMI_F11_HAS_PEN_FILTERS, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  %497 = xor i1 %496, true
  %498 = xor i1 %497, true
  %499 = zext i1 %498 to i32
  %500 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %501 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %500, i32 0, i32 42
  store i32 %499, i32* %501, align 4
  %502 = load i32, i32* %10, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %10, align 4
  br label %504

504:                                              ; preds = %421, %405
  %505 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %506 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %505, i32 0, i32 27
  %507 = load i32, i32* %506, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %529

509:                                              ; preds = %504
  %510 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %511 = load i64, i64* %9, align 8
  %512 = load i32, i32* %10, align 4
  %513 = sext i32 %512 to i64
  %514 = add nsw i64 %511, %513
  %515 = call i32 @rmi_read(%struct.rmi_device* %510, i64 %514, i32* %19)
  store i32 %515, i32* %11, align 4
  %516 = load i32, i32* %11, align 4
  %517 = icmp slt i32 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %509
  %519 = load i32, i32* %11, align 4
  store i32 %519, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

520:                                              ; preds = %509
  %521 = getelementptr inbounds i32, i32* %19, i64 0
  %522 = load i32, i32* %521, align 16
  %523 = load i32, i32* @RMI_F11_NR_TOUCH_SHAPES_MASK, align 4
  %524 = and i32 %522, %523
  %525 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %526 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %525, i32 0, i32 43
  store i32 %524, i32* %526, align 4
  %527 = load i32, i32* %10, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %10, align 4
  br label %529

529:                                              ; preds = %520, %504
  %530 = load %struct.f11_data*, %struct.f11_data** %7, align 8
  %531 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %530, i32 0, i32 4
  %532 = load i64, i64* %531, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %628

534:                                              ; preds = %529
  %535 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %536 = load i64, i64* %9, align 8
  %537 = load i32, i32* %10, align 4
  %538 = sext i32 %537 to i64
  %539 = add nsw i64 %536, %538
  %540 = call i32 @rmi_read(%struct.rmi_device* %535, i64 %539, i32* %19)
  store i32 %540, i32* %11, align 4
  %541 = load i32, i32* %11, align 4
  %542 = icmp slt i32 %541, 0
  br i1 %542, label %543, label %545

543:                                              ; preds = %534
  %544 = load i32, i32* %11, align 4
  store i32 %544, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

545:                                              ; preds = %534
  %546 = getelementptr inbounds i32, i32* %19, i64 0
  %547 = load i32, i32* %546, align 16
  %548 = load i32, i32* @RMI_F11_HAS_Z_TUNING, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  %551 = xor i1 %550, true
  %552 = xor i1 %551, true
  %553 = zext i1 %552 to i32
  %554 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %555 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %554, i32 0, i32 44
  store i32 %553, i32* %555, align 4
  %556 = getelementptr inbounds i32, i32* %19, i64 0
  %557 = load i32, i32* %556, align 16
  %558 = load i32, i32* @RMI_F11_HAS_ALGORITHM_SELECTION, align 4
  %559 = and i32 %557, %558
  %560 = icmp ne i32 %559, 0
  %561 = xor i1 %560, true
  %562 = xor i1 %561, true
  %563 = zext i1 %562 to i32
  %564 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %565 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %564, i32 0, i32 45
  store i32 %563, i32* %565, align 4
  %566 = getelementptr inbounds i32, i32* %19, i64 0
  %567 = load i32, i32* %566, align 16
  %568 = load i32, i32* @RMI_F11_HAS_W_TUNING, align 4
  %569 = and i32 %567, %568
  %570 = icmp ne i32 %569, 0
  %571 = xor i1 %570, true
  %572 = xor i1 %571, true
  %573 = zext i1 %572 to i32
  %574 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %575 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %574, i32 0, i32 46
  store i32 %573, i32* %575, align 4
  %576 = getelementptr inbounds i32, i32* %19, i64 0
  %577 = load i32, i32* %576, align 16
  %578 = load i32, i32* @RMI_F11_HAS_PITCH_INFO, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  %581 = xor i1 %580, true
  %582 = xor i1 %581, true
  %583 = zext i1 %582 to i32
  %584 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %585 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %584, i32 0, i32 47
  store i32 %583, i32* %585, align 4
  %586 = getelementptr inbounds i32, i32* %19, i64 0
  %587 = load i32, i32* %586, align 16
  %588 = load i32, i32* @RMI_F11_HAS_FINGER_SIZE, align 4
  %589 = and i32 %587, %588
  %590 = icmp ne i32 %589, 0
  %591 = xor i1 %590, true
  %592 = xor i1 %591, true
  %593 = zext i1 %592 to i32
  %594 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %595 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %594, i32 0, i32 48
  store i32 %593, i32* %595, align 4
  %596 = getelementptr inbounds i32, i32* %19, i64 0
  %597 = load i32, i32* %596, align 16
  %598 = load i32, i32* @RMI_F11_HAS_SEGMENTATION_AGGRESSIVENESS, align 4
  %599 = and i32 %597, %598
  %600 = icmp ne i32 %599, 0
  %601 = xor i1 %600, true
  %602 = xor i1 %601, true
  %603 = zext i1 %602 to i32
  %604 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %605 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %604, i32 0, i32 49
  store i32 %603, i32* %605, align 4
  %606 = getelementptr inbounds i32, i32* %19, i64 0
  %607 = load i32, i32* %606, align 16
  %608 = load i32, i32* @RMI_F11_HAS_XY_CLIP, align 4
  %609 = and i32 %607, %608
  %610 = icmp ne i32 %609, 0
  %611 = xor i1 %610, true
  %612 = xor i1 %611, true
  %613 = zext i1 %612 to i32
  %614 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %615 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %614, i32 0, i32 50
  store i32 %613, i32* %615, align 4
  %616 = getelementptr inbounds i32, i32* %19, i64 0
  %617 = load i32, i32* %616, align 16
  %618 = load i32, i32* @RMI_F11_HAS_DRUMMING_FILTER, align 4
  %619 = and i32 %617, %618
  %620 = icmp ne i32 %619, 0
  %621 = xor i1 %620, true
  %622 = xor i1 %621, true
  %623 = zext i1 %622 to i32
  %624 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %625 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %624, i32 0, i32 51
  store i32 %623, i32* %625, align 4
  %626 = load i32, i32* %10, align 4
  %627 = add nsw i32 %626, 1
  store i32 %627, i32* %10, align 4
  br label %628

628:                                              ; preds = %545, %529
  %629 = load %struct.f11_data*, %struct.f11_data** %7, align 8
  %630 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %629, i32 0, i32 3
  %631 = load i64, i64* %630, align 8
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %727

633:                                              ; preds = %628
  %634 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %635 = load i64, i64* %9, align 8
  %636 = load i32, i32* %10, align 4
  %637 = sext i32 %636 to i64
  %638 = add nsw i64 %635, %637
  %639 = call i32 @rmi_read(%struct.rmi_device* %634, i64 %638, i32* %19)
  store i32 %639, i32* %11, align 4
  %640 = load i32, i32* %11, align 4
  %641 = icmp slt i32 %640, 0
  br i1 %641, label %642, label %644

642:                                              ; preds = %633
  %643 = load i32, i32* %11, align 4
  store i32 %643, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

644:                                              ; preds = %633
  %645 = getelementptr inbounds i32, i32* %19, i64 0
  %646 = load i32, i32* %645, align 16
  %647 = load i32, i32* @RMI_F11_HAS_GAPLESS_FINGER, align 4
  %648 = and i32 %646, %647
  %649 = icmp ne i32 %648, 0
  %650 = xor i1 %649, true
  %651 = xor i1 %650, true
  %652 = zext i1 %651 to i32
  %653 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %654 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %653, i32 0, i32 52
  store i32 %652, i32* %654, align 4
  %655 = getelementptr inbounds i32, i32* %19, i64 0
  %656 = load i32, i32* %655, align 16
  %657 = load i32, i32* @RMI_F11_HAS_GAPLESS_FINGER_TUNING, align 4
  %658 = and i32 %656, %657
  %659 = icmp ne i32 %658, 0
  %660 = xor i1 %659, true
  %661 = xor i1 %660, true
  %662 = zext i1 %661 to i32
  %663 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %664 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %663, i32 0, i32 53
  store i32 %662, i32* %664, align 4
  %665 = getelementptr inbounds i32, i32* %19, i64 0
  %666 = load i32, i32* %665, align 16
  %667 = load i32, i32* @RMI_F11_HAS_8BIT_W, align 4
  %668 = and i32 %666, %667
  %669 = icmp ne i32 %668, 0
  %670 = xor i1 %669, true
  %671 = xor i1 %670, true
  %672 = zext i1 %671 to i32
  %673 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %674 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %673, i32 0, i32 54
  store i32 %672, i32* %674, align 4
  %675 = getelementptr inbounds i32, i32* %19, i64 0
  %676 = load i32, i32* %675, align 16
  %677 = load i32, i32* @RMI_F11_HAS_ADJUSTABLE_MAPPING, align 4
  %678 = and i32 %676, %677
  %679 = icmp ne i32 %678, 0
  %680 = xor i1 %679, true
  %681 = xor i1 %680, true
  %682 = zext i1 %681 to i32
  %683 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %684 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %683, i32 0, i32 55
  store i32 %682, i32* %684, align 4
  %685 = getelementptr inbounds i32, i32* %19, i64 0
  %686 = load i32, i32* %685, align 16
  %687 = load i32, i32* @RMI_F11_HAS_INFO2, align 4
  %688 = and i32 %686, %687
  %689 = icmp ne i32 %688, 0
  %690 = xor i1 %689, true
  %691 = xor i1 %690, true
  %692 = zext i1 %691 to i32
  %693 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %694 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %693, i32 0, i32 56
  store i32 %692, i32* %694, align 4
  %695 = getelementptr inbounds i32, i32* %19, i64 0
  %696 = load i32, i32* %695, align 16
  %697 = load i32, i32* @RMI_F11_HAS_PHYSICAL_PROPS, align 4
  %698 = and i32 %696, %697
  %699 = icmp ne i32 %698, 0
  %700 = xor i1 %699, true
  %701 = xor i1 %700, true
  %702 = zext i1 %701 to i32
  %703 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %704 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %703, i32 0, i32 57
  store i32 %702, i32* %704, align 4
  %705 = getelementptr inbounds i32, i32* %19, i64 0
  %706 = load i32, i32* %705, align 16
  %707 = load i32, i32* @RMI_F11_HAS_FINGER_LIMIT, align 4
  %708 = and i32 %706, %707
  %709 = icmp ne i32 %708, 0
  %710 = xor i1 %709, true
  %711 = xor i1 %710, true
  %712 = zext i1 %711 to i32
  %713 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %714 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %713, i32 0, i32 58
  store i32 %712, i32* %714, align 4
  %715 = getelementptr inbounds i32, i32* %19, i64 0
  %716 = load i32, i32* %715, align 16
  %717 = load i32, i32* @RMI_F11_HAS_LINEAR_COEFF, align 4
  %718 = and i32 %716, %717
  %719 = icmp ne i32 %718, 0
  %720 = xor i1 %719, true
  %721 = xor i1 %720, true
  %722 = zext i1 %721 to i32
  %723 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %724 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %723, i32 0, i32 59
  store i32 %722, i32* %724, align 4
  %725 = load i32, i32* %10, align 4
  %726 = add nsw i32 %725, 1
  store i32 %726, i32* %10, align 4
  br label %727

727:                                              ; preds = %644, %628
  %728 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %729 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %728, i32 0, i32 15
  %730 = load i32, i32* %729, align 4
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %760

732:                                              ; preds = %727
  %733 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %734 = load i64, i64* %9, align 8
  %735 = load i32, i32* %10, align 4
  %736 = sext i32 %735 to i64
  %737 = add nsw i64 %734, %736
  %738 = call i32 @rmi_read(%struct.rmi_device* %733, i64 %737, i32* %19)
  store i32 %738, i32* %11, align 4
  %739 = load i32, i32* %11, align 4
  %740 = icmp slt i32 %739, 0
  br i1 %740, label %741, label %743

741:                                              ; preds = %732
  %742 = load i32, i32* %11, align 4
  store i32 %742, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

743:                                              ; preds = %732
  %744 = getelementptr inbounds i32, i32* %19, i64 0
  %745 = load i32, i32* %744, align 16
  %746 = load i32, i32* @RMI_F11_JITTER_WINDOW_MASK, align 4
  %747 = and i32 %745, %746
  %748 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %749 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %748, i32 0, i32 60
  store i32 %747, i32* %749, align 4
  %750 = getelementptr inbounds i32, i32* %19, i64 0
  %751 = load i32, i32* %750, align 16
  %752 = load i32, i32* @RMI_F11_JITTER_FILTER_MASK, align 4
  %753 = and i32 %751, %752
  %754 = load i32, i32* @RMI_F11_JITTER_FILTER_SHIFT, align 4
  %755 = ashr i32 %753, %754
  %756 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %757 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %756, i32 0, i32 61
  store i32 %755, i32* %757, align 4
  %758 = load i32, i32* %10, align 4
  %759 = add nsw i32 %758, 1
  store i32 %759, i32* %10, align 4
  br label %760

760:                                              ; preds = %743, %727
  %761 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %762 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %761, i32 0, i32 56
  %763 = load i32, i32* %762, align 4
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %821

765:                                              ; preds = %760
  %766 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %767 = load i64, i64* %9, align 8
  %768 = load i32, i32* %10, align 4
  %769 = sext i32 %768 to i64
  %770 = add nsw i64 %767, %769
  %771 = call i32 @rmi_read(%struct.rmi_device* %766, i64 %770, i32* %19)
  store i32 %771, i32* %11, align 4
  %772 = load i32, i32* %11, align 4
  %773 = icmp slt i32 %772, 0
  br i1 %773, label %774, label %776

774:                                              ; preds = %765
  %775 = load i32, i32* %11, align 4
  store i32 %775, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

776:                                              ; preds = %765
  %777 = getelementptr inbounds i32, i32* %19, i64 0
  %778 = load i32, i32* %777, align 16
  %779 = load i32, i32* @RMI_F11_LIGHT_CONTROL_MASK, align 4
  %780 = and i32 %778, %779
  %781 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %782 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %781, i32 0, i32 62
  store i32 %780, i32* %782, align 4
  %783 = getelementptr inbounds i32, i32* %19, i64 0
  %784 = load i32, i32* %783, align 16
  %785 = load i32, i32* @RMI_F11_IS_CLEAR, align 4
  %786 = and i32 %784, %785
  %787 = icmp ne i32 %786, 0
  %788 = xor i1 %787, true
  %789 = xor i1 %788, true
  %790 = zext i1 %789 to i32
  %791 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %792 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %791, i32 0, i32 63
  store i32 %790, i32* %792, align 4
  %793 = getelementptr inbounds i32, i32* %19, i64 0
  %794 = load i32, i32* %793, align 16
  %795 = load i32, i32* @RMI_F11_CLICKPAD_PROPS_MASK, align 4
  %796 = and i32 %794, %795
  %797 = load i32, i32* @RMI_F11_CLICKPAD_PROPS_SHIFT, align 4
  %798 = ashr i32 %796, %797
  %799 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %800 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %799, i32 0, i32 64
  store i32 %798, i32* %800, align 4
  %801 = getelementptr inbounds i32, i32* %19, i64 0
  %802 = load i32, i32* %801, align 16
  %803 = load i32, i32* @RMI_F11_MOUSE_BUTTONS_MASK, align 4
  %804 = and i32 %802, %803
  %805 = load i32, i32* @RMI_F11_MOUSE_BUTTONS_SHIFT, align 4
  %806 = ashr i32 %804, %805
  %807 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %808 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %807, i32 0, i32 65
  store i32 %806, i32* %808, align 4
  %809 = getelementptr inbounds i32, i32* %19, i64 0
  %810 = load i32, i32* %809, align 16
  %811 = load i32, i32* @RMI_F11_HAS_ADVANCED_GESTURES, align 4
  %812 = and i32 %810, %811
  %813 = icmp ne i32 %812, 0
  %814 = xor i1 %813, true
  %815 = xor i1 %814, true
  %816 = zext i1 %815 to i32
  %817 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %818 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %817, i32 0, i32 66
  store i32 %816, i32* %818, align 4
  %819 = load i32, i32* %10, align 4
  %820 = add nsw i32 %819, 1
  store i32 %820, i32* %10, align 4
  br label %821

821:                                              ; preds = %776, %760
  %822 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %823 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %822, i32 0, i32 57
  %824 = load i32, i32* %823, align 4
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %858

826:                                              ; preds = %821
  %827 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %828 = load i64, i64* %9, align 8
  %829 = load i32, i32* %10, align 4
  %830 = sext i32 %829 to i64
  %831 = add nsw i64 %828, %830
  %832 = call i32 @rmi_read_block(%struct.rmi_device* %827, i64 %831, i32* %19, i32 4)
  store i32 %832, i32* %11, align 4
  %833 = load i32, i32* %11, align 4
  %834 = icmp slt i32 %833, 0
  br i1 %834, label %835, label %837

835:                                              ; preds = %826
  %836 = load i32, i32* %11, align 4
  store i32 %836, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

837:                                              ; preds = %826
  %838 = getelementptr inbounds i32, i32* %19, i64 0
  %839 = load i32, i32* %838, align 16
  %840 = getelementptr inbounds i32, i32* %19, i64 1
  %841 = load i32, i32* %840, align 4
  %842 = shl i32 %841, 8
  %843 = or i32 %839, %842
  %844 = sdiv i32 %843, 10
  %845 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %846 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %845, i32 0, i32 67
  store i32 %844, i32* %846, align 4
  %847 = getelementptr inbounds i32, i32* %19, i64 2
  %848 = load i32, i32* %847, align 8
  %849 = getelementptr inbounds i32, i32* %19, i64 3
  %850 = load i32, i32* %849, align 4
  %851 = shl i32 %850, 8
  %852 = or i32 %848, %851
  %853 = sdiv i32 %852, 10
  %854 = load %struct.f11_2d_sensor_queries*, %struct.f11_2d_sensor_queries** %8, align 8
  %855 = getelementptr inbounds %struct.f11_2d_sensor_queries, %struct.f11_2d_sensor_queries* %854, i32 0, i32 68
  store i32 %853, i32* %855, align 4
  %856 = load i32, i32* %10, align 4
  %857 = add nsw i32 %856, 12
  store i32 %857, i32* %10, align 4
  br label %858

858:                                              ; preds = %837, %821
  %859 = load %struct.f11_data*, %struct.f11_data** %7, align 8
  %860 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %859, i32 0, i32 2
  %861 = load i64, i64* %860, align 8
  %862 = icmp ne i64 %861, 0
  br i1 %862, label %863, label %866

863:                                              ; preds = %858
  %864 = load i32, i32* %10, align 4
  %865 = add nsw i32 %864, 1
  store i32 %865, i32* %10, align 4
  br label %866

866:                                              ; preds = %863, %858
  %867 = load %struct.f11_data*, %struct.f11_data** %7, align 8
  %868 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %867, i32 0, i32 1
  %869 = load i64, i64* %868, align 8
  %870 = icmp ne i64 %869, 0
  br i1 %870, label %871, label %891

871:                                              ; preds = %866
  %872 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %873 = load i64, i64* %9, align 8
  %874 = load i32, i32* %10, align 4
  %875 = sext i32 %874 to i64
  %876 = add nsw i64 %873, %875
  %877 = call i32 @rmi_read(%struct.rmi_device* %872, i64 %876, i32* %19)
  store i32 %877, i32* %11, align 4
  %878 = load i32, i32* %11, align 4
  %879 = icmp slt i32 %878, 0
  br i1 %879, label %880, label %882

880:                                              ; preds = %871
  %881 = load i32, i32* %11, align 4
  store i32 %881, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

882:                                              ; preds = %871
  %883 = getelementptr inbounds i32, i32* %19, i64 0
  %884 = load i32, i32* %883, align 16
  %885 = call i32 @BIT(i32 6)
  %886 = and i32 %884, %885
  %887 = icmp ne i32 %886, 0
  %888 = xor i1 %887, true
  %889 = xor i1 %888, true
  %890 = zext i1 %889 to i32
  store i32 %890, i32* %14, align 4
  br label %891

891:                                              ; preds = %882, %866
  %892 = load i32, i32* %14, align 4
  %893 = icmp ne i32 %892, 0
  br i1 %893, label %894, label %917

894:                                              ; preds = %891
  %895 = load i32, i32* %10, align 4
  %896 = add nsw i32 %895, 2
  store i32 %896, i32* %10, align 4
  %897 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %898 = load i64, i64* %9, align 8
  %899 = load i32, i32* %10, align 4
  %900 = sext i32 %899 to i64
  %901 = add nsw i64 %898, %900
  %902 = call i32 @rmi_read(%struct.rmi_device* %897, i64 %901, i32* %19)
  store i32 %902, i32* %11, align 4
  %903 = load i32, i32* %11, align 4
  %904 = icmp slt i32 %903, 0
  br i1 %904, label %905, label %907

905:                                              ; preds = %894
  %906 = load i32, i32* %11, align 4
  store i32 %906, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

907:                                              ; preds = %894
  %908 = getelementptr inbounds i32, i32* %19, i64 0
  %909 = load i32, i32* %908, align 16
  %910 = call i32 @BIT(i32 5)
  %911 = and i32 %909, %910
  %912 = icmp ne i32 %911, 0
  br i1 %912, label %913, label %916

913:                                              ; preds = %907
  %914 = load %struct.f11_data*, %struct.f11_data** %7, align 8
  %915 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %914, i32 0, i32 0
  store i32 1, i32* %915, align 8
  br label %916

916:                                              ; preds = %913, %907
  br label %917

917:                                              ; preds = %916, %891
  %918 = load i32, i32* %10, align 4
  store i32 %918, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %919

919:                                              ; preds = %917, %905, %880, %835, %774, %741, %642, %543, %518, %419, %224, %204, %117, %26
  %920 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %920)
  %921 = load i32, i32* %5, align 4
  ret i32 %921
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rmi_read_block(%struct.rmi_device*, i64, i32*, i32) #2

declare dso_local i32 @rmi_read(%struct.rmi_device*, i64, i32*) #2

declare dso_local i32 @BIT(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
