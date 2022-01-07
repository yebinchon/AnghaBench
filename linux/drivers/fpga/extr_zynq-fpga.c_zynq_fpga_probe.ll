; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_zynq-fpga.c_zynq_fpga_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_zynq-fpga.c_zynq_fpga_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.zynq_fpga_priv = type { i64, i32, i32, i32, i32, i32 }
%struct.fpga_manager = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to get zynq-slcr regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"No IRQ available\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"input clock not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"unable to enable clock\0A\00", align 1
@UNLOCK_OFFSET = common dso_local global i32 0, align 4
@UNLOCK_MASK = common dso_local global i32 0, align 4
@INT_STS_OFFSET = common dso_local global i32 0, align 4
@IXR_ALL_MASK = common dso_local global i32 0, align 4
@zynq_fpga_isr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"unable to request IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Xilinx Zynq FPGA Manager\00", align 1
@zynq_fpga_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"unable to register FPGA manager\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynq_fpga_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_fpga_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.zynq_fpga_priv*, align 8
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.zynq_fpga_priv* @devm_kzalloc(%struct.device* %11, i32 32, i32 %12)
  store %struct.zynq_fpga_priv* %13, %struct.zynq_fpga_priv** %5, align 8
  %14 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %15 = icmp ne %struct.zynq_fpga_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %168

19:                                               ; preds = %1
  %20 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %21 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %20, i32 0, i32 5
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %7, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = call i32 @devm_ioremap_resource(%struct.device* %26, %struct.resource* %27)
  %29 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %30 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %32 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %38 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %168

41:                                               ; preds = %19
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @syscon_regmap_lookup_by_phandle(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %47 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %49 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %57 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %168

60:                                               ; preds = %41
  %61 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %62 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %61, i32 0, i32 2
  %63 = call i32 @init_completion(i32* %62)
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = call i64 @platform_get_irq(%struct.platform_device* %64, i32 0)
  %66 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %67 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %69 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %76 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %2, align 4
  br label %168

79:                                               ; preds = %60
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @devm_clk_get(%struct.device* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %83 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %85 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %93 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %168

96:                                               ; preds = %79
  %97 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %98 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @clk_prepare_enable(i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %2, align 4
  br label %168

107:                                              ; preds = %96
  %108 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %109 = load i32, i32* @UNLOCK_OFFSET, align 4
  %110 = load i32, i32* @UNLOCK_MASK, align 4
  %111 = call i32 @zynq_fpga_write(%struct.zynq_fpga_priv* %108, i32 %109, i32 %110)
  %112 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %113 = call i32 @zynq_fpga_set_irq(%struct.zynq_fpga_priv* %112, i32 0)
  %114 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %115 = load i32, i32* @INT_STS_OFFSET, align 4
  %116 = load i32, i32* @IXR_ALL_MASK, align 4
  %117 = call i32 @zynq_fpga_write(%struct.zynq_fpga_priv* %114, i32 %115, i32 %116)
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %120 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* @zynq_fpga_isr, align 4
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i32 @dev_name(%struct.device* %124)
  %126 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %127 = call i32 @devm_request_irq(%struct.device* %118, i32 %122, i32 %123, i32 0, i32 %125, %struct.zynq_fpga_priv* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %107
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %133 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %134 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @clk_disable_unprepare(i32 %135)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %168

138:                                              ; preds = %107
  %139 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %140 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @clk_disable(i32 %141)
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %145 = call %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* @zynq_fpga_ops, %struct.zynq_fpga_priv* %144)
  store %struct.fpga_manager* %145, %struct.fpga_manager** %6, align 8
  %146 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %147 = icmp ne %struct.fpga_manager* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %138
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %168

151:                                              ; preds = %138
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %154 = call i32 @platform_set_drvdata(%struct.platform_device* %152, %struct.fpga_manager* %153)
  %155 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %156 = call i32 @fpga_mgr_register(%struct.fpga_manager* %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = call i32 @dev_err(%struct.device* %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %162 = load %struct.zynq_fpga_priv*, %struct.zynq_fpga_priv** %5, align 8
  %163 = getelementptr inbounds %struct.zynq_fpga_priv, %struct.zynq_fpga_priv* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @clk_unprepare(i32 %164)
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %2, align 4
  br label %168

167:                                              ; preds = %151
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %167, %159, %148, %130, %103, %89, %72, %53, %36, %16
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.zynq_fpga_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @zynq_fpga_write(%struct.zynq_fpga_priv*, i32, i32) #1

declare dso_local i32 @zynq_fpga_set_irq(%struct.zynq_fpga_priv*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.zynq_fpga_priv*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local %struct.fpga_manager* @devm_fpga_mgr_create(%struct.device*, i8*, i32*, %struct.zynq_fpga_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_manager*) #1

declare dso_local i32 @fpga_mgr_register(%struct.fpga_manager*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
