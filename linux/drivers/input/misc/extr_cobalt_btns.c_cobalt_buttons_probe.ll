; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cobalt_btns.c_cobalt_buttons_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cobalt_btns.c_cobalt_buttons_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.buttons_dev = type { i32, %struct.input_polled_dev*, i32* }
%struct.input_polled_dev = type { %struct.input_dev*, i32, i32, %struct.buttons_dev* }
%struct.input_dev = type { i8*, i8*, i32, i32, i32, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cobalt_map = common dso_local global i32* null, align 8
@handle_buttons = common dso_local global i32 0, align 4
@BUTTONS_POLL_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Cobalt buttons\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cobalt/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cobalt_buttons_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_buttons_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.buttons_dev*, align 8
  %5 = alloca %struct.input_polled_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.buttons_dev* @kzalloc(i32 24, i32 %10)
  store %struct.buttons_dev* %11, %struct.buttons_dev** %4, align 8
  %12 = call %struct.input_polled_dev* (...) @input_allocate_polled_device()
  store %struct.input_polled_dev* %12, %struct.input_polled_dev** %5, align 8
  %13 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %14 = icmp ne %struct.buttons_dev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %17 = icmp ne %struct.input_polled_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %135

21:                                               ; preds = %15
  %22 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %23 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** @cobalt_map, align 8
  %26 = call i32 @memcpy(i32* %24, i32* %25, i32 8)
  %27 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %28 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %29 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %28, i32 0, i32 3
  store %struct.buttons_dev* %27, %struct.buttons_dev** %29, align 8
  %30 = load i32, i32* @handle_buttons, align 4
  %31 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %32 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @BUTTONS_POLL_INTERVAL, align 4
  %34 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %35 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %37 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %36, i32 0, i32 0
  %38 = load %struct.input_dev*, %struct.input_dev** %37, align 8
  store %struct.input_dev* %38, %struct.input_dev** %6, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @BUS_HOST, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32* %48, i32** %51, align 8
  %52 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %53 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 6
  store i32* %54, i32** %56, align 8
  %57 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %58 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 3
  store i32 2, i32* %64, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %66 = load i32, i32* @EV_MSC, align 4
  %67 = load i32, i32* @MSC_SCAN, align 4
  %68 = call i32 @input_set_capability(%struct.input_dev* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @EV_KEY, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__set_bit(i32 %69, i32 %72)
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %91, %21
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** @cobalt_map, align 8
  %77 = call i32 @ARRAY_SIZE(i32* %76)
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %81 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @__set_bit(i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load i32, i32* @KEY_RESERVED, align 4
  %96 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @__clear_bit(i32 %95, i32 %98)
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = load i32, i32* @IORESOURCE_MEM, align 4
  %102 = call %struct.resource* @platform_get_resource(%struct.platform_device* %100, i32 %101, i32 0)
  store %struct.resource* %102, %struct.resource** %7, align 8
  %103 = load %struct.resource*, %struct.resource** %7, align 8
  %104 = icmp ne %struct.resource* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %94
  %106 = load i32, i32* @EBUSY, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %135

108:                                              ; preds = %94
  %109 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %110 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %111 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %110, i32 0, i32 1
  store %struct.input_polled_dev* %109, %struct.input_polled_dev** %111, align 8
  %112 = load %struct.resource*, %struct.resource** %7, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.resource*, %struct.resource** %7, align 8
  %116 = call i32 @resource_size(%struct.resource* %115)
  %117 = call i32 @ioremap(i32 %114, i32 %116)
  %118 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %119 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %123 = call i32 @dev_set_drvdata(i32* %121, %struct.buttons_dev* %122)
  %124 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %125 = call i32 @input_register_polled_device(%struct.input_polled_dev* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %108
  br label %130

129:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %141

130:                                              ; preds = %128
  %131 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %132 = getelementptr inbounds %struct.buttons_dev, %struct.buttons_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @iounmap(i32 %133)
  br label %135

135:                                              ; preds = %130, %105, %18
  %136 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %137 = call i32 @input_free_polled_device(%struct.input_polled_dev* %136)
  %138 = load %struct.buttons_dev*, %struct.buttons_dev** %4, align 8
  %139 = call i32 @kfree(%struct.buttons_dev* %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %135, %129
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.buttons_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.input_polled_dev* @input_allocate_polled_device(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.buttons_dev*) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @input_free_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @kfree(%struct.buttons_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
