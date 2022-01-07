; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_output.c_tegra_output_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_output.c_tegra_output_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_output = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32*, i64, i32, i32, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"nvidia,panel\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"nvidia,edid\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"nvidia,ddc-i2c-bus\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"nvidia,hpd-gpio\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"HDMI hotplug detect\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"gpiod_to_irq(): %d\0A\00", align 1
@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@hpd_irq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_output_probe(%struct.tegra_output* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_output*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tegra_output* %0, %struct.tegra_output** %3, align 8
  %9 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %19, i32 0, i32 5
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.device_node* @of_parse_phandle(i64 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %25, %struct.device_node** %5, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call i32* @of_drm_find_panel(%struct.device_node* %29)
  %31 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %31, i32 0, i32 8
  store i32* %30, i32** %32, align 8
  %33 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %2, align 4
  br label %180

43:                                               ; preds = %28
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = call i32 @of_node_put(%struct.device_node* %44)
  br label %46

46:                                               ; preds = %43, %21
  %47 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @of_get_property(i64 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %51 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.device_node* @of_parse_phandle(i64 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %56, %struct.device_node** %4, align 8
  %57 = load %struct.device_node*, %struct.device_node** %4, align 8
  %58 = icmp ne %struct.device_node* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %46
  %60 = load %struct.device_node*, %struct.device_node** %4, align 8
  %61 = call i32 @of_find_i2c_adapter_by_node(%struct.device_node* %60)
  %62 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @EPROBE_DEFER, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  %71 = load %struct.device_node*, %struct.device_node** %4, align 8
  %72 = call i32 @of_node_put(%struct.device_node* %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %180

74:                                               ; preds = %59
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = call i32 @of_node_put(%struct.device_node* %75)
  br label %77

77:                                               ; preds = %74, %46
  %78 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %79 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %82 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @GPIOD_IN, align 4
  %85 = call i32* @devm_gpiod_get_from_of_node(%struct.TYPE_6__* %80, i64 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %87 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %86, i32 0, i32 4
  store i32* %85, i32** %87, align 8
  %88 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %89 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @IS_ERR(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %77
  %94 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %95 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @PTR_ERR(i32* %96)
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %103 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @PTR_ERR(i32* %104)
  store i32 %105, i32* %2, align 4
  br label %180

106:                                              ; preds = %93
  %107 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %107, i32 0, i32 4
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %106, %77
  %110 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %111 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %165

114:                                              ; preds = %109
  %115 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %116 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @gpiod_to_irq(i32* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %123 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %180

128:                                              ; preds = %114
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %131 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  %133 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  %134 = or i64 %132, %133
  %135 = load i64, i64* @IRQF_ONESHOT, align 8
  %136 = or i64 %134, %135
  store i64 %136, i64* %6, align 8
  %137 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %138 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @hpd_irq, align 4
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %143 = call i32 @request_threaded_irq(i32 %139, i32* null, i32 %140, i64 %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.tegra_output* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %128
  %147 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %148 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %147, i32 0, i32 2
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %151 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %180

156:                                              ; preds = %128
  %157 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %158 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %159 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 8
  %161 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %162 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @disable_irq(i32 %163)
  br label %165

165:                                              ; preds = %156, %109
  %166 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %167 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %166, i32 0, i32 2
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = call i32 @cec_notifier_get(%struct.TYPE_6__* %168)
  %170 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %171 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %173 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %165
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %180

179:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %176, %146, %121, %101, %68, %38
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.device_node* @of_parse_phandle(i64, i8*, i32) #1

declare dso_local i32* @of_drm_find_panel(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_get_property(i64, i8*, i32*) #1

declare dso_local i32 @of_find_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32* @devm_gpiod_get_from_of_node(%struct.TYPE_6__*, i64, i8*, i32, i32, i8*) #1

declare dso_local i32 @gpiod_to_irq(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i64, i8*, %struct.tegra_output*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @cec_notifier_get(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
