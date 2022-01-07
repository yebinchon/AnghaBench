; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_interrupts_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_interrupts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i64, i32, i64, %struct.platform_device* }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@PDC_INTMASK = common dso_local global i32 0, align 4
@PDC_INTMASK_OFFSET = common dso_local global i64 0, align 8
@FA_HW = common dso_local global i64 0, align 8
@PDC_LAZY_INT = common dso_local global i32 0, align 4
@FA_RCVLAZY0_OFFSET = common dso_local global i64 0, align 8
@PDC_RCVLAZY0_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"pdc device %s irq %u for pdcs %p\00", align 1
@pdc_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"IRQ %u request failed with err %d\0A\00", align 1
@PDC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdc_state*)* @pdc_interrupts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_interrupts_init(%struct.pdc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pdc_state*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.pdc_state* %0, %struct.pdc_state** %3, align 8
  %8 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %9 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %8, i32 0, i32 3
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load i32, i32* @PDC_INTMASK, align 4
  %18 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %19 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PDC_INTMASK_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite32(i32 %17, i64 %22)
  %24 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %25 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FA_HW, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load i32, i32* @PDC_LAZY_INT, align 4
  %31 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %32 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FA_RCVLAZY0_OFFSET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i64 %35)
  br label %45

37:                                               ; preds = %1
  %38 = load i32, i32* @PDC_LAZY_INT, align 4
  %39 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %40 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PDC_RCVLAZY0_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @iowrite32(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %37, %29
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = call i32 @irq_of_parse_and_map(%struct.device_node* %46, i32 0)
  %48 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %49 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = call i32 @dev_name(%struct.device* %51)
  %53 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %54 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %57 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, %struct.pdc_state* %56)
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %60 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @pdc_irq_handler, align 4
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call i32 @dev_name(%struct.device* %63)
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32 @devm_request_irq(%struct.device* %58, i32 %61, i32 %62, i32 0, i32 %64, %struct.device* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %45
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %72 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %79

77:                                               ; preds = %45
  %78 = load i32, i32* @PDC_SUCCESS, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %69
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, %struct.pdc_state*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
