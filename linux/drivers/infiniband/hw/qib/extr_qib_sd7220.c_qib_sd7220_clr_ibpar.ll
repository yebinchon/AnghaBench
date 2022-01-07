; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_clr_ibpar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_clr_ibpar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@IB_7220_SERDES = common dso_local global i32 0, align 4
@IB_MPREG6 = common dso_local global i32 0, align 4
@UC_PAR_CLR_D = common dso_local global i32 0, align 4
@UC_PAR_CLR_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed clearing IBSerDes Parity err\0A\00", align 1
@kr_scratch = common dso_local global i32 0, align 4
@kr_hwerrclear = common dso_local global i32 0, align 4
@QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_sd7220_clr_ibpar(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %4 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %5 = load i32, i32* @IB_7220_SERDES, align 4
  %6 = load i32, i32* @IB_MPREG6, align 4
  %7 = load i32, i32* @UC_PAR_CLR_D, align 4
  %8 = load i32, i32* @UC_PAR_CLR_M, align 4
  %9 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %4, i32 %5, i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = call i32 @qib_dev_err(%struct.qib_devdata* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = load i32, i32* @IB_7220_SERDES, align 4
  %18 = load i32, i32* @IB_MPREG6, align 4
  %19 = load i32, i32* @UC_PAR_CLR_M, align 4
  %20 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %16, i32 %17, i32 %18, i32 0, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = load i32, i32* @kr_scratch, align 4
  %23 = call i32 @qib_read_kreg32(%struct.qib_devdata* %21, i32 %22)
  %24 = call i32 @udelay(i32 4)
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = load i32, i32* @kr_hwerrclear, align 4
  %27 = load i32, i32* @QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR, align 4
  %28 = call i32 @qib_write_kreg(%struct.qib_devdata* %25, i32 %26, i32 %27)
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %30 = load i32, i32* @kr_scratch, align 4
  %31 = call i32 @qib_read_kreg32(%struct.qib_devdata* %29, i32 %30)
  br label %32

32:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @qib_sd7220_reg_mod(%struct.qib_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
