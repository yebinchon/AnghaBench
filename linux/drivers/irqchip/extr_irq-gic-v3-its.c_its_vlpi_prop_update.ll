; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vlpi_prop_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vlpi_prop_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.its_cmd_info = type { i64, i32 }
%struct.its_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PROP_UPDATE_AND_INV_VLPI = common dso_local global i64 0, align 8
@LPI_PROP_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.its_cmd_info*)* @its_vlpi_prop_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_vlpi_prop_update(%struct.irq_data* %0, %struct.its_cmd_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.its_cmd_info*, align 8
  %6 = alloca %struct.its_device*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.its_cmd_info* %1, %struct.its_cmd_info** %5, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.its_device* %8, %struct.its_device** %6, align 8
  %9 = load %struct.its_device*, %struct.its_device** %6, align 8
  %10 = getelementptr inbounds %struct.its_device, %struct.its_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %16 = call i32 @irqd_is_forwarded_to_vcpu(%struct.irq_data* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %14
  %22 = load %struct.its_cmd_info*, %struct.its_cmd_info** %5, align 8
  %23 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PROP_UPDATE_AND_INV_VLPI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %29 = load %struct.its_cmd_info*, %struct.its_cmd_info** %5, align 8
  %30 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @lpi_update_config(%struct.irq_data* %28, i32 255, i32 %31)
  br label %39

33:                                               ; preds = %21
  %34 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %35 = load %struct.its_cmd_info*, %struct.its_cmd_info** %5, align 8
  %36 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @lpi_write_config(%struct.irq_data* %34, i32 255, i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %41 = load %struct.its_cmd_info*, %struct.its_cmd_info** %5, align 8
  %42 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LPI_PROP_ENABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @its_vlpi_set_doorbell(%struct.irq_data* %40, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_is_forwarded_to_vcpu(%struct.irq_data*) #1

declare dso_local i32 @lpi_update_config(%struct.irq_data*, i32, i32) #1

declare dso_local i32 @lpi_write_config(%struct.irq_data*, i32, i32) #1

declare dso_local i32 @its_vlpi_set_doorbell(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
