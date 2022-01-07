; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@pmcmsptwi_adapter = common dso_local global i32 0, align 4
@pmcmsptwi_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@MSP_TWI_INT_MSK_REG_OFFSET = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pmcmsptwi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcmsptwi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = call i32 @i2c_del_adapter(i32* @pmcmsptwi_adapter)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmcmsptwi_data, i32 0, i32 1), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmcmsptwi_data, i32 0, i32 0), align 8
  %9 = load i64, i64* @MSP_TWI_INT_MSK_REG_OFFSET, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @pmcmsptwi_writel(i32 0, i64 %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmcmsptwi_data, i32 0, i32 1), align 8
  %13 = call i32 @free_irq(i64 %12, %struct.TYPE_3__* @pmcmsptwi_data)
  br label %14

14:                                               ; preds = %7, %1
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmcmsptwi_data, i32 0, i32 0), align 8
  %16 = call i32 @iounmap(i64 %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %3, align 8
  %20 = load %struct.resource*, %struct.resource** %3, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.resource*, %struct.resource** %3, align 8
  %24 = call i32 @resource_size(%struct.resource* %23)
  %25 = call i32 @release_mem_region(i32 %22, i32 %24)
  ret i32 0
}

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @pmcmsptwi_writel(i32, i64) #1

declare dso_local i32 @free_irq(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
