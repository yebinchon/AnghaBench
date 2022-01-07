; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_update_statusp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_update_statusp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32*, i32 }

@HFI1_STATUS_IB_CONF = common dso_local global i32 0, align 4
@HFI1_STATUS_IB_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"logical state changed to %s (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*, i32)* @update_statusp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_statusp(%struct.hfi1_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %6 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %35 [
    i32 129, label %11
    i32 128, label %11
    i32 130, label %21
    i32 131, label %28
  ]

11:                                               ; preds = %9, %9
  %12 = load i32, i32* @HFI1_STATUS_IB_CONF, align 4
  %13 = load i32, i32* @HFI1_STATUS_IB_READY, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %17 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %15
  store i32 %20, i32* %18, align 4
  br label %35

21:                                               ; preds = %9
  %22 = load i32, i32* @HFI1_STATUS_IB_CONF, align 4
  %23 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %24 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  br label %35

28:                                               ; preds = %9
  %29 = load i32, i32* @HFI1_STATUS_IB_READY, align 4
  %30 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %9, %28, %21, %11
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %38 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @opa_lstate_name(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dd_dev_info(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @dd_dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @opa_lstate_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
