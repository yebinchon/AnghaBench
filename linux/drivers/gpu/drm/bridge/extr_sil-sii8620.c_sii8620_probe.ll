; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.sii8620 = type { i32, %struct.TYPE_3__, %struct.device*, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get xtal clock from DT\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"no irq provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@sii8620_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"sii8620\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to get reset gpio from DT\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cvcc10\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"iovcc18\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"failed to initialize EXTCON\0A\00", align 1
@sii8620_bridge_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sii8620_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii8620_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sii8620*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sii8620* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  store %struct.sii8620* %13, %struct.sii8620** %7, align 8
  %14 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %15 = icmp ne %struct.sii8620* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %150

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %22 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %21, i32 0, i32 2
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %24 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %23, i32 0, i32 7
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %27 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %26, i32 0, i32 6
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @devm_clk_get(%struct.device* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %32 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %34 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %42 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %150

45:                                               ; preds = %19
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %150

55:                                               ; preds = %45
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %60 = call i32 @irq_set_status_flags(i32 %58, i32 %59)
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @sii8620_irq_thread, align 4
  %66 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %67 = load i32, i32* @IRQF_ONESHOT, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %70 = call i32 @devm_request_threaded_irq(%struct.device* %61, i32 %64, i32* null, i32 %65, i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.sii8620* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %55
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %150

77:                                               ; preds = %55
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %80 = call i32 @devm_gpiod_get(%struct.device* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %82 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %84 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %91 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %92 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %3, align 4
  br label %150

95:                                               ; preds = %77
  %96 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %97 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %100, align 8
  %101 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %102 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %105, align 8
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %108 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %107, i32 0, i32 3
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = call i32 @devm_regulator_bulk_get(%struct.device* %106, i32 2, %struct.TYPE_4__* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %95
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %150

115:                                              ; preds = %95
  %116 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %117 = call i32 @sii8620_extcon_init(%struct.sii8620* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %122 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %121, i32 0, i32 2
  %123 = load %struct.device*, %struct.device** %122, align 8
  %124 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %150

126:                                              ; preds = %115
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %129 = call i32 @i2c_set_clientdata(%struct.i2c_client* %127, %struct.sii8620* %128)
  %130 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %131 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32* @sii8620_bridge_funcs, i32** %132, align 8
  %133 = load %struct.device*, %struct.device** %6, align 8
  %134 = getelementptr inbounds %struct.device, %struct.device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %137 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %140 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %139, i32 0, i32 1
  %141 = call i32 @drm_bridge_add(%struct.TYPE_3__* %140)
  %142 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %143 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %126
  %147 = load %struct.sii8620*, %struct.sii8620** %7, align 8
  %148 = call i32 @sii8620_cable_in(%struct.sii8620* %147)
  br label %149

149:                                              ; preds = %146, %126
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %120, %113, %88, %73, %50, %38, %16
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.sii8620* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.sii8620*) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @sii8620_extcon_init(%struct.sii8620*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sii8620*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_3__*) #1

declare dso_local i32 @sii8620_cable_in(%struct.sii8620*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
