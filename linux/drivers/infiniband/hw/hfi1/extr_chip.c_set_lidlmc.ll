; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_lidlmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_lidlmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i64, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@DCC_CFG_PORT_CONFIG1 = common dso_local global i32 0, align 4
@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@DCC_CFG_PORT_CONFIG1_TARGET_DLID_SMASK = common dso_local global i32 0, align 4
@DCC_CFG_PORT_CONFIG1_DLID_MASK_SMASK = common dso_local global i32 0, align 4
@DCC_CFG_PORT_CONFIG1_TARGET_DLID_MASK = common dso_local global i32 0, align 4
@DCC_CFG_PORT_CONFIG1_TARGET_DLID_SHIFT = common dso_local global i32 0, align 4
@DCC_CFG_PORT_CONFIG1_DLID_MASK_MASK = common dso_local global i32 0, align 4
@DCC_CFG_PORT_CONFIG1_DLID_MASK_SHIFT = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_SLID_MASK_MASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_SLID_MASK_SHIFT = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_SLID_VALUE_MASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_SLID_VALUE_SHIFT = common dso_local global i32 0, align 4
@LINKVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SendContext[%d].SLID_CHECK = 0x%x\00", align 1
@SEND_CTXT_CHECK_SLID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*)* @set_lidlmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lidlmc(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %10 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %9, i32 0, i32 2
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  store %struct.hfi1_devdata* %11, %struct.hfi1_devdata** %5, align 8
  %12 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 1, %14
  %16 = sub i32 %15, 1
  %17 = xor i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %19 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %18, i32 0, i32 2
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %19, align 8
  %21 = load i32, i32* @DCC_CFG_PORT_CONFIG1, align 4
  %22 = call i32 @read_csr(%struct.hfi1_devdata* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %24 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %27 = call i64 @be16_to_cpu(i32 %26)
  %28 = icmp sge i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %32 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi i64 [ 0, %29 ], [ %33, %30 ]
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @DCC_CFG_PORT_CONFIG1_TARGET_DLID_SMASK, align 4
  %38 = load i32, i32* @DCC_CFG_PORT_CONFIG1_DLID_MASK_SMASK, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @DCC_CFG_PORT_CONFIG1_TARGET_DLID_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @DCC_CFG_PORT_CONFIG1_TARGET_DLID_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @DCC_CFG_PORT_CONFIG1_DLID_MASK_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @DCC_CFG_PORT_CONFIG1_DLID_MASK_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %47, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %57 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %56, i32 0, i32 2
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %57, align 8
  %59 = load i32, i32* @DCC_CFG_PORT_CONFIG1, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @write_csr(%struct.hfi1_devdata* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @SEND_CTXT_CHECK_SLID_MASK_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @SEND_CTXT_CHECK_SLID_MASK_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @SEND_CTXT_CHECK_SLID_VALUE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @SEND_CTXT_CHECK_SLID_VALUE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %66, %73
  store i32 %74, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %90, %34
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %78 = call i32 @chip_send_contexts(%struct.hfi1_devdata* %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i32, i32* @LINKVERB, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @hfi1_cdbg(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @SEND_CTXT_CHECK_SLID, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %85, i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %75

93:                                               ; preds = %75
  %94 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @sdma_update_lmc(%struct.hfi1_devdata* %94, i32 %95, i32 %96)
  ret void
}

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @chip_send_contexts(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @sdma_update_lmc(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
