; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_write_xmt_margin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pcie.c_write_xmt_margin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CCE_PCIE_CTRL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL1 = common dso_local global i64 0, align 8
@MARGIN_GEN1_GEN2_SHIFT = common dso_local global i32 0, align 4
@MARGIN_GEN1_GEN2_MASK = common dso_local global i32 0, align 4
@MARGIN_G1_G2_OVERWRITE_SHIFT = common dso_local global i32 0, align 4
@MARGIN_G1_G2_OVERWRITE_MASK = common dso_local global i32 0, align 4
@LANE_DELAY_SHIFT = common dso_local global i32 0, align 4
@LANE_DELAY_MASK = common dso_local global i32 0, align 4
@LANE_BUNDLE_SHIFT = common dso_local global i32 0, align 4
@LANE_BUNDLE_MASK = common dso_local global i32 0, align 4
@MARGIN_SHIFT = common dso_local global i32 0, align 4
@MARGIN_OVERWRITE_ENABLE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: program XMT margin, CcePcieCtrl 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i8*)* @write_xmt_margin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_xmt_margin(%struct.hfi1_devdata* %0, i8* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = load i32, i32* @CCE_PCIE_CTRL, align 4
  %12 = call i32 @read_csr(%struct.hfi1_devdata* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI_DEVICE_ID_INTEL1, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MARGIN_GEN1_GEN2_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32, i32* @MARGIN_GEN1_GEN2_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MARGIN_G1_G2_OVERWRITE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32, i32* @MARGIN_G1_G2_OVERWRITE_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @LANE_DELAY_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @LANE_DELAY_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @LANE_BUNDLE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @LANE_BUNDLE_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %42 = call i64 @is_ax(%struct.hfi1_devdata* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %20
  store i32 5, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MARGIN_GEN1_GEN2_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MARGIN_G1_G2_OVERWRITE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MARGIN_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @MARGIN_OVERWRITE_ENABLE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @LANE_DELAY_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %60, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @LANE_BUNDLE_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %64, %67
  store i32 %68, i32* %5, align 4
  %69 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %70 = load i32, i32* @CCE_PCIE_CTRL, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @write_csr(%struct.hfi1_devdata* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %45, %2
  %74 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @dd_dev_dbg(%struct.hfi1_devdata* %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %75, i32 %76)
  ret void
}

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i64 @is_ax(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @dd_dev_dbg(%struct.hfi1_devdata*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
