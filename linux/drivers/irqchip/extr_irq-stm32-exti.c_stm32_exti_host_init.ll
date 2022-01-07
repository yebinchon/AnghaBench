; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_exti_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-stm32-exti.c_stm32_exti_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_exti_host_data = type { %struct.stm32_exti_host_data*, i32, %struct.stm32_exti_drv_data* }
%struct.stm32_exti_drv_data = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%pOF: Unable to map registers\0A\00", align 1
@stm32_host_data = common dso_local global %struct.stm32_exti_host_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stm32_exti_host_data* (%struct.stm32_exti_drv_data*, %struct.device_node*)* @stm32_exti_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stm32_exti_host_data* @stm32_exti_host_init(%struct.stm32_exti_drv_data* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.stm32_exti_host_data*, align 8
  %4 = alloca %struct.stm32_exti_drv_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.stm32_exti_host_data*, align 8
  store %struct.stm32_exti_drv_data* %0, %struct.stm32_exti_drv_data** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.stm32_exti_host_data* @kzalloc(i32 24, i32 %7)
  store %struct.stm32_exti_host_data* %8, %struct.stm32_exti_host_data** %6, align 8
  %9 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %6, align 8
  %10 = icmp ne %struct.stm32_exti_host_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.stm32_exti_host_data* null, %struct.stm32_exti_host_data** %3, align 8
  br label %51

12:                                               ; preds = %2
  %13 = load %struct.stm32_exti_drv_data*, %struct.stm32_exti_drv_data** %4, align 8
  %14 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %6, align 8
  %15 = getelementptr inbounds %struct.stm32_exti_host_data, %struct.stm32_exti_host_data* %14, i32 0, i32 2
  store %struct.stm32_exti_drv_data* %13, %struct.stm32_exti_drv_data** %15, align 8
  %16 = load %struct.stm32_exti_drv_data*, %struct.stm32_exti_drv_data** %4, align 8
  %17 = getelementptr inbounds %struct.stm32_exti_drv_data, %struct.stm32_exti_drv_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.stm32_exti_host_data* @kcalloc(i32 %18, i32 4, i32 %19)
  %21 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %6, align 8
  %22 = getelementptr inbounds %struct.stm32_exti_host_data, %struct.stm32_exti_host_data* %21, i32 0, i32 0
  store %struct.stm32_exti_host_data* %20, %struct.stm32_exti_host_data** %22, align 8
  %23 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %6, align 8
  %24 = getelementptr inbounds %struct.stm32_exti_host_data, %struct.stm32_exti_host_data* %23, i32 0, i32 0
  %25 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %24, align 8
  %26 = icmp ne %struct.stm32_exti_host_data* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %12
  br label %48

28:                                               ; preds = %12
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call i32 @of_iomap(%struct.device_node* %29, i32 0)
  %31 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %6, align 8
  %32 = getelementptr inbounds %struct.stm32_exti_host_data, %struct.stm32_exti_host_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %6, align 8
  %34 = getelementptr inbounds %struct.stm32_exti_host_data, %struct.stm32_exti_host_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.device_node* %38)
  br label %43

40:                                               ; preds = %28
  %41 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %6, align 8
  store %struct.stm32_exti_host_data* %41, %struct.stm32_exti_host_data** @stm32_host_data, align 8
  %42 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %6, align 8
  store %struct.stm32_exti_host_data* %42, %struct.stm32_exti_host_data** %3, align 8
  br label %51

43:                                               ; preds = %37
  %44 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %6, align 8
  %45 = getelementptr inbounds %struct.stm32_exti_host_data, %struct.stm32_exti_host_data* %44, i32 0, i32 0
  %46 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %45, align 8
  %47 = call i32 @kfree(%struct.stm32_exti_host_data* %46)
  br label %48

48:                                               ; preds = %43, %27
  %49 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %6, align 8
  %50 = call i32 @kfree(%struct.stm32_exti_host_data* %49)
  store %struct.stm32_exti_host_data* null, %struct.stm32_exti_host_data** %3, align 8
  br label %51

51:                                               ; preds = %48, %40, %11
  %52 = load %struct.stm32_exti_host_data*, %struct.stm32_exti_host_data** %3, align 8
  ret %struct.stm32_exti_host_data* %52
}

declare dso_local %struct.stm32_exti_host_data* @kzalloc(i32, i32) #1

declare dso_local %struct.stm32_exti_host_data* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*) #1

declare dso_local i32 @kfree(%struct.stm32_exti_host_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
