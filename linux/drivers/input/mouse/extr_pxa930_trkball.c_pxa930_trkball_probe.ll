; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_pxa930_trkball.c_pxa930_trkball_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_pxa930_trkball.c_pxa930_trkball_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.pxa930_trkball = type { i32, %struct.input_dev*, i32 }
%struct.input_dev = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to get register memory\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no platform data defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to ioremap registers\0A\00", align 1
@pxa930_trkball_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to request irq: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@pxa930_trkball_open = common dso_local global i32 0, align 4
@pxa930_trkball_close = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"unable to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa930_trkball_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa930_trkball_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxa930_trkball*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call i32 @platform_get_irq(%struct.platform_device* %9, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %161

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %6, align 8
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = icmp ne %struct.resource* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %161

28:                                               ; preds = %16
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.pxa930_trkball* @kzalloc(i32 24, i32 %29)
  store %struct.pxa930_trkball* %30, %struct.pxa930_trkball** %4, align 8
  %31 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %32 = icmp ne %struct.pxa930_trkball* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %161

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_get_platdata(i32* %38)
  %40 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %41 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %43 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %36
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %157

52:                                               ; preds = %36
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = call i32 @resource_size(%struct.resource* %56)
  %58 = call i32 @ioremap_nocache(i32 %55, i32 %57)
  %59 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %60 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %62 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %52
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %157

71:                                               ; preds = %52
  %72 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %73 = call i32 @pxa930_trkball_disable(%struct.pxa930_trkball* %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @pxa930_trkball_interrupt, align 4
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %80 = call i32 @request_irq(i32 %74, i32 %75, i32 0, i32 %78, %struct.pxa930_trkball* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %152

88:                                               ; preds = %71
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %91 = call i32 @platform_set_drvdata(%struct.platform_device* %89, %struct.pxa930_trkball* %90)
  %92 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %92, %struct.input_dev** %5, align 8
  %93 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %94 = icmp ne %struct.input_dev* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %88
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %148

101:                                              ; preds = %88
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %106 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @BUS_HOST, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @pxa930_trkball_open, align 4
  %112 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @pxa930_trkball_close, align 4
  %115 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32* %118, i32** %121, align 8
  %122 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %123 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %124 = call i32 @input_set_drvdata(%struct.input_dev* %122, %struct.pxa930_trkball* %123)
  %125 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %126 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %127 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %126, i32 0, i32 1
  store %struct.input_dev* %125, %struct.input_dev** %127, align 8
  %128 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %129 = load i32, i32* @EV_REL, align 4
  %130 = load i32, i32* @REL_X, align 4
  %131 = call i32 @input_set_capability(%struct.input_dev* %128, i32 %129, i32 %130)
  %132 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %133 = load i32, i32* @EV_REL, align 4
  %134 = load i32, i32* @REL_Y, align 4
  %135 = call i32 @input_set_capability(%struct.input_dev* %132, i32 %133, i32 %134)
  %136 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %137 = call i32 @input_register_device(%struct.input_dev* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %101
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %145

144:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %161

145:                                              ; preds = %140
  %146 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %147 = call i32 @input_free_device(%struct.input_dev* %146)
  br label %148

148:                                              ; preds = %145, %95
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %151 = call i32 @free_irq(i32 %149, %struct.pxa930_trkball* %150)
  br label %152

152:                                              ; preds = %148, %83
  %153 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %154 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @iounmap(i32 %155)
  br label %157

157:                                              ; preds = %152, %65, %46
  %158 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %4, align 8
  %159 = call i32 @kfree(%struct.pxa930_trkball* %158)
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %157, %144, %33, %22, %13
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.pxa930_trkball* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_get_platdata(i32*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @pxa930_trkball_disable(%struct.pxa930_trkball*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.pxa930_trkball*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxa930_trkball*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.pxa930_trkball*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.pxa930_trkball*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.pxa930_trkball*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
