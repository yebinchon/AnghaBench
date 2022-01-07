; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_initialize_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_initialize_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@WACOM_DEVICETYPE_PAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot create leds err: %d\0A\00", align 1
@generic_led_attr_group = common dso_local global i32 0, align 4
@intuos4_led_attr_group = common dso_local global i32 0, align 4
@cintiq_led_attr_group = common dso_local global i32 0, align 4
@intuos5_led_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot create sysfs group err: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wacom_initialize_leds(%struct.wacom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %3, align 8
  %5 = load %struct.wacom*, %struct.wacom** %3, align 8
  %6 = getelementptr inbounds %struct.wacom, %struct.wacom* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %172

14:                                               ; preds = %1
  %15 = load %struct.wacom*, %struct.wacom** %3, align 8
  %16 = getelementptr inbounds %struct.wacom, %struct.wacom* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %160 [
    i32 142, label %20
    i32 139, label %47
    i32 141, label %47
    i32 138, label %47
    i32 140, label %47
    i32 128, label %77
    i32 129, label %77
    i32 135, label %101
    i32 137, label %101
    i32 136, label %101
    i32 131, label %101
    i32 132, label %101
    i32 133, label %101
    i32 134, label %122
    i32 130, label %141
  ]

20:                                               ; preds = %14
  %21 = load %struct.wacom*, %struct.wacom** %3, align 8
  %22 = getelementptr inbounds %struct.wacom, %struct.wacom* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %172

26:                                               ; preds = %20
  %27 = load %struct.wacom*, %struct.wacom** %3, align 8
  %28 = getelementptr inbounds %struct.wacom, %struct.wacom* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 100, i32* %29, align 4
  %30 = load %struct.wacom*, %struct.wacom** %3, align 8
  %31 = getelementptr inbounds %struct.wacom, %struct.wacom* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 100, i32* %32, align 4
  %33 = load %struct.wacom*, %struct.wacom** %3, align 8
  %34 = call i32 @wacom_leds_alloc_and_register(%struct.wacom* %33, i32 1, i32 4, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.wacom*, %struct.wacom** %3, align 8
  %39 = getelementptr inbounds %struct.wacom, %struct.wacom* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @hid_err(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %172

44:                                               ; preds = %26
  %45 = load %struct.wacom*, %struct.wacom** %3, align 8
  %46 = call i32 @wacom_devm_sysfs_create_group(%struct.wacom* %45, i32* @generic_led_attr_group)
  store i32 %46, i32* %4, align 4
  br label %161

47:                                               ; preds = %14, %14, %14, %14
  %48 = load %struct.wacom*, %struct.wacom** %3, align 8
  %49 = getelementptr inbounds %struct.wacom, %struct.wacom* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 10, i32* %50, align 4
  %51 = load %struct.wacom*, %struct.wacom** %3, align 8
  %52 = getelementptr inbounds %struct.wacom, %struct.wacom* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i32 20, i32* %53, align 4
  %54 = load %struct.wacom*, %struct.wacom** %3, align 8
  %55 = getelementptr inbounds %struct.wacom, %struct.wacom* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 127, i32* %56, align 4
  %57 = load %struct.wacom*, %struct.wacom** %3, align 8
  %58 = getelementptr inbounds %struct.wacom, %struct.wacom* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  store i32 127, i32* %59, align 4
  %60 = load %struct.wacom*, %struct.wacom** %3, align 8
  %61 = getelementptr inbounds %struct.wacom, %struct.wacom* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  store i32 10, i32* %62, align 4
  %63 = load %struct.wacom*, %struct.wacom** %3, align 8
  %64 = call i32 @wacom_leds_alloc_and_register(%struct.wacom* %63, i32 1, i32 4, i32 0)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %47
  %68 = load %struct.wacom*, %struct.wacom** %3, align 8
  %69 = getelementptr inbounds %struct.wacom, %struct.wacom* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @hid_err(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %172

74:                                               ; preds = %47
  %75 = load %struct.wacom*, %struct.wacom** %3, align 8
  %76 = call i32 @wacom_devm_sysfs_create_group(%struct.wacom* %75, i32* @intuos4_led_attr_group)
  store i32 %76, i32* %4, align 4
  br label %161

77:                                               ; preds = %14, %14
  %78 = load %struct.wacom*, %struct.wacom** %3, align 8
  %79 = getelementptr inbounds %struct.wacom, %struct.wacom* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  %81 = load %struct.wacom*, %struct.wacom** %3, align 8
  %82 = getelementptr inbounds %struct.wacom, %struct.wacom* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i32 0, i32* %83, align 4
  %84 = load %struct.wacom*, %struct.wacom** %3, align 8
  %85 = getelementptr inbounds %struct.wacom, %struct.wacom* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i32 0, i32* %86, align 4
  %87 = load %struct.wacom*, %struct.wacom** %3, align 8
  %88 = call i32 @wacom_leds_alloc_and_register(%struct.wacom* %87, i32 2, i32 4, i32 0)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %77
  %92 = load %struct.wacom*, %struct.wacom** %3, align 8
  %93 = getelementptr inbounds %struct.wacom, %struct.wacom* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @hid_err(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %172

98:                                               ; preds = %77
  %99 = load %struct.wacom*, %struct.wacom** %3, align 8
  %100 = call i32 @wacom_devm_sysfs_create_group(%struct.wacom* %99, i32* @cintiq_led_attr_group)
  store i32 %100, i32* %4, align 4
  br label %161

101:                                              ; preds = %14, %14, %14, %14, %14, %14
  %102 = load %struct.wacom*, %struct.wacom** %3, align 8
  %103 = getelementptr inbounds %struct.wacom, %struct.wacom* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 32, i32* %104, align 4
  %105 = load %struct.wacom*, %struct.wacom** %3, align 8
  %106 = getelementptr inbounds %struct.wacom, %struct.wacom* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i32 96, i32* %107, align 4
  %108 = load %struct.wacom*, %struct.wacom** %3, align 8
  %109 = call i32 @wacom_leds_alloc_and_register(%struct.wacom* %108, i32 1, i32 4, i32 0)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load %struct.wacom*, %struct.wacom** %3, align 8
  %114 = getelementptr inbounds %struct.wacom, %struct.wacom* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @hid_err(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %172

119:                                              ; preds = %101
  %120 = load %struct.wacom*, %struct.wacom** %3, align 8
  %121 = call i32 @wacom_devm_sysfs_create_group(%struct.wacom* %120, i32* @intuos5_led_attr_group)
  store i32 %121, i32* %4, align 4
  br label %161

122:                                              ; preds = %14
  %123 = load %struct.wacom*, %struct.wacom** %3, align 8
  %124 = getelementptr inbounds %struct.wacom, %struct.wacom* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 50, i32* %125, align 4
  %126 = load %struct.wacom*, %struct.wacom** %3, align 8
  %127 = getelementptr inbounds %struct.wacom, %struct.wacom* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 100, i32* %128, align 4
  %129 = load %struct.wacom*, %struct.wacom** %3, align 8
  %130 = call i32 @wacom_leds_alloc_and_register(%struct.wacom* %129, i32 1, i32 4, i32 0)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %122
  %134 = load %struct.wacom*, %struct.wacom** %3, align 8
  %135 = getelementptr inbounds %struct.wacom, %struct.wacom* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @hid_err(i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %172

140:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %172

141:                                              ; preds = %14
  %142 = load %struct.wacom*, %struct.wacom** %3, align 8
  %143 = getelementptr inbounds %struct.wacom, %struct.wacom* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 255, i32* %144, align 4
  %145 = load %struct.wacom*, %struct.wacom** %3, align 8
  %146 = getelementptr inbounds %struct.wacom, %struct.wacom* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32 255, i32* %147, align 4
  %148 = load %struct.wacom*, %struct.wacom** %3, align 8
  %149 = call i32 @wacom_led_groups_allocate(%struct.wacom* %148, i32 5)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %141
  %153 = load %struct.wacom*, %struct.wacom** %3, align 8
  %154 = getelementptr inbounds %struct.wacom, %struct.wacom* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @hid_err(i32 %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %172

159:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %172

160:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %172

161:                                              ; preds = %119, %98, %74, %44
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load %struct.wacom*, %struct.wacom** %3, align 8
  %166 = getelementptr inbounds %struct.wacom, %struct.wacom* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @hid_err(i32 %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %2, align 4
  br label %172

171:                                              ; preds = %161
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %164, %160, %159, %152, %140, %133, %112, %91, %67, %37, %25, %13
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @wacom_leds_alloc_and_register(%struct.wacom*, i32, i32, i32) #1

declare dso_local i32 @hid_err(i32, i8*, i32) #1

declare dso_local i32 @wacom_devm_sysfs_create_group(%struct.wacom*, i32*) #1

declare dso_local i32 @wacom_led_groups_allocate(%struct.wacom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
