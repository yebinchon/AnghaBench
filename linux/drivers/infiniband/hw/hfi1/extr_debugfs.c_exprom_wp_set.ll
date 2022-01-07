; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c_exprom_wp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c_exprom_wp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@EXPROM_WRITE_ENABLE = common dso_local global i32 0, align 4
@exprom_wp_disabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Disable Expansion ROM Write Protection\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Enable Expansion ROM Write Protection\0A\00", align 1
@ASIC_GPIO_OUT = common dso_local global i32 0, align 4
@ASIC_GPIO_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i32)* @exprom_wp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exprom_wp_set(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @EXPROM_WRITE_ENABLE, align 4
  store i32 %9, i32* %5, align 4
  store i32 1, i32* @exprom_wp_disabled, align 4
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = call i32 @dd_dev_info(%struct.hfi1_devdata* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %15

12:                                               ; preds = %2
  store i32 0, i32* @exprom_wp_disabled, align 4
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = call i32 @dd_dev_info(%struct.hfi1_devdata* %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %8
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %17 = load i32, i32* @ASIC_GPIO_OUT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @write_csr(%struct.hfi1_devdata* %16, i32 %17, i32 %18)
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = load i32, i32* @ASIC_GPIO_OE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @write_csr(%struct.hfi1_devdata* %20, i32 %21, i32 %22)
  ret i32 0
}

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
