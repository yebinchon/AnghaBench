; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_dump_idmac_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_dump_idmac_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu = type { i32 }

@.str = private unnamed_addr constant [91 x i8] c"IDMAC_CONF 0x%x, IC_CONF 0x%x, IDMAC_CHA_EN 0x%x, IDMAC_CHA_PRI 0x%x, IDMAC_CHA_BUSY 0x%x\0A\00", align 1
@IDMAC_CONF = common dso_local global i32 0, align 4
@IC_CONF = common dso_local global i32 0, align 4
@IDMAC_CHA_EN = common dso_local global i32 0, align 4
@IDMAC_CHA_PRI = common dso_local global i32 0, align 4
@IDMAC_CHA_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"BUF0_RDY 0x%x, BUF1_RDY 0x%x, CUR_BUF 0x%x, DB_MODE 0x%x, TASKS_STAT 0x%x\0A\00", align 1
@IPU_CHA_BUF0_RDY = common dso_local global i32 0, align 4
@IPU_CHA_BUF1_RDY = common dso_local global i32 0, align 4
@IPU_CHA_CUR_BUF = common dso_local global i32 0, align 4
@IPU_CHA_DB_MODE_SEL = common dso_local global i32 0, align 4
@IPU_TASKS_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu*)* @dump_idmac_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_idmac_reg(%struct.ipu* %0) #0 {
  %2 = alloca %struct.ipu*, align 8
  store %struct.ipu* %0, %struct.ipu** %2, align 8
  %3 = load %struct.ipu*, %struct.ipu** %2, align 8
  %4 = getelementptr inbounds %struct.ipu, %struct.ipu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ipu*, %struct.ipu** %2, align 8
  %7 = load i32, i32* @IDMAC_CONF, align 4
  %8 = call i32 @idmac_read_icreg(%struct.ipu* %6, i32 %7)
  %9 = load %struct.ipu*, %struct.ipu** %2, align 8
  %10 = load i32, i32* @IC_CONF, align 4
  %11 = call i32 @idmac_read_icreg(%struct.ipu* %9, i32 %10)
  %12 = load %struct.ipu*, %struct.ipu** %2, align 8
  %13 = load i32, i32* @IDMAC_CHA_EN, align 4
  %14 = call i32 @idmac_read_icreg(%struct.ipu* %12, i32 %13)
  %15 = load %struct.ipu*, %struct.ipu** %2, align 8
  %16 = load i32, i32* @IDMAC_CHA_PRI, align 4
  %17 = call i32 @idmac_read_icreg(%struct.ipu* %15, i32 %16)
  %18 = load %struct.ipu*, %struct.ipu** %2, align 8
  %19 = load i32, i32* @IDMAC_CHA_BUSY, align 4
  %20 = call i32 @idmac_read_icreg(%struct.ipu* %18, i32 %19)
  %21 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.ipu*, %struct.ipu** %2, align 8
  %23 = getelementptr inbounds %struct.ipu, %struct.ipu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ipu*, %struct.ipu** %2, align 8
  %26 = load i32, i32* @IPU_CHA_BUF0_RDY, align 4
  %27 = call i32 @idmac_read_ipureg(%struct.ipu* %25, i32 %26)
  %28 = load %struct.ipu*, %struct.ipu** %2, align 8
  %29 = load i32, i32* @IPU_CHA_BUF1_RDY, align 4
  %30 = call i32 @idmac_read_ipureg(%struct.ipu* %28, i32 %29)
  %31 = load %struct.ipu*, %struct.ipu** %2, align 8
  %32 = load i32, i32* @IPU_CHA_CUR_BUF, align 4
  %33 = call i32 @idmac_read_ipureg(%struct.ipu* %31, i32 %32)
  %34 = load %struct.ipu*, %struct.ipu** %2, align 8
  %35 = load i32, i32* @IPU_CHA_DB_MODE_SEL, align 4
  %36 = call i32 @idmac_read_ipureg(%struct.ipu* %34, i32 %35)
  %37 = load %struct.ipu*, %struct.ipu** %2, align 8
  %38 = load i32, i32* @IPU_TASKS_STAT, align 4
  %39 = call i32 @idmac_read_ipureg(%struct.ipu* %37, i32 %38)
  %40 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36, i32 %39)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @idmac_read_icreg(%struct.ipu*, i32) #1

declare dso_local i32 @idmac_read_ipureg(%struct.ipu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
