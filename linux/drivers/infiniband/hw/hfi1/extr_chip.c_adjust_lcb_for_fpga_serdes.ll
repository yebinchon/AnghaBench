; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_adjust_lcb_for_fpga_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_adjust_lcb_for_fpga_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@ICODE_FPGA_EMULATION = common dso_local global i64 0, align 8
@DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT = common dso_local global i32 0, align 4
@DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT = common dso_local global i32 0, align 4
@DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT = common dso_local global i32 0, align 4
@DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT = common dso_local global i64 0, align 8
@DC_LCB_CFG_LN_DCLK = common dso_local global i32 0, align 4
@DC_LCB_CFG_RX_FIFOS_RADR = common dso_local global i32 0, align 4
@DC_LCB_CFG_IGNORE_LOST_RCLK = common dso_local global i32 0, align 4
@DC_LCB_CFG_IGNORE_LOST_RCLK_EN_SMASK = common dso_local global i64 0, align 8
@DC_LCB_CFG_TX_FIFOS_RADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @adjust_lcb_for_fpga_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_lcb_for_fpga_serdes(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ICODE_FPGA_EMULATION, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %125

12:                                               ; preds = %1
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %14 = call i64 @is_emulator_s(%struct.hfi1_devdata* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %125

17:                                               ; preds = %12
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %19 = call i32 @emulator_rev(%struct.hfi1_devdata* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %21 = call i32 @is_ax(%struct.hfi1_devdata* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 45, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 18
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 10, %29
  %31 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 9, %32
  %34 = or i64 %30, %33
  %35 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT, align 4
  %36 = zext i32 %35 to i64
  %37 = shl i64 9, %36
  %38 = or i64 %34, %37
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* @DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT, align 8
  %40 = shl i64 6, %39
  store i64 %40, i64* %4, align 8
  br label %112

41:                                               ; preds = %24
  %42 = load i32, i32* %5, align 4
  %43 = icmp sle i32 %42, 24
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT, align 4
  %46 = zext i32 %45 to i64
  %47 = shl i64 9, %46
  %48 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT, align 4
  %49 = zext i32 %48 to i64
  %50 = shl i64 8, %49
  %51 = or i64 %47, %50
  %52 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT, align 4
  %53 = zext i32 %52 to i64
  %54 = shl i64 8, %53
  %55 = or i64 %51, %54
  store i64 %55, i64* %3, align 8
  %56 = load i64, i64* @DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT, align 8
  %57 = shl i64 7, %56
  store i64 %57, i64* %4, align 8
  br label %111

58:                                               ; preds = %41
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 25
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT, align 4
  %63 = zext i32 %62 to i64
  %64 = shl i64 10, %63
  %65 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 9, %66
  %68 = or i64 %64, %67
  %69 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT, align 4
  %70 = zext i32 %69 to i64
  %71 = shl i64 9, %70
  %72 = or i64 %68, %71
  store i64 %72, i64* %3, align 8
  %73 = load i64, i64* @DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT, align 8
  %74 = shl i64 3, %73
  store i64 %74, i64* %4, align 8
  br label %110

75:                                               ; preds = %58
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 26
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT, align 4
  %80 = zext i32 %79 to i64
  %81 = shl i64 9, %80
  %82 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT, align 4
  %83 = zext i32 %82 to i64
  %84 = shl i64 8, %83
  %85 = or i64 %81, %84
  %86 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT, align 4
  %87 = zext i32 %86 to i64
  %88 = shl i64 8, %87
  %89 = or i64 %85, %88
  store i64 %89, i64* %3, align 8
  %90 = load i64, i64* @DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT, align 8
  %91 = shl i64 7, %90
  store i64 %91, i64* %4, align 8
  %92 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %93 = load i32, i32* @DC_LCB_CFG_LN_DCLK, align 4
  %94 = call i32 @write_csr(%struct.hfi1_devdata* %92, i32 %93, i64 1)
  br label %109

95:                                               ; preds = %75
  %96 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT, align 4
  %97 = zext i32 %96 to i64
  %98 = shl i64 8, %97
  %99 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT, align 4
  %100 = zext i32 %99 to i64
  %101 = shl i64 7, %100
  %102 = or i64 %98, %101
  %103 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT, align 4
  %104 = zext i32 %103 to i64
  %105 = shl i64 7, %104
  %106 = or i64 %102, %105
  store i64 %106, i64* %3, align 8
  %107 = load i64, i64* @DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT, align 8
  %108 = shl i64 3, %107
  store i64 %108, i64* %4, align 8
  br label %109

109:                                              ; preds = %95, %78
  br label %110

110:                                              ; preds = %109, %61
  br label %111

111:                                              ; preds = %110, %44
  br label %112

112:                                              ; preds = %111, %27
  %113 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %114 = load i32, i32* @DC_LCB_CFG_RX_FIFOS_RADR, align 4
  %115 = load i64, i64* %3, align 8
  %116 = call i32 @write_csr(%struct.hfi1_devdata* %113, i32 %114, i64 %115)
  %117 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %118 = load i32, i32* @DC_LCB_CFG_IGNORE_LOST_RCLK, align 4
  %119 = load i64, i64* @DC_LCB_CFG_IGNORE_LOST_RCLK_EN_SMASK, align 8
  %120 = call i32 @write_csr(%struct.hfi1_devdata* %117, i32 %118, i64 %119)
  %121 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %122 = load i32, i32* @DC_LCB_CFG_TX_FIFOS_RADR, align 4
  %123 = load i64, i64* %4, align 8
  %124 = call i32 @write_csr(%struct.hfi1_devdata* %121, i32 %122, i64 %123)
  br label %125

125:                                              ; preds = %112, %16, %11
  ret void
}

declare dso_local i64 @is_emulator_s(%struct.hfi1_devdata*) #1

declare dso_local i32 @emulator_rev(%struct.hfi1_devdata*) #1

declare dso_local i32 @is_ax(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
