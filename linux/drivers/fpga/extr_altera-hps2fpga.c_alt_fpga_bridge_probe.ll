; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-hps2fpga.c_alt_fpga_bridge_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-hps2fpga.c_alt_fpga_bridge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.altera_hps2fpga_data = type { i32, i32, i32, i64, i32 }
%struct.of_device_id = type { i64 }
%struct.fpga_bridge = type { i32 }

@altera_fpga_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to match device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not get %s reset control\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"altr,l3regs\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"regmap for altr,l3regs lookup failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"no clock specified\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"could not enable clock\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"bridge-enable\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"invalid bridge-enable %u > 1\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%s bridge\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1
@altera_hps2fpga_br_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @alt_fpga_bridge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alt_fpga_bridge_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.altera_hps2fpga_data*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.fpga_bridge*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load i32, i32* @altera_fpga_of_match, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.of_device_id* @of_match_device(i32 %12, %struct.device* %13)
  store %struct.of_device_id* %14, %struct.of_device_id** %6, align 8
  %15 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %16 = icmp ne %struct.of_device_id* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %155

22:                                               ; preds = %1
  %23 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.altera_hps2fpga_data*
  store %struct.altera_hps2fpga_data* %26, %struct.altera_hps2fpga_data** %5, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @of_reset_control_get_exclusive_by_index(i32 %29, i32 0)
  %31 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %32 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %34 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %22
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %41 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %45 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %155

48:                                               ; preds = %22
  %49 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %50 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %56 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %58 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %66 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %155

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69, %48
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @devm_clk_get(%struct.device* %71, i32* null)
  %73 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %74 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %76 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %84 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %155

87:                                               ; preds = %70
  %88 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %89 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @clk_prepare_enable(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %155

99:                                               ; preds = %87
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = getelementptr inbounds %struct.device, %struct.device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @of_property_read_u32(i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %8)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %127, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @dev_warn(%struct.device* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  br label %126

112:                                              ; preds = %105
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)
  %118 = call i32 @dev_info(%struct.device* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %117)
  %119 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @_alt_hps2fpga_enable_set(%struct.altera_hps2fpga_data* %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %149

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %108
  br label %127

127:                                              ; preds = %126, %99
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %130 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %133 = call %struct.fpga_bridge* @devm_fpga_bridge_create(%struct.device* %128, i32 %131, i32* @altera_hps2fpga_br_ops, %struct.altera_hps2fpga_data* %132)
  store %struct.fpga_bridge* %133, %struct.fpga_bridge** %7, align 8
  %134 = load %struct.fpga_bridge*, %struct.fpga_bridge** %7, align 8
  %135 = icmp ne %struct.fpga_bridge* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %127
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %9, align 4
  br label %149

139:                                              ; preds = %127
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = load %struct.fpga_bridge*, %struct.fpga_bridge** %7, align 8
  %142 = call i32 @platform_set_drvdata(%struct.platform_device* %140, %struct.fpga_bridge* %141)
  %143 = load %struct.fpga_bridge*, %struct.fpga_bridge** %7, align 8
  %144 = call i32 @fpga_bridge_register(%struct.fpga_bridge* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %149

148:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %155

149:                                              ; preds = %147, %136, %124
  %150 = load %struct.altera_hps2fpga_data*, %struct.altera_hps2fpga_data** %5, align 8
  %151 = getelementptr inbounds %struct.altera_hps2fpga_data, %struct.altera_hps2fpga_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @clk_disable_unprepare(i32 %152)
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %149, %148, %94, %80, %62, %38, %17
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_reset_control_get_exclusive_by_index(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @_alt_hps2fpga_enable_set(%struct.altera_hps2fpga_data*, i32) #1

declare dso_local %struct.fpga_bridge* @devm_fpga_bridge_create(%struct.device*, i32, i32*, %struct.altera_hps2fpga_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_bridge*) #1

declare dso_local i32 @fpga_bridge_register(%struct.fpga_bridge*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
