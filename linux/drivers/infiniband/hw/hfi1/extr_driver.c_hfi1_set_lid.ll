; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_set_lid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_set_lid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@HFI1_IB_CFG_LIDLMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"port %u: got a lid: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_set_lid(%struct.hfi1_pportdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %9 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %8, i32 0, i32 3
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  store %struct.hfi1_devdata* %10, %struct.hfi1_devdata** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %13 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %16 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %18 = load i32, i32* @HFI1_IB_CFG_LIDLMC, align 4
  %19 = call i32 @hfi1_set_ib_cfg(%struct.hfi1_pportdata* %17, i32 %18, i32 0)
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %21 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %22 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dd_dev_info(%struct.hfi1_devdata* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  ret i32 0
}

declare dso_local i32 @hfi1_set_ib_cfg(%struct.hfi1_pportdata*, i32, i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
