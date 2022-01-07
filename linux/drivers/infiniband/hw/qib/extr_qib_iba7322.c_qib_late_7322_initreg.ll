; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_late_7322_initreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_late_7322_initreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i64, i64, i64, i64, i32, i32, i64, i32, i32, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32 }

@kr_rcvhdrentsize = common dso_local global i32 0, align 4
@kr_rcvhdrsize = common dso_local global i32 0, align 4
@kr_rcvhdrcnt = common dso_local global i32 0, align 4
@kr_sendpioavailaddr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Catastrophic software error, SendPIOAvailAddr written as %lx, read back as %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NUM_VL15_BUFS = common dso_local global i32 0, align 4
@TXCHK_CHG_TYPE_KERN = common dso_local global i32 0, align 4
@TXCHK_CHG_TYPE_ENAB1 = common dso_local global i32 0, align 4
@sendctrl_0_observer = common dso_local global i32 0, align 4
@sendctrl_1_observer = common dso_local global i32 0, align 4
@QLOGIC_IB_C_SDMAFETCHPRIOEN = common dso_local global i64 0, align 8
@kr_control = common dso_local global i32 0, align 4
@krp_senddmaprioritythld = common dso_local global i32 0, align 4
@sdma_fetch_prio = common dso_local global i32 0, align 4
@QIB_HAS_QSFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_late_7322_initreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_late_7322_initreg(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %8 = load i32, i32* @kr_rcvhdrentsize, align 4
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @qib_write_kreg(%struct.qib_devdata* %7, i32 %8, i64 %11)
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = load i32, i32* @kr_rcvhdrsize, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @qib_write_kreg(%struct.qib_devdata* %13, i32 %14, i64 %17)
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %20 = load i32, i32* @kr_rcvhdrcnt, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @qib_write_kreg(%struct.qib_devdata* %19, i32 %20, i64 %23)
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = load i32, i32* @kr_sendpioavailaddr, align 4
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @qib_write_kreg(%struct.qib_devdata* %25, i32 %26, i64 %29)
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %32 = load i32, i32* @kr_sendpioavailaddr, align 4
  %33 = call i64 @qib_read_kreg64(%struct.qib_devdata* %31, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %1
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @qib_dev_err(%struct.qib_devdata* %40, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %39, %1
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load i32, i32* @NUM_VL15_BUFS, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %4, align 4
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @TXCHK_CHG_TYPE_KERN, align 4
  %61 = call i32 @qib_7322_txchk_change(%struct.qib_devdata* %58, i32 0, i32 %59, i32 %60, i32* null)
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @TXCHK_CHG_TYPE_ENAB1, align 4
  %65 = call i32 @qib_7322_txchk_change(%struct.qib_devdata* %62, i32 0, i32 %63, i32 %64, i32* null)
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %67 = call i32 @qib_register_observer(%struct.qib_devdata* %66, i32* @sendctrl_0_observer)
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %69 = call i32 @qib_register_observer(%struct.qib_devdata* %68, i32* @sendctrl_1_observer)
  %70 = load i64, i64* @QLOGIC_IB_C_SDMAFETCHPRIOEN, align 8
  %71 = xor i64 %70, -1
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %73 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = and i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %77 = load i32, i32* @kr_control, align 4
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @qib_write_kreg(%struct.qib_devdata* %76, i32 %77, i64 %80)
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %83 = call i32 @set_no_qsfp_atten(%struct.qib_devdata* %82, i32 0)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %112, %48
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %87 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %84
  %91 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %92 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %91, i32 0, i32 9
  %93 = load %struct.qib_pportdata*, %struct.qib_pportdata** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %93, i64 %95
  store %struct.qib_pportdata* %96, %struct.qib_pportdata** %6, align 8
  %97 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %98 = load i32, i32* @krp_senddmaprioritythld, align 4
  %99 = load i32, i32* @sdma_fetch_prio, align 4
  %100 = and i32 %99, 15
  %101 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %97, i32 %98, i32 %100)
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %103 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @QIB_HAS_QSFP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %90
  %109 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %110 = call i32 @qib_init_7322_qsfp(%struct.qib_pportdata* %109)
  br label %111

111:                                              ; preds = %108, %90
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %84

115:                                              ; preds = %84
  %116 = load i64, i64* @QLOGIC_IB_C_SDMAFETCHPRIOEN, align 8
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %118 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = or i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %122 = load i32, i32* @kr_control, align 4
  %123 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %124 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @qib_write_kreg(%struct.qib_devdata* %121, i32 %122, i64 %125)
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i64, i64) #1

declare dso_local i32 @qib_7322_txchk_change(%struct.qib_devdata*, i32, i32, i32, i32*) #1

declare dso_local i32 @qib_register_observer(%struct.qib_devdata*, i32*) #1

declare dso_local i32 @set_no_qsfp_atten(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @qib_init_7322_qsfp(%struct.qib_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
