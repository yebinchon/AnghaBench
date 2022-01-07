; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_opencores-kbd.c_opencores_kbd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_opencores-kbd.c_opencores_kbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.input_dev = type { i8*, i32*, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.opencores_kbd = type { i32*, i32, %struct.input_dev* }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"missing board memory resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"opencores-kbd/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@opencores_kbd_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"unable to claim irq %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @opencores_kbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opencores_kbd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.opencores_kbd*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %6, align 8
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %173

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @platform_get_irq(%struct.platform_device* %22, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %173

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.opencores_kbd* @devm_kzalloc(i32* %31, i32 24, i32 %32)
  store %struct.opencores_kbd* %33, %struct.opencores_kbd** %5, align 8
  %34 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %35 = icmp ne %struct.opencores_kbd* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %173

39:                                               ; preds = %29
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call %struct.input_dev* @devm_input_allocate_device(i32* %41)
  store %struct.input_dev* %42, %struct.input_dev** %4, align 8
  %43 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %44 = icmp ne %struct.input_dev* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %173

51:                                               ; preds = %39
  %52 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %53 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %54 = getelementptr inbounds %struct.opencores_kbd, %struct.opencores_kbd* %53, i32 0, i32 2
  store %struct.input_dev* %52, %struct.input_dev** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = call i32 @devm_ioremap_resource(i32* %56, %struct.resource* %57)
  %59 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %60 = getelementptr inbounds %struct.opencores_kbd, %struct.opencores_kbd* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %62 = getelementptr inbounds %struct.opencores_kbd, %struct.opencores_kbd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %68 = getelementptr inbounds %struct.opencores_kbd, %struct.opencores_kbd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %2, align 4
  br label %173

71:                                               ; preds = %51
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 8
  %77 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %78, align 8
  %79 = load i32, i32* @BUS_HOST, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 256, i32* %91, align 8
  %92 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %93 = getelementptr inbounds %struct.opencores_kbd, %struct.opencores_kbd* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 2
  store i32 4, i32* %98, align 8
  %99 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %100 = getelementptr inbounds %struct.opencores_kbd, %struct.opencores_kbd* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @ARRAY_SIZE(i32* %101)
  %103 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %104 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @EV_KEY, align 4
  %106 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @__set_bit(i32 %105, i32 %108)
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %136, %71
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %113 = getelementptr inbounds %struct.opencores_kbd, %struct.opencores_kbd* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @ARRAY_SIZE(i32* %114)
  %116 = icmp slt i32 %111, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %120 = getelementptr inbounds %struct.opencores_kbd, %struct.opencores_kbd* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  %125 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %126 = getelementptr inbounds %struct.opencores_kbd, %struct.opencores_kbd* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @__set_bit(i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %117
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %110

139:                                              ; preds = %110
  %140 = load i32, i32* @KEY_RESERVED, align 4
  %141 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %142 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @__clear_bit(i32 %140, i32 %143)
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.opencores_kbd*, %struct.opencores_kbd** %5, align 8
  %153 = call i32 @devm_request_irq(i32* %146, i32 %147, i32* @opencores_kbd_isr, i32 %148, i32 %151, %struct.opencores_kbd* %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %139
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load i32, i32* %7, align 4
  %160 = call i32 (i32*, i8*, ...) @dev_err(i32* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %2, align 4
  br label %173

162:                                              ; preds = %139
  %163 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %164 = call i32 @input_register_device(%struct.input_dev* %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = call i32 (i32*, i8*, ...) @dev_err(i32* %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %2, align 4
  br label %173

172:                                              ; preds = %162
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %167, %156, %66, %45, %36, %26, %15
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.opencores_kbd* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32*, i32, i32, %struct.opencores_kbd*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
