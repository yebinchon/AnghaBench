; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vlpi_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vlpi_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.its_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LPI_PROP_DEFAULT_PRIO = common dso_local global i32 0, align 4
@LPI_PROP_ENABLED = common dso_local global i32 0, align 4
@LPI_PROP_GROUP1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @its_vlpi_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_vlpi_unmap(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.its_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.its_device* %7, %struct.its_device** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call i32 @its_get_event_id(%struct.irq_data* %8)
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.its_device*, %struct.its_device** %3, align 8
  %11 = getelementptr inbounds %struct.its_device, %struct.its_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.its_device*, %struct.its_device** %3, align 8
  %15 = getelementptr inbounds %struct.its_device, %struct.its_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %21 = call i32 @irqd_is_forwarded_to_vcpu(%struct.irq_data* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %69

26:                                               ; preds = %19
  %27 = load %struct.its_device*, %struct.its_device** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @its_send_discard(%struct.its_device* %27, i32 %28)
  %30 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %31 = call i32 @irqd_clr_forwarded_to_vcpu(%struct.irq_data* %30)
  %32 = load %struct.its_device*, %struct.its_device** %3, align 8
  %33 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %34 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @its_send_mapti(%struct.its_device* %32, i32 %35, i32 %36)
  %38 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %39 = load i32, i32* @LPI_PROP_DEFAULT_PRIO, align 4
  %40 = load i32, i32* @LPI_PROP_ENABLED, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @LPI_PROP_GROUP1, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @lpi_update_config(%struct.irq_data* %38, i32 255, i32 %43)
  %45 = load %struct.its_device*, %struct.its_device** %3, align 8
  %46 = getelementptr inbounds %struct.its_device, %struct.its_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.its_device*, %struct.its_device** %3, align 8
  %49 = getelementptr inbounds %struct.its_device, %struct.its_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @its_unmap_vm(i32 %47, i32* %51)
  %53 = load %struct.its_device*, %struct.its_device** %3, align 8
  %54 = getelementptr inbounds %struct.its_device, %struct.its_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %26
  %60 = load %struct.its_device*, %struct.its_device** %3, align 8
  %61 = getelementptr inbounds %struct.its_device, %struct.its_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load %struct.its_device*, %struct.its_device** %3, align 8
  %64 = getelementptr inbounds %struct.its_device, %struct.its_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @kfree(i32 %66)
  br label %68

68:                                               ; preds = %59, %26
  br label %69

69:                                               ; preds = %68, %23
  %70 = load %struct.its_device*, %struct.its_device** %3, align 8
  %71 = getelementptr inbounds %struct.its_device, %struct.its_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @its_get_event_id(%struct.irq_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irqd_is_forwarded_to_vcpu(%struct.irq_data*) #1

declare dso_local i32 @its_send_discard(%struct.its_device*, i32) #1

declare dso_local i32 @irqd_clr_forwarded_to_vcpu(%struct.irq_data*) #1

declare dso_local i32 @its_send_mapti(%struct.its_device*, i32, i32) #1

declare dso_local i32 @lpi_update_config(%struct.irq_data*, i32, i32) #1

declare dso_local i32 @its_unmap_vm(i32, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
