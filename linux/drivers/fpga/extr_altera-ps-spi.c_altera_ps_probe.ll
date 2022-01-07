; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-ps-spi.c_altera_ps_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-ps-spi.c_altera_ps_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.altera_ps_conf = type { i32, i8*, i8*, i8*, %struct.spi_device*, i32 }
%struct.of_device_id = type { i32 }
%struct.fpga_manager = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@of_ef_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nconfig\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to get config gpio: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"nstat\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to get status gpio: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"confd\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to get confd gpio: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Not using confd gpio\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@altera_ps_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @altera_ps_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_ps_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.altera_ps_conf*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.fpga_manager*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.altera_ps_conf* @devm_kzalloc(%struct.TYPE_10__* %8, i32 48, i32 %9)
  store %struct.altera_ps_conf* %10, %struct.altera_ps_conf** %4, align 8
  %11 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %12 = icmp ne %struct.altera_ps_conf* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %166

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load i32, i32* @of_ef_match, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = call %struct.of_device_id* @of_match_device(i32 %23, %struct.TYPE_10__* %25)
  store %struct.of_device_id* %26, %struct.of_device_id** %5, align 8
  %27 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %28 = icmp ne %struct.of_device_id* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %166

32:                                               ; preds = %22
  %33 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %37 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  br label %52

38:                                               ; preds = %16
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = call i32 @spi_get_device_id(%struct.spi_device* %39)
  %41 = call i32 @id_to_data(i32 %40)
  %42 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %43 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %45 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %166

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %55 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %54, i32 0, i32 4
  store %struct.spi_device* %53, %struct.spi_device** %55, align 8
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %59 = call i8* @devm_gpiod_get(%struct.TYPE_10__* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %61 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %63 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %52
  %68 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %69 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %68, i32 0, i32 0
  %70 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %71 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @PTR_ERR(i8* %72)
  %74 = call i32 @dev_err(%struct.TYPE_10__* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %76 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %2, align 4
  br label %166

79:                                               ; preds = %52
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 0
  %82 = load i32, i32* @GPIOD_IN, align 4
  %83 = call i8* @devm_gpiod_get(%struct.TYPE_10__* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %85 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %87 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %79
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 0
  %94 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %95 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  %98 = call i32 @dev_err(%struct.TYPE_10__* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %100 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %2, align 4
  br label %166

103:                                              ; preds = %79
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 0
  %106 = load i32, i32* @GPIOD_IN, align 4
  %107 = call i8* @devm_gpiod_get_optional(%struct.TYPE_10__* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %109 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %111 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @IS_ERR(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %103
  %116 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %117 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %116, i32 0, i32 0
  %118 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %119 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @PTR_ERR(i8* %120)
  %122 = call i32 @dev_err(%struct.TYPE_10__* %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %124 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @PTR_ERR(i8* %125)
  store i32 %126, i32* %2, align 4
  br label %166

127:                                              ; preds = %103
  %128 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %129 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %134 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %133, i32 0, i32 0
  %135 = call i32 @dev_warn(%struct.TYPE_10__* %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %136

136:                                              ; preds = %132, %127
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %139 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %142 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %141, i32 0, i32 0
  %143 = call i8* @dev_driver_string(%struct.TYPE_10__* %142)
  %144 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %145 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %144, i32 0, i32 0
  %146 = call i8* @dev_name(%struct.TYPE_10__* %145)
  %147 = call i32 @snprintf(i32 %140, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %143, i8* %146)
  %148 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %149 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %148, i32 0, i32 0
  %150 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %151 = getelementptr inbounds %struct.altera_ps_conf, %struct.altera_ps_conf* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.altera_ps_conf*, %struct.altera_ps_conf** %4, align 8
  %154 = call %struct.fpga_manager* @devm_fpga_mgr_create(%struct.TYPE_10__* %149, i32 %152, i32* @altera_ps_ops, %struct.altera_ps_conf* %153)
  store %struct.fpga_manager* %154, %struct.fpga_manager** %6, align 8
  %155 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %156 = icmp ne %struct.fpga_manager* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %137
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %166

160:                                              ; preds = %137
  %161 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %162 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %163 = call i32 @spi_set_drvdata(%struct.spi_device* %161, %struct.fpga_manager* %162)
  %164 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %165 = call i32 @fpga_mgr_register(%struct.fpga_manager* %164)
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %160, %157, %115, %91, %67, %48, %29, %13
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.altera_ps_conf* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @id_to_data(i32) #1

declare dso_local i32 @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i8* @devm_gpiod_get(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_driver_string(%struct.TYPE_10__*) #1

declare dso_local i8* @dev_name(%struct.TYPE_10__*) #1

declare dso_local %struct.fpga_manager* @devm_fpga_mgr_create(%struct.TYPE_10__*, i32, i32*, %struct.altera_ps_conf*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.fpga_manager*) #1

declare dso_local i32 @fpga_mgr_register(%struct.fpga_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
