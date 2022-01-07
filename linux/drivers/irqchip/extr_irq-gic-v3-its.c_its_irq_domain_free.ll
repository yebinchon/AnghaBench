; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_data = type { i32 }
%struct.its_device = type { %struct.TYPE_2__, i32, %struct.its_node* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.its_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @its_irq_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_irq_domain_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.its_device*, align 8
  %9 = alloca %struct.its_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.irq_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %12, i32 %13)
  store %struct.irq_data* %14, %struct.irq_data** %7, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %16 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %15)
  store %struct.its_device* %16, %struct.its_device** %8, align 8
  %17 = load %struct.its_device*, %struct.its_device** %8, align 8
  %18 = getelementptr inbounds %struct.its_device, %struct.its_device* %17, i32 0, i32 2
  %19 = load %struct.its_node*, %struct.its_node** %18, align 8
  store %struct.its_node* %19, %struct.its_node** %9, align 8
  %20 = load %struct.its_device*, %struct.its_device** %8, align 8
  %21 = getelementptr inbounds %struct.its_device, %struct.its_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %24, i32 %25)
  %27 = call i32 @its_get_event_id(%struct.irq_data* %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @get_count_order(i32 %28)
  %30 = call i32 @bitmap_release_region(i32 %23, i32 %27, i32 %29)
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %43, %3
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %37, %38
  %40 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %36, i32 %39)
  store %struct.irq_data* %40, %struct.irq_data** %11, align 8
  %41 = load %struct.irq_data*, %struct.irq_data** %11, align 8
  %42 = call i32 @irq_domain_reset_irq_data(%struct.irq_data* %41)
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load %struct.its_node*, %struct.its_node** %9, align 8
  %48 = getelementptr inbounds %struct.its_node, %struct.its_node* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.its_device*, %struct.its_device** %8, align 8
  %51 = getelementptr inbounds %struct.its_device, %struct.its_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %88, label %54

54:                                               ; preds = %46
  %55 = load %struct.its_device*, %struct.its_device** %8, align 8
  %56 = getelementptr inbounds %struct.its_device, %struct.its_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.its_device*, %struct.its_device** %8, align 8
  %60 = getelementptr inbounds %struct.its_device, %struct.its_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @bitmap_empty(i32 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %54
  %66 = load %struct.its_device*, %struct.its_device** %8, align 8
  %67 = getelementptr inbounds %struct.its_device, %struct.its_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.its_device*, %struct.its_device** %8, align 8
  %71 = getelementptr inbounds %struct.its_device, %struct.its_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.its_device*, %struct.its_device** %8, align 8
  %75 = getelementptr inbounds %struct.its_device, %struct.its_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @its_lpi_free(i32 %69, i32 %73, i32 %77)
  %79 = load %struct.its_device*, %struct.its_device** %8, align 8
  %80 = getelementptr inbounds %struct.its_device, %struct.its_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @kfree(i32 %82)
  %84 = load %struct.its_device*, %struct.its_device** %8, align 8
  %85 = call i32 @its_send_mapd(%struct.its_device* %84, i32 0)
  %86 = load %struct.its_device*, %struct.its_device** %8, align 8
  %87 = call i32 @its_free_device(%struct.its_device* %86)
  br label %88

88:                                               ; preds = %65, %54, %46
  %89 = load %struct.its_node*, %struct.its_node** %9, align 8
  %90 = getelementptr inbounds %struct.its_node, %struct.its_node* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @irq_domain_free_irqs_parent(%struct.irq_domain* %92, i32 %93, i32 %94)
  ret void
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

declare dso_local i32 @its_get_event_id(%struct.irq_data*) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @irq_domain_reset_irq_data(%struct.irq_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @its_lpi_free(i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @its_send_mapd(%struct.its_device*, i32) #1

declare dso_local i32 @its_free_device(%struct.its_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irq_domain_free_irqs_parent(%struct.irq_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
