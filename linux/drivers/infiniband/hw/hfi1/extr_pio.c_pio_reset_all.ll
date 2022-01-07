; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_reset_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_reset_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@EIO = common dso_local global i32 0, align 4
@SEND_PIO_ERR_CLEAR = common dso_local global i32 0, align 4
@SEND_PIO_ERR_CLEAR_PIO_INIT_SM_IN_ERR_SMASK = common dso_local global i32 0, align 4
@SEND_PIO_INIT_CTXT = common dso_local global i32 0, align 4
@SEND_PIO_INIT_CTXT_PIO_ALL_CTXT_INIT_SMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"PIO send context init %s while initializing all PIO blocks\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"is stuck\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"had an error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pio_reset_all(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %4 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %5 = call i32 @pio_init_wait_progress(%struct.hfi1_devdata* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @EIO, align 4
  %8 = sub nsw i32 0, %7
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %12 = load i32, i32* @SEND_PIO_ERR_CLEAR, align 4
  %13 = load i32, i32* @SEND_PIO_ERR_CLEAR_PIO_INIT_SM_IN_ERR_SMASK, align 4
  %14 = call i32 @write_csr(%struct.hfi1_devdata* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %17 = load i32, i32* @SEND_PIO_INIT_CTXT, align 4
  %18 = load i32, i32* @SEND_PIO_INIT_CTXT_PIO_ALL_CTXT_INIT_SMASK, align 4
  %19 = call i32 @write_csr(%struct.hfi1_devdata* %16, i32 %17, i32 %18)
  %20 = call i32 @udelay(i32 2)
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %22 = call i32 @pio_init_wait_progress(%struct.hfi1_devdata* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @dd_dev_err(%struct.hfi1_devdata* %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %25, %15
  ret void
}

declare dso_local i32 @pio_init_wait_progress(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
