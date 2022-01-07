; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_lcb_via_8051.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_lcb_via_8051.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@ICODE_FUNCTIONAL_SIMULATOR = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DC_LCB_CFG_RUN = common dso_local global i32 0, align 4
@HCMD_READ_LCB_CSR = common dso_local global i32 0, align 4
@HCMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i32, i32*)* @read_lcb_via_8051 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_lcb_via_8051(%struct.hfi1_devdata* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ICODE_FUNCTIONAL_SIMULATOR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %17 = call i64 @acquire_lcb_access(%struct.hfi1_devdata* %16, i32 0)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @read_csr(%struct.hfi1_devdata* %20, i32 %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %25 = call i32 @release_lcb_access(%struct.hfi1_devdata* %24, i32 0)
  store i32 0, i32* %4, align 4
  br label %46

26:                                               ; preds = %15
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DC_LCB_CFG_RUN, align 4
  %32 = sub nsw i32 %30, %31
  %33 = ashr i32 %32, 3
  store i32 %33, i32* %8, align 4
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %35 = load i32, i32* @HCMD_READ_LCB_CSR, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @do_8051_command(%struct.hfi1_devdata* %34, i32 %35, i32 %36, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @HCMD_SUCCESS, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %26, %19
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @acquire_lcb_access(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @release_lcb_access(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @do_8051_command(%struct.hfi1_devdata*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
