; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_jornada680_kbd.c_jornada680kbd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_jornada680_kbd.c_jornada680kbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.jornadakbd = type { %struct.input_polled_dev*, i64* }
%struct.input_polled_dev = type { i32, %struct.input_dev*, i32, %struct.jornadakbd* }
%struct.input_dev = type { i32*, i8*, i8*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to allocate polled input device\0A\00", align 1
@jornada_scancodes = common dso_local global i32 0, align 4
@jornadakbd680_poll = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"HP Jornada 680 keyboard\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"jornadakbd/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to register polled input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jornada680kbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada680kbd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.jornadakbd*, align 8
  %5 = alloca %struct.input_polled_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.jornadakbd* @devm_kzalloc(i32* %10, i32 16, i32 %11)
  store %struct.jornadakbd* %12, %struct.jornadakbd** %4, align 8
  %13 = load %struct.jornadakbd*, %struct.jornadakbd** %4, align 8
  %14 = icmp ne %struct.jornadakbd* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %133

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.input_polled_dev* @devm_input_allocate_polled_device(i32* %20)
  store %struct.input_polled_dev* %21, %struct.input_polled_dev** %5, align 8
  %22 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %23 = icmp ne %struct.input_polled_dev* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %133

30:                                               ; preds = %18
  %31 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %32 = load %struct.jornadakbd*, %struct.jornadakbd** %4, align 8
  %33 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %32, i32 0, i32 0
  store %struct.input_polled_dev* %31, %struct.input_polled_dev** %33, align 8
  %34 = load %struct.jornadakbd*, %struct.jornadakbd** %4, align 8
  %35 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* @jornada_scancodes, align 4
  %38 = call i32 @memcpy(i64* %36, i32 %37, i32 8)
  %39 = load %struct.jornadakbd*, %struct.jornadakbd** %4, align 8
  %40 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %41 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %40, i32 0, i32 3
  store %struct.jornadakbd* %39, %struct.jornadakbd** %41, align 8
  %42 = load i32, i32* @jornadakbd680_poll, align 4
  %43 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %44 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %46 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %45, i32 0, i32 0
  store i32 50, i32* %46, align 8
  %47 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %48 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %47, i32 0, i32 1
  %49 = load %struct.input_dev*, %struct.input_dev** %48, align 8
  store %struct.input_dev* %49, %struct.input_dev** %6, align 8
  %50 = load i32, i32* @EV_KEY, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = load i32, i32* @EV_REP, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = or i32 %51, %53
  %55 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %60, align 8
  %61 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %62, align 8
  %63 = load %struct.jornadakbd*, %struct.jornadakbd** %4, align 8
  %64 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 8
  store i64* %65, i64** %67, align 8
  %68 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 3
  store i32 2, i32* %69, align 8
  %70 = load i32, i32* @jornada_scancodes, align 4
  %71 = call i32 @ARRAY_SIZE(i32 %70)
  %72 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32* %75, i32** %78, align 8
  %79 = load i32, i32* @BUS_HOST, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %108, %30
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 128
  br i1 %85, label %86, label %111

86:                                               ; preds = %83
  %87 = load %struct.jornadakbd*, %struct.jornadakbd** %4, align 8
  %88 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %86
  %96 = load %struct.jornadakbd*, %struct.jornadakbd** %4, align 8
  %97 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %104 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @__set_bit(i64 %102, i32 %105)
  br label %107

107:                                              ; preds = %95, %86
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %83

111:                                              ; preds = %83
  %112 = load i32, i32* @KEY_RESERVED, align 4
  %113 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @__clear_bit(i32 %112, i32 %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %118 = load i32, i32* @EV_MSC, align 4
  %119 = load i32, i32* @MSC_SCAN, align 4
  %120 = call i32 @input_set_capability(%struct.input_dev* %117, i32 %118, i32 %119)
  %121 = load %struct.jornadakbd*, %struct.jornadakbd** %4, align 8
  %122 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %121, i32 0, i32 0
  %123 = load %struct.input_polled_dev*, %struct.input_polled_dev** %122, align 8
  %124 = call i32 @input_register_polled_device(%struct.input_polled_dev* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %111
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %133

132:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %127, %24, %15
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.jornadakbd* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.input_polled_dev* @devm_input_allocate_polled_device(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
