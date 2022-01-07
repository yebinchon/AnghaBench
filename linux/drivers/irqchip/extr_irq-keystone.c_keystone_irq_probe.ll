; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-keystone.c_keystone_irq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-keystone.c_keystone_irq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.keystone_irq_device = type { i64, i32, i32, i32, %struct.TYPE_2__, %struct.device*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ti,syscon-dev\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"couldn't read the devctrl_offset offset!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"keystone-irq\00", align 1
@keystone_irq_ack = common dso_local global i32 0, align 4
@keystone_irq_setmask = common dso_local global i32 0, align 4
@keystone_irq_unmask = common dso_local global i32 0, align 4
@KEYSTONE_N_IRQ = common dso_local global i32 0, align 4
@keystone_irq_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"IRQ domain registration failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@keystone_irq_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"irqchip registered, nr_irqs %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @keystone_irq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_irq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.keystone_irq_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = icmp eq %struct.device_node* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %133

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.keystone_irq_device* @devm_kzalloc(%struct.device* %19, i32 64, i32 %20)
  store %struct.keystone_irq_device* %21, %struct.keystone_irq_device** %6, align 8
  %22 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %23 = icmp ne %struct.keystone_irq_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %133

27:                                               ; preds = %18
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %31 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %33 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %39 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %133

42:                                               ; preds = %27
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %45 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %44, i32 0, i32 6
  %46 = call i32 @of_property_read_u32_index(%struct.device_node* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1, i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %133

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i64 @platform_get_irq(%struct.platform_device* %54, i32 0)
  %56 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %57 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %59 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %64 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %2, align 4
  br label %133

67:                                               ; preds = %53
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %70 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %69, i32 0, i32 5
  store %struct.device* %68, %struct.device** %70, align 8
  %71 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %72 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %71, i32 0, i32 1
  store i32 -1, i32* %72, align 8
  %73 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %74 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %75, align 8
  %76 = load i32, i32* @keystone_irq_ack, align 4
  %77 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %78 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @keystone_irq_setmask, align 4
  %81 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %82 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @keystone_irq_unmask, align 4
  %85 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %86 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 8
  %88 = load %struct.device_node*, %struct.device_node** %5, align 8
  %89 = load i32, i32* @KEYSTONE_N_IRQ, align 4
  %90 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %91 = call i32 @irq_domain_add_linear(%struct.device_node* %88, i32 %89, i32* @keystone_irq_ops, %struct.keystone_irq_device* %90)
  %92 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %93 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %95 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %67
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %133

103:                                              ; preds = %67
  %104 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %105 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %104, i32 0, i32 3
  %106 = call i32 @raw_spin_lock_init(i32* %105)
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %107, %struct.keystone_irq_device* %108)
  %110 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %111 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @keystone_irq_handler, align 4
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_name(%struct.device* %115)
  %117 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %118 = call i32 @request_irq(i32 %113, i32 %114, i32 0, i32 %116, %struct.keystone_irq_device* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %103
  %122 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %123 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @irq_domain_remove(i32 %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %133

127:                                              ; preds = %103
  %128 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %6, align 8
  %129 = call i32 @keystone_irq_writel(%struct.keystone_irq_device* %128, i32 -1)
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load i32, i32* @KEYSTONE_N_IRQ, align 4
  %132 = call i32 @dev_info(%struct.device* %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %127, %121, %98, %62, %49, %37, %24, %15
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.keystone_irq_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.keystone_irq_device*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.keystone_irq_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.keystone_irq_device*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @keystone_irq_writel(%struct.keystone_irq_device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
