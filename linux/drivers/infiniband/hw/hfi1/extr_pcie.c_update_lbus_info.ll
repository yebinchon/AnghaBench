; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_update_lbus_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_update_lbus_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i32, i32 }

@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to read from PCI config\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"PCIe,%uMHz,x%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @update_lbus_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_lbus_info(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %9 = call i32 @pcie_capability_read_word(i32 %7, i32 %8, i32* %3)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %14 = call i32 @dd_dev_err(%struct.hfi1_devdata* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %34

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @extract_width(i32 %16)
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @extract_speed(i32 %20)
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %31 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @extract_width(i32) #1

declare dso_local i32 @extract_speed(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
