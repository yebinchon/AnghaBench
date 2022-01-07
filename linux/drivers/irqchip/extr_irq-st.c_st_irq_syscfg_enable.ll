; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-st.c_st_irq_syscfg_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-st.c_st_irq_syscfg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.st_irq_syscfg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"st,irq-device\00", align 1
@ST_A9_IRQ_MAX_CHANS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"st,enable-irq-device must have 2 elems\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"st,fiq-device\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"st,enable-fiq-device must have 2 elems\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"st,invert-ext\00", align 1
@ST_A9_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_irq_syscfg_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_irq_syscfg_enable(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.st_irq_syscfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.st_irq_syscfg* @dev_get_drvdata(%struct.TYPE_3__* %16)
  store %struct.st_irq_syscfg* %17, %struct.st_irq_syscfg** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i32 @of_property_count_u32_elems(%struct.device_node* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ST_A9_IRQ_MAX_CHANS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_3__* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %94

29:                                               ; preds = %1
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i32 @of_property_count_u32_elems(%struct.device_node* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ST_A9_IRQ_MAX_CHANS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_3__* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %94

41:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ST_A9_IRQ_MAX_CHANS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @of_property_read_u32_index(%struct.device_node* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %48, i32* %9)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @st_irq_xlate(%struct.platform_device* %50, i32 %51, i32 %52, i32 1)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %94

58:                                               ; preds = %46
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @of_property_read_u32_index(%struct.device_node* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32* %9)
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @st_irq_xlate(%struct.platform_device* %62, i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %94

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = call i32 @of_property_read_u32(%struct.device_node* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @ST_A9_EXTIRQ_INV_SEL(i32 %77)
  %79 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %5, align 8
  %80 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %5, align 8
  %84 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %5, align 8
  %87 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ST_A9_IRQ_MASK, align 4
  %90 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %5, align 8
  %91 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @regmap_update_bits(i32 %85, i32 %88, i32 %89, i32 %92)
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %74, %68, %56, %35, %23
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.st_irq_syscfg* @dev_get_drvdata(%struct.TYPE_3__*) #1

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @st_irq_xlate(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @ST_A9_EXTIRQ_INV_SEL(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
