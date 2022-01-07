; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Entering loopback mode\0A\00", align 1
@DC_DC8051_CFG_MODE = common dso_local global i32 0, align 4
@DISABLE_SELF_GUID_CHECK = common dso_local global i32 0, align 4
@ICODE_FUNCTIONAL_SIMULATOR = common dso_local global i64 0, align 8
@loopback = common dso_local global i64 0, align 8
@LOOPBACK_SERDES = common dso_local global i64 0, align 8
@LOOPBACK_LCB = common dso_local global i64 0, align 8
@LOOPBACK_CABLE = common dso_local global i64 0, align 8
@quick_linkup = common dso_local global i32 0, align 4
@ICODE_FPGA_EMULATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"LCB loopback not supported in emulation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid loopback mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @init_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_loopback(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %4 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %5 = call i32 @dd_dev_info(%struct.hfi1_devdata* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %7 = load i32, i32* @DC_DC8051_CFG_MODE, align 4
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %9 = load i32, i32* @DC_DC8051_CFG_MODE, align 4
  %10 = call i32 @read_csr(%struct.hfi1_devdata* %8, i32 %9)
  %11 = load i32, i32* @DISABLE_SELF_GUID_CHECK, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @write_csr(%struct.hfi1_devdata* %6, i32 %7, i32 %12)
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ICODE_FUNCTIONAL_SIMULATOR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load i64, i64* @loopback, align 8
  %21 = load i64, i64* @LOOPBACK_SERDES, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @loopback, align 8
  %25 = load i64, i64* @LOOPBACK_LCB, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @loopback, align 8
  %29 = load i64, i64* @LOOPBACK_CABLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23, %19
  %32 = load i64, i64* @LOOPBACK_LCB, align 8
  store i64 %32, i64* @loopback, align 8
  store i32 1, i32* @quick_linkup, align 4
  store i32 0, i32* %2, align 4
  br label %65

33:                                               ; preds = %27, %1
  %34 = load i64, i64* @loopback, align 8
  %35 = load i64, i64* @LOOPBACK_SERDES, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %65

38:                                               ; preds = %33
  %39 = load i64, i64* @loopback, align 8
  %40 = load i64, i64* @LOOPBACK_LCB, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  store i32 1, i32* @quick_linkup, align 4
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ICODE_FPGA_EMULATION, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %50 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %65

53:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %65

54:                                               ; preds = %38
  %55 = load i64, i64* @loopback, align 8
  %56 = load i64, i64* @LOOPBACK_CABLE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %65

59:                                               ; preds = %54
  %60 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %61 = load i64, i64* @loopback, align 8
  %62 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %58, %53, %48, %37, %31
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
