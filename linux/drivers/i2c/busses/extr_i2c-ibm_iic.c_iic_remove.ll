; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ibm_iic.c_iic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ibm_iic.c_iic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ibm_iic_private = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iic_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ibm_iic_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ibm_iic_private* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ibm_iic_private* %5, %struct.ibm_iic_private** %3, align 8
  %6 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %3, align 8
  %7 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %6, i32 0, i32 2
  %8 = call i32 @i2c_del_adapter(i32* %7)
  %9 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %3, align 8
  %10 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %3, align 8
  %15 = call i32 @iic_interrupt_mode(%struct.ibm_iic_private* %14, i32 0)
  %16 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %3, align 8
  %17 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %3, align 8
  %20 = call i32 @free_irq(i64 %18, %struct.ibm_iic_private* %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %3, align 8
  %23 = getelementptr inbounds %struct.ibm_iic_private, %struct.ibm_iic_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @iounmap(i32 %24)
  %26 = load %struct.ibm_iic_private*, %struct.ibm_iic_private** %3, align 8
  %27 = call i32 @kfree(%struct.ibm_iic_private* %26)
  ret i32 0
}

declare dso_local %struct.ibm_iic_private* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @iic_interrupt_mode(%struct.ibm_iic_private*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.ibm_iic_private*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.ibm_iic_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
