; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sta2x11.c_gsta_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sta2x11.c_gsta_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pci_dev = type { i32, i32 }
%struct.sta2x11_gpio_pdata = type { i32* }
%struct.gsta_gpio = type { i32, i32, i32, %struct.TYPE_4__**, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"no gpio config\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gpio config: %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GSTA_NR_BLOCKS = common dso_local global i32 0, align 4
@GSTA_NR_GPIO = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"sta2x11 gpio: Can't get irq base (%i)\0A\00", align 1
@gsta_gpio_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"sta2x11 gpio: Can't request irq (%i)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"sta2x11 gpio: Can't register (%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gsta_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsta_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.sta2x11_gpio_pdata*, align 8
  %8 = alloca %struct.gsta_gpio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.sta2x11_gpio_pdata* @dev_get_platdata(i32* %10)
  %12 = bitcast %struct.sta2x11_gpio_pdata* %11 to %struct.pci_dev**
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = call %struct.sta2x11_gpio_pdata* @dev_get_platdata(i32* %15)
  store %struct.sta2x11_gpio_pdata* %16, %struct.sta2x11_gpio_pdata** %7, align 8
  %17 = load %struct.sta2x11_gpio_pdata*, %struct.sta2x11_gpio_pdata** %7, align 8
  %18 = icmp eq %struct.sta2x11_gpio_pdata* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.sta2x11_gpio_pdata*, %struct.sta2x11_gpio_pdata** %7, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.sta2x11_gpio_pdata* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.gsta_gpio* @devm_kzalloc(i32* %27, i32 40, i32 %28)
  store %struct.gsta_gpio* %29, %struct.gsta_gpio** %8, align 8
  %30 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %31 = icmp ne %struct.gsta_gpio* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %196

35:                                               ; preds = %23
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %39 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %38, i32 0, i32 5
  store i32* %37, i32** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = call %struct.TYPE_4__* @devm_platform_ioremap_resource(%struct.platform_device* %40, i32 0)
  %42 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %43 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %42, i32 0, i32 4
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %45 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %44, i32 0, i32 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i64 @IS_ERR(%struct.TYPE_4__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %51 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.TYPE_4__* %52)
  store i32 %53, i32* %2, align 4
  br label %196

54:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %100, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @GSTA_NR_BLOCKS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %103

59:                                               ; preds = %55
  %60 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %61 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %60, i32 0, i32 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = mul nsw i32 %63, 4096
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %65
  %67 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %68 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %71
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %72, align 8
  %73 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %74 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = call i32 @writel(i32 0, i32* %80)
  %82 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %83 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = call i32 @writel(i32 0, i32* %89)
  %91 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %92 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @writel(i32 -1, i32* %98)
  br label %100

100:                                              ; preds = %59
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %55

103:                                              ; preds = %55
  %104 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %105 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %104, i32 0, i32 2
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %108 = call i32 @gsta_gpio_setup(%struct.gsta_gpio* %107)
  %109 = load %struct.sta2x11_gpio_pdata*, %struct.sta2x11_gpio_pdata** %7, align 8
  %110 = icmp ne %struct.sta2x11_gpio_pdata* %109, null
  br i1 %110, label %111, label %131

111:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %127, %111
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @GSTA_NR_GPIO, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.sta2x11_gpio_pdata*, %struct.sta2x11_gpio_pdata** %7, align 8
  %120 = getelementptr inbounds %struct.sta2x11_gpio_pdata, %struct.sta2x11_gpio_pdata* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @gsta_set_config(%struct.gsta_gpio* %117, i32 %118, i32 %125)
  br label %127

127:                                              ; preds = %116
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %112

130:                                              ; preds = %112
  br label %131

131:                                              ; preds = %130, %103
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load i32, i32* @GSTA_NR_GPIO, align 4
  %135 = load i32, i32* @NUMA_NO_NODE, align 4
  %136 = call i32 @devm_irq_alloc_descs(i32* %133, i32 -1, i32 384, i32 %134, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %131
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i32, i32* %5, align 4
  %143 = sub nsw i32 0, %142
  %144 = call i32 @dev_warn(i32* %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %196

146:                                              ; preds = %131
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %149 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %151 = call i32 @gsta_alloc_irq_chip(%struct.gsta_gpio* %150)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* %2, align 4
  br label %196

156:                                              ; preds = %146
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @gsta_gpio_handler, align 4
  %163 = load i32, i32* @IRQF_SHARED, align 4
  %164 = load i32, i32* @KBUILD_MODNAME, align 4
  %165 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %166 = call i32 @devm_request_irq(i32* %158, i32 %161, i32 %162, i32 %163, i32 %164, %struct.gsta_gpio* %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %156
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load i32, i32* %5, align 4
  %173 = sub nsw i32 0, %172
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %171, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %5, align 4
  store i32 %175, i32* %2, align 4
  br label %196

176:                                              ; preds = %156
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %180 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %179, i32 0, i32 1
  %181 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %182 = call i32 @devm_gpiochip_add_data(i32* %178, i32* %180, %struct.gsta_gpio* %181)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %176
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = load i32, i32* %5, align 4
  %189 = sub nsw i32 0, %188
  %190 = call i32 (i32*, i8*, ...) @dev_err(i32* %187, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %5, align 4
  store i32 %191, i32* %2, align 4
  br label %196

192:                                              ; preds = %176
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = load %struct.gsta_gpio*, %struct.gsta_gpio** %8, align 8
  %195 = call i32 @platform_set_drvdata(%struct.platform_device* %193, %struct.gsta_gpio* %194)
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %192, %185, %169, %154, %139, %49, %32
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.sta2x11_gpio_pdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, %struct.sta2x11_gpio_pdata*) #1

declare dso_local %struct.gsta_gpio* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @gsta_gpio_setup(%struct.gsta_gpio*) #1

declare dso_local i32 @gsta_set_config(%struct.gsta_gpio*, i32, i32) #1

declare dso_local i32 @devm_irq_alloc_descs(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @gsta_alloc_irq_chip(%struct.gsta_gpio*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.gsta_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, i32*, %struct.gsta_gpio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gsta_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
