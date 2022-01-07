; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tilcdc_module = type { i32 }
%struct.tfp410_module = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tfp410_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tilcdc_module*, align 8
  %4 = alloca %struct.tfp410_module*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.tilcdc_module* @dev_get_platdata(i32* %6)
  store %struct.tilcdc_module* %7, %struct.tilcdc_module** %3, align 8
  %8 = load %struct.tilcdc_module*, %struct.tilcdc_module** %3, align 8
  %9 = call %struct.tfp410_module* @to_tfp410_module(%struct.tilcdc_module* %8)
  store %struct.tfp410_module* %9, %struct.tfp410_module** %4, align 8
  %10 = load %struct.tfp410_module*, %struct.tfp410_module** %4, align 8
  %11 = getelementptr inbounds %struct.tfp410_module, %struct.tfp410_module* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @i2c_put_adapter(i32 %12)
  %14 = load %struct.tfp410_module*, %struct.tfp410_module** %4, align 8
  %15 = getelementptr inbounds %struct.tfp410_module, %struct.tfp410_module* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpio_free(i32 %16)
  %18 = load %struct.tilcdc_module*, %struct.tilcdc_module** %3, align 8
  %19 = call i32 @tilcdc_module_cleanup(%struct.tilcdc_module* %18)
  ret i32 0
}

declare dso_local %struct.tilcdc_module* @dev_get_platdata(i32*) #1

declare dso_local %struct.tfp410_module* @to_tfp410_module(%struct.tilcdc_module*) #1

declare dso_local i32 @i2c_put_adapter(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @tilcdc_module_cleanup(%struct.tilcdc_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
