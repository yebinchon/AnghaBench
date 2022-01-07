; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sni-exiu.c_exiu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sni-exiu.c_exiu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exiu_irq_data = type { i64, i32 }
%struct.fwnode_handle = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"socionext,spi-base\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EIREQCLR = common dso_local global i64 0, align 8
@EIMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.exiu_irq_data* (%struct.fwnode_handle*, %struct.resource*)* @exiu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.exiu_irq_data* @exiu_init(%struct.fwnode_handle* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.exiu_irq_data*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.exiu_irq_data*, align 8
  %7 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.exiu_irq_data* @kzalloc(i32 16, i32 %8)
  store %struct.exiu_irq_data* %9, %struct.exiu_irq_data** %6, align 8
  %10 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %6, align 8
  %11 = icmp ne %struct.exiu_irq_data* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.exiu_irq_data* @ERR_PTR(i32 %14)
  store %struct.exiu_irq_data* %15, %struct.exiu_irq_data** %3, align 8
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %18 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %6, align 8
  %19 = getelementptr inbounds %struct.exiu_irq_data, %struct.exiu_irq_data* %18, i32 0, i32 1
  %20 = call i64 @fwnode_property_read_u32_array(%struct.fwnode_handle* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %19, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %55

25:                                               ; preds = %16
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = call i32 @resource_size(%struct.resource* %29)
  %31 = call i64 @ioremap(i32 %28, i32 %30)
  %32 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %6, align 8
  %33 = getelementptr inbounds %struct.exiu_irq_data, %struct.exiu_irq_data* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %6, align 8
  %35 = getelementptr inbounds %struct.exiu_irq_data, %struct.exiu_irq_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %55

41:                                               ; preds = %25
  %42 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %6, align 8
  %43 = getelementptr inbounds %struct.exiu_irq_data, %struct.exiu_irq_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EIREQCLR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 -1, i64 %46)
  %48 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %6, align 8
  %49 = getelementptr inbounds %struct.exiu_irq_data, %struct.exiu_irq_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EIMASK, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel_relaxed(i32 -1, i64 %52)
  %54 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %6, align 8
  store %struct.exiu_irq_data* %54, %struct.exiu_irq_data** %3, align 8
  br label %60

55:                                               ; preds = %38, %22
  %56 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %6, align 8
  %57 = call i32 @kfree(%struct.exiu_irq_data* %56)
  %58 = load i32, i32* %7, align 4
  %59 = call %struct.exiu_irq_data* @ERR_PTR(i32 %58)
  store %struct.exiu_irq_data* %59, %struct.exiu_irq_data** %3, align 8
  br label %60

60:                                               ; preds = %55, %41, %12
  %61 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %3, align 8
  ret %struct.exiu_irq_data* %61
}

declare dso_local %struct.exiu_irq_data* @kzalloc(i32, i32) #1

declare dso_local %struct.exiu_irq_data* @ERR_PTR(i32) #1

declare dso_local i64 @fwnode_property_read_u32_array(%struct.fwnode_handle*, i8*, i32*, i32) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @kfree(%struct.exiu_irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
