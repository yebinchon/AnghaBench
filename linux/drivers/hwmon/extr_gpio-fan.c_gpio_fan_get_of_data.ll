; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c_gpio_fan_get_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c_gpio_fan_get_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_fan_data = type { i32, i32, %struct.gpio_fan_speed*, %struct.gpio_desc**, %struct.gpio_desc*, %struct.device* }
%struct.gpio_fan_speed = type { i8*, i8* }
%struct.gpio_desc = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"DT properties empty / missing\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_ASIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"gpio-fan,speed-map\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"gpio-fan,speed-map DT property missing\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"gpio-fan,speed-map contains zero/odd number of entries\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_fan_data*)* @gpio_fan_get_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_fan_get_of_data(%struct.gpio_fan_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_fan_data*, align 8
  %4 = alloca %struct.gpio_fan_speed*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.gpio_desc**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.property*, align 8
  %11 = alloca i32*, align 8
  store %struct.gpio_fan_data* %0, %struct.gpio_fan_data** %3, align 8
  %12 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %13 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %12, i32 0, i32 5
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* @GPIOD_IN, align 4
  %20 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %22 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %21, i32 0, i32 4
  store %struct.gpio_desc* %20, %struct.gpio_desc** %22, align 8
  %23 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %24 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %23, i32 0, i32 4
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %24, align 8
  %26 = call i64 @IS_ERR(%struct.gpio_desc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %30 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %29, i32 0, i32 4
  %31 = load %struct.gpio_desc*, %struct.gpio_desc** %30, align 8
  %32 = call i32 @PTR_ERR(%struct.gpio_desc* %31)
  store i32 %32, i32* %2, align 4
  br label %191

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @gpiod_count(%struct.device* %34, i32* null)
  %36 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %37 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %39 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ule i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %44 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %43, i32 0, i32 4
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %44, align 8
  %46 = icmp ne %struct.gpio_desc* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %191

48:                                               ; preds = %42
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %191

53:                                               ; preds = %33
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %56 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @devm_kcalloc(%struct.device* %54, i32 %57, i32 8, i32 %58)
  %60 = bitcast i8* %59 to %struct.gpio_desc**
  store %struct.gpio_desc** %60, %struct.gpio_desc*** %7, align 8
  %61 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %62 = icmp ne %struct.gpio_desc** %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %191

66:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %97, %66
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %70 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %67
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @GPIOD_ASIS, align 4
  %77 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %74, i32* null, i32 %75, i32 %76)
  %78 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %78, i64 %80
  store %struct.gpio_desc* %77, %struct.gpio_desc** %81, align 8
  %82 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %82, i64 %84
  %86 = load %struct.gpio_desc*, %struct.gpio_desc** %85, align 8
  %87 = call i64 @IS_ERR(%struct.gpio_desc* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %73
  %90 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %90, i64 %92
  %94 = load %struct.gpio_desc*, %struct.gpio_desc** %93, align 8
  %95 = call i32 @PTR_ERR(%struct.gpio_desc* %94)
  store i32 %95, i32* %2, align 4
  br label %191

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %67

100:                                              ; preds = %67
  %101 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %102 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %103 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %102, i32 0, i32 3
  store %struct.gpio_desc** %101, %struct.gpio_desc*** %103, align 8
  %104 = load %struct.device_node*, %struct.device_node** %6, align 8
  %105 = call %struct.property* @of_find_property(%struct.device_node* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  store %struct.property* %105, %struct.property** %10, align 8
  %106 = load %struct.property*, %struct.property** %10, align 8
  %107 = icmp ne %struct.property* %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %100
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %191

113:                                              ; preds = %100
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = udiv i64 %115, 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120, %113
  %125 = load %struct.device*, %struct.device** %5, align 8
  %126 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %191

129:                                              ; preds = %120
  %130 = load i32, i32* %8, align 4
  %131 = udiv i32 %130, 2
  %132 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %133 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %136 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call i8* @devm_kcalloc(%struct.device* %134, i32 %137, i32 16, i32 %138)
  %140 = bitcast i8* %139 to %struct.gpio_fan_speed*
  store %struct.gpio_fan_speed* %140, %struct.gpio_fan_speed** %4, align 8
  %141 = load %struct.gpio_fan_speed*, %struct.gpio_fan_speed** %4, align 8
  %142 = icmp ne %struct.gpio_fan_speed* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %129
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %191

146:                                              ; preds = %129
  store i32* null, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %184, %146
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %150 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ult i32 %148, %151
  br i1 %152, label %153, label %187

153:                                              ; preds = %147
  %154 = load %struct.property*, %struct.property** %10, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = call i32* @of_prop_next_u32(%struct.property* %154, i32* %155, i8** %9)
  store i32* %156, i32** %11, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %153
  %160 = load i32, i32* @ENODEV, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %191

162:                                              ; preds = %153
  %163 = load i8*, i8** %9, align 8
  %164 = load %struct.gpio_fan_speed*, %struct.gpio_fan_speed** %4, align 8
  %165 = load i32, i32* %8, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.gpio_fan_speed, %struct.gpio_fan_speed* %164, i64 %166
  %168 = getelementptr inbounds %struct.gpio_fan_speed, %struct.gpio_fan_speed* %167, i32 0, i32 1
  store i8* %163, i8** %168, align 8
  %169 = load %struct.property*, %struct.property** %10, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = call i32* @of_prop_next_u32(%struct.property* %169, i32* %170, i8** %9)
  store i32* %171, i32** %11, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %162
  %175 = load i32, i32* @ENODEV, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  br label %191

177:                                              ; preds = %162
  %178 = load i8*, i8** %9, align 8
  %179 = load %struct.gpio_fan_speed*, %struct.gpio_fan_speed** %4, align 8
  %180 = load i32, i32* %8, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.gpio_fan_speed, %struct.gpio_fan_speed* %179, i64 %181
  %183 = getelementptr inbounds %struct.gpio_fan_speed, %struct.gpio_fan_speed* %182, i32 0, i32 0
  store i8* %178, i8** %183, align 8
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %8, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %147

187:                                              ; preds = %147
  %188 = load %struct.gpio_fan_speed*, %struct.gpio_fan_speed** %4, align 8
  %189 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %190 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %189, i32 0, i32 2
  store %struct.gpio_fan_speed* %188, %struct.gpio_fan_speed** %190, align 8
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %174, %159, %143, %124, %108, %89, %63, %48, %47, %28
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_count(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.device*, i32*, i32, i32) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32* @of_prop_next_u32(%struct.property*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
