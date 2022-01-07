; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_disable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_disable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32 }

@IPC_REG_ISH_RMP2 = common dso_local global i32 0, align 4
@MAX_DMA_DELAY = common dso_local global i32 0, align 4
@IPC_ISH_IN_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Wait for DMA inactive timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ish_disable_dma(%struct.ishtp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  %5 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %6 = load i32, i32* @IPC_REG_ISH_RMP2, align 4
  %7 = call i32 @ish_reg_write(%struct.ishtp_device* %5, i32 %6, i32 0)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MAX_DMA_DELAY, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %14 = call i32 @_ish_read_fw_sts_reg(%struct.ishtp_device* %13)
  %15 = load i32, i32* @IPC_ISH_IN_DMA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i1 [ false, %8 ], [ %17, %12 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = call i32 @mdelay(i32 5)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %23, 5
  store i32 %24, i32* %4, align 4
  br label %8

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MAX_DMA_DELAY, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %31 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ish_reg_write(%struct.ishtp_device*, i32, i32) #1

declare dso_local i32 @_ish_read_fw_sts_reg(%struct.ishtp_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
