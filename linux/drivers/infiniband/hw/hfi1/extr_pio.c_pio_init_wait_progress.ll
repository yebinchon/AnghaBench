; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_init_wait_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_init_wait_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@ICODE_FPGA_EMULATION = common dso_local global i64 0, align 8
@SEND_PIO_INIT_CTXT = common dso_local global i32 0, align 4
@SEND_PIO_INIT_CTXT_PIO_INIT_IN_PROGRESS_SMASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SEND_PIO_INIT_CTXT_PIO_INIT_ERR_SMASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @pio_init_wait_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pio_init_wait_progress(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ICODE_FPGA_EMULATION, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 120, i32 5
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %1, %30
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %16 = load i32, i32* @SEND_PIO_INIT_CTXT, align 4
  %17 = call i32 @read_csr(%struct.hfi1_devdata* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SEND_PIO_INIT_CTXT_PIO_INIT_IN_PROGRESS_SMASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %34

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %45

30:                                               ; preds = %23
  %31 = call i32 @udelay(i32 5)
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %14

34:                                               ; preds = %22
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SEND_PIO_INIT_CTXT_PIO_INIT_ERR_SMASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32 [ %41, %39 ], [ 0, %42 ]
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %27
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
