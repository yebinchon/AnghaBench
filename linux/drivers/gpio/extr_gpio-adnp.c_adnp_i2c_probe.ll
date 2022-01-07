; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adnp = type { %struct.i2c_client*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"nr-gpios\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adnp_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adnp_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.adnp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %72

20:                                               ; preds = %2
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = call i32 @irq_of_parse_and_map(%struct.device_node* %21, i32 0)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %72

32:                                               ; preds = %20
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.adnp* @devm_kzalloc(%struct.TYPE_2__* %34, i32 16, i32 %35)
  store %struct.adnp* %36, %struct.adnp** %7, align 8
  %37 = load %struct.adnp*, %struct.adnp** %7, align 8
  %38 = icmp ne %struct.adnp* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %72

42:                                               ; preds = %32
  %43 = load %struct.adnp*, %struct.adnp** %7, align 8
  %44 = getelementptr inbounds %struct.adnp, %struct.adnp* %43, i32 0, i32 1
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load %struct.adnp*, %struct.adnp** %7, align 8
  %48 = getelementptr inbounds %struct.adnp, %struct.adnp* %47, i32 0, i32 0
  store %struct.i2c_client* %46, %struct.i2c_client** %48, align 8
  %49 = load %struct.adnp*, %struct.adnp** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @adnp_gpio_setup(%struct.adnp* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %42
  %57 = load %struct.device_node*, %struct.device_node** %6, align 8
  %58 = call i64 @of_find_property(%struct.device_node* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.adnp*, %struct.adnp** %7, align 8
  %62 = call i32 @adnp_irq_setup(%struct.adnp* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %56
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load %struct.adnp*, %struct.adnp** %7, align 8
  %71 = call i32 @i2c_set_clientdata(%struct.i2c_client* %69, %struct.adnp* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %65, %54, %39, %29, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local %struct.adnp* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adnp_gpio_setup(%struct.adnp*, i32) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @adnp_irq_setup(%struct.adnp*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adnp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
