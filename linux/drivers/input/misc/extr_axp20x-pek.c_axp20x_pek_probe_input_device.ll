; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_axp20x-pek.c_axp20x_pek_probe_input_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_axp20x-pek.c_axp20x_pek_probe_input_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp20x_pek = type { i32, i32, %struct.axp20x_dev*, %struct.input_dev* }
%struct.axp20x_dev = type { i64, i32 }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"PEK_DBR\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PEK_DBF\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"axp20x-pek\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"m1kbd/input2\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@axp20x_pek_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"axp20x-pek-dbr\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to request dbr IRQ#%d: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"axp20x-pek-dbf\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to request dbf IRQ#%d: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Can't register input device: %d\0A\00", align 1
@AXP288_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp20x_pek*, %struct.platform_device*)* @axp20x_pek_probe_input_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_pek_probe_input_device(%struct.axp20x_pek* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axp20x_pek*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.axp20x_dev*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.axp20x_pek* %0, %struct.axp20x_pek** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %10 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %9, i32 0, i32 2
  %11 = load %struct.axp20x_dev*, %struct.axp20x_dev** %10, align 8
  store %struct.axp20x_dev* %11, %struct.axp20x_dev** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = call i8* @platform_get_irq_byname(%struct.platform_device* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %16 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %18 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %23 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  br label %156

25:                                               ; preds = %2
  %26 = load %struct.axp20x_dev*, %struct.axp20x_dev** %6, align 8
  %27 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %30 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @regmap_irq_get_virq(i32 %28, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %35 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %37 = call i8* @platform_get_irq_byname(%struct.platform_device* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %40 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %42 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %25
  %46 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %47 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %156

49:                                               ; preds = %25
  %50 = load %struct.axp20x_dev*, %struct.axp20x_dev** %6, align 8
  %51 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %54 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @regmap_irq_get_virq(i32 %52, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %59 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call %struct.input_dev* @devm_input_allocate_device(i32* %61)
  %63 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %64 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %63, i32 0, i32 3
  store %struct.input_dev* %62, %struct.input_dev** %64, align 8
  %65 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %66 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %65, i32 0, i32 3
  %67 = load %struct.input_dev*, %struct.input_dev** %66, align 8
  %68 = icmp ne %struct.input_dev* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %49
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %156

72:                                               ; preds = %49
  %73 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %74 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %73, i32 0, i32 3
  %75 = load %struct.input_dev*, %struct.input_dev** %74, align 8
  store %struct.input_dev* %75, %struct.input_dev** %7, align 8
  %76 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %77, align 8
  %78 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %83 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32* %81, i32** %84, align 8
  %85 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %86 = load i32, i32* @EV_KEY, align 4
  %87 = load i32, i32* @KEY_POWER, align 4
  %88 = call i32 @input_set_capability(%struct.input_dev* %85, i32 %86, i32 %87)
  %89 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %90 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %91 = call i32 @input_set_drvdata(%struct.input_dev* %89, %struct.axp20x_pek* %90)
  %92 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %95 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @axp20x_pek_irq, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %99 = call i32 @devm_request_any_context_irq(i32* %93, i32 %96, i32 %97, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.input_dev* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %72
  %103 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %106 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %156

111:                                              ; preds = %72
  %112 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %115 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @axp20x_pek_irq, align 4
  %118 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %119 = call i32 @devm_request_any_context_irq(i32* %113, i32 %116, i32 %117, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %struct.input_dev* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %111
  %123 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %126 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  br label %156

131:                                              ; preds = %111
  %132 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %133 = call i32 @input_register_device(%struct.input_dev* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %3, align 4
  br label %156

142:                                              ; preds = %131
  %143 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %144 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %143, i32 0, i32 2
  %145 = load %struct.axp20x_dev*, %struct.axp20x_dev** %144, align 8
  %146 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AXP288_ID, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load %struct.axp20x_pek*, %struct.axp20x_pek** %4, align 8
  %152 = getelementptr inbounds %struct.axp20x_pek, %struct.axp20x_pek* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @enable_irq_wake(i32 %153)
  br label %155

155:                                              ; preds = %150, %142
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %136, %122, %102, %69, %45, %21
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i8* @regmap_irq_get_virq(i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.axp20x_pek*) #1

declare dso_local i32 @devm_request_any_context_irq(i32*, i32, i32, i32, i8*, %struct.input_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
