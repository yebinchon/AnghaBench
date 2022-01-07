; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_ntrig_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_ntrig_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32, i32, i32, i32, i64 }
%struct.hid_usage = type { i32 }
%struct.ntrig_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@activation_width = common dso_local global i32 0, align 4
@min_width = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@activation_height = common dso_local global i32 0, align 4
@min_height = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @ntrig_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntrig_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ntrig_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %16 = call %struct.ntrig_data* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.ntrig_data* %16, %struct.ntrig_data** %14, align 8
  %17 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %18 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %192

22:                                               ; preds = %6
  %23 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HID_USAGE_PAGE, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %191 [
    i32 128, label %28
    i32 129, label %163
    i32 -16777216, label %190
  ]

28:                                               ; preds = %22
  %29 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %30 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %162 [
    i32 131, label %32
    i32 130, label %97
  ]

32:                                               ; preds = %28
  %33 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %34 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %35 = load i64**, i64*** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* @EV_ABS, align 4
  %38 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %39 = call i32 @hid_map_usage(%struct.hid_input* %33, %struct.hid_usage* %34, i64** %35, i32* %36, i32 %37, i32 %38)
  %40 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %41 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ABS_X, align 4
  %44 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %45 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %48 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @input_set_abs_params(i32 %42, i32 %43, i32 %46, i32 %49, i32 0, i32 0)
  %51 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %52 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %32
  %56 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %57 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %60 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %58, %61
  %63 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %64 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %66 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %69 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %73 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @activation_width, align 4
  %75 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %76 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %80 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %78, %81
  %83 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %84 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @min_width, align 4
  %86 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %87 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %91 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %89, %92
  %94 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %95 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %55, %32
  store i32 1, i32* %7, align 4
  br label %192

97:                                               ; preds = %28
  %98 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %99 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %100 = load i64**, i64*** %12, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* @EV_ABS, align 4
  %103 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %104 = call i32 @hid_map_usage(%struct.hid_input* %98, %struct.hid_usage* %99, i64** %100, i32* %101, i32 %102, i32 %103)
  %105 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %106 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ABS_Y, align 4
  %109 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %110 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %113 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @input_set_abs_params(i32 %107, i32 %108, i32 %111, i32 %114, i32 0, i32 0)
  %116 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %117 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %161, label %120

120:                                              ; preds = %97
  %121 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %122 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %125 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %123, %126
  %128 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %129 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  %130 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %131 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %134 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %132, %135
  %137 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %138 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @activation_height, align 4
  %140 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %141 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  %144 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %145 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = sdiv i32 %143, %146
  %148 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %149 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @min_height, align 4
  %151 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %152 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %150, %153
  %155 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %156 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = sdiv i32 %154, %157
  %159 = load %struct.ntrig_data*, %struct.ntrig_data** %14, align 8
  %160 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %120, %97
  store i32 1, i32* %7, align 4
  br label %192

162:                                              ; preds = %28
  store i32 0, i32* %7, align 4
  br label %192

163:                                              ; preds = %22
  %164 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %165 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %189 [
    i32 137, label %167
    i32 133, label %167
    i32 135, label %167
    i32 136, label %167
    i32 132, label %168
    i32 134, label %176
  ]

167:                                              ; preds = %163, %163, %163, %163
  store i32 -1, i32* %7, align 4
  br label %192

168:                                              ; preds = %163
  %169 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %170 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %171 = load i64**, i64*** %12, align 8
  %172 = load i32*, i32** %13, align 8
  %173 = load i32, i32* @EV_ABS, align 4
  %174 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %175 = call i32 @hid_map_usage(%struct.hid_input* %169, %struct.hid_usage* %170, i64** %171, i32* %172, i32 %173, i32 %174)
  store i32 1, i32* %7, align 4
  br label %192

176:                                              ; preds = %163
  %177 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %178 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %179 = load i64**, i64*** %12, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = load i32, i32* @EV_ABS, align 4
  %182 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %183 = call i32 @hid_map_usage(%struct.hid_input* %177, %struct.hid_usage* %178, i64** %179, i32* %180, i32 %181, i32 %182)
  %184 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %185 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %188 = call i32 @input_set_abs_params(i32 %186, i32 %187, i32 0, i32 1, i32 0, i32 0)
  store i32 1, i32* %7, align 4
  br label %192

189:                                              ; preds = %163
  store i32 0, i32* %7, align 4
  br label %192

190:                                              ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %192

191:                                              ; preds = %22
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %191, %190, %189, %176, %168, %167, %162, %161, %96, %21
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local %struct.ntrig_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_map_usage(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
