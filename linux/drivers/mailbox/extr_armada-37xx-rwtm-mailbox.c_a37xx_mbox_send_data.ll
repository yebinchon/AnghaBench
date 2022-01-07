; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_armada-37xx-rwtm-mailbox.c_a37xx_mbox_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_armada-37xx-rwtm-mailbox.c_a37xx_mbox_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.a37xx_mbox* }
%struct.a37xx_mbox = type { i64, i32 }
%struct.armada_37xx_rwtm_tx_msg = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@RWTM_MBOX_FIFO_STATUS = common dso_local global i64 0, align 8
@FIFO_STS_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Secure processor not ready\0A\00", align 1
@FIFO_STS_CNTR_MASK = common dso_local global i32 0, align 4
@FIFO_STS_CNTR_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Secure processor command queue full\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RWTM_MBOX_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i8*)* @a37xx_mbox_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a37xx_mbox_send_data(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.a37xx_mbox*, align 8
  %7 = alloca %struct.armada_37xx_rwtm_tx_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %11 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %10, i32 0, i32 0
  %12 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %11, align 8
  store %struct.a37xx_mbox* %12, %struct.a37xx_mbox** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.armada_37xx_rwtm_tx_msg*
  store %struct.armada_37xx_rwtm_tx_msg* %14, %struct.armada_37xx_rwtm_tx_msg** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %81

20:                                               ; preds = %2
  %21 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %6, align 8
  %22 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RWTM_MBOX_FIFO_STATUS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @FIFO_STS_RDY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %6, align 8
  %33 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %20
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @FIFO_STS_CNTR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @FIFO_STS_CNTR_MAX, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %6, align 8
  %44 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %81

49:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load %struct.armada_37xx_rwtm_tx_msg*, %struct.armada_37xx_rwtm_tx_msg** %7, align 8
  %55 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, %struct.armada_37xx_rwtm_tx_msg* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %6, align 8
  %62 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @RWTM_MBOX_PARAM(i32 %64)
  %66 = add nsw i64 %63, %65
  %67 = call i32 @writel(i32 %60, i64 %66)
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %50

71:                                               ; preds = %50
  %72 = load %struct.armada_37xx_rwtm_tx_msg*, %struct.armada_37xx_rwtm_tx_msg** %7, align 8
  %73 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, %struct.armada_37xx_rwtm_tx_msg* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.a37xx_mbox*, %struct.a37xx_mbox** %6, align 8
  %76 = getelementptr inbounds %struct.a37xx_mbox, %struct.a37xx_mbox* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @RWTM_MBOX_COMMAND, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %71, %42, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @RWTM_MBOX_PARAM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
