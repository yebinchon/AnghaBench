; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_sgi_btns.c_sgi_buttons_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_sgi_btns.c_sgi_buttons_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.buttons_dev = type { %struct.input_polled_dev*, i32* }
%struct.input_polled_dev = type { %struct.input_dev*, i32, i32, %struct.buttons_dev* }
%struct.input_dev = type { i8*, i8*, i32, i32, i32, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sgi_map = common dso_local global i32* null, align 8
@handle_buttons = common dso_local global i32 0, align 4
@BUTTONS_POLL_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SGI buttons\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sgi/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sgi_buttons_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgi_buttons_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.buttons_dev*, align 8
  %5 = alloca %struct.input_polled_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.buttons_dev* @kzalloc(i32 16, i32 %9)
  store %struct.buttons_dev* %10, %struct.buttons_dev** %4, align 8
  %11 = call %struct.input_polled_dev* (...) @input_allocate_polled_device()
  store %struct.input_polled_dev* %11, %struct.input_polled_dev** %5, align 8
  %12 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %13 = icmp ne %struct.buttons_dev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %16 = icmp ne %struct.input_polled_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %111

20:                                               ; preds = %14
  %21 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %22 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** @sgi_map, align 8
  %25 = call i32 @memcpy(i32* %23, i32* %24, i32 8)
  %26 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %27 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %28 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %27, i32 0, i32 3
  store %struct.buttons_dev* %26, %struct.buttons_dev** %28, align 8
  %29 = load i32, i32* @handle_buttons, align 4
  %30 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %31 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @BUTTONS_POLL_INTERVAL, align 4
  %33 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %34 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %36 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %35, i32 0, i32 0
  %37 = load %struct.input_dev*, %struct.input_dev** %36, align 8
  store %struct.input_dev* %37, %struct.input_dev** %6, align 8
  %38 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %40 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %41, align 8
  %42 = load i32, i32* @BUS_HOST, align 4
  %43 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32* %47, i32** %50, align 8
  %51 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %52 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 6
  store i32* %53, i32** %55, align 8
  %56 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %57 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @ARRAY_SIZE(i32* %58)
  %60 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 3
  store i32 2, i32* %63, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %65 = load i32, i32* @EV_MSC, align 4
  %66 = load i32, i32* @MSC_SCAN, align 4
  %67 = call i32 @input_set_capability(%struct.input_dev* %64, i32 %65, i32 %66)
  %68 = load i32, i32* @EV_KEY, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__set_bit(i32 %68, i32 %71)
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %90, %20
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** @sgi_map, align 8
  %76 = call i32 @ARRAY_SIZE(i32* %75)
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %80 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @__set_bit(i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %73

93:                                               ; preds = %73
  %94 = load i32, i32* @KEY_RESERVED, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @__clear_bit(i32 %94, i32 %97)
  %99 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %100 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %101 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %100, i32 0, i32 0
  store %struct.input_polled_dev* %99, %struct.input_polled_dev** %101, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.buttons_dev* %103)
  %105 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %106 = call i32 @input_register_polled_device(%struct.input_polled_dev* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %93
  br label %111

110:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %117

111:                                              ; preds = %109, %17
  %112 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %113 = call i32 @input_free_polled_device(%struct.input_polled_dev* %112)
  %114 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %115 = call i32 @kfree(%struct.buttons_dev* %114)
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %110
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.buttons_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.input_polled_dev* @input_allocate_polled_device(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.buttons_dev*) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @input_free_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @kfree(%struct.buttons_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
