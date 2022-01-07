; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.altera_mbox = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to send. This is receiver mailbox.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MBOX_PTR = common dso_local global i64 0, align 8
@MAILBOX_PTR_REG = common dso_local global i64 0, align 8
@MBOX_CMD = common dso_local global i64 0, align 8
@MAILBOX_CMD_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i8*)* @altera_mbox_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_mbox_send_data(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.altera_mbox*, align 8
  %7 = alloca i32*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %9 = call %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan* %8)
  store %struct.altera_mbox* %9, %struct.altera_mbox** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load %struct.altera_mbox*, %struct.altera_mbox** %6, align 8
  %13 = icmp ne %struct.altera_mbox* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %14
  %21 = load %struct.altera_mbox*, %struct.altera_mbox** %6, align 8
  %22 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.altera_mbox*, %struct.altera_mbox** %6, align 8
  %27 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %68

32:                                               ; preds = %20
  %33 = load %struct.altera_mbox*, %struct.altera_mbox** %6, align 8
  %34 = call i64 @altera_mbox_full(%struct.altera_mbox* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %68

39:                                               ; preds = %32
  %40 = load %struct.altera_mbox*, %struct.altera_mbox** %6, align 8
  %41 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.altera_mbox*, %struct.altera_mbox** %6, align 8
  %46 = call i32 @altera_mbox_tx_intmask(%struct.altera_mbox* %45, i32 1)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* @MBOX_PTR, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.altera_mbox*, %struct.altera_mbox** %6, align 8
  %53 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MAILBOX_PTR_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel_relaxed(i32 %51, i64 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* @MBOX_CMD, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.altera_mbox*, %struct.altera_mbox** %6, align 8
  %63 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAILBOX_CMD_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i32 %61, i64 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %47, %36, %25, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @altera_mbox_full(%struct.altera_mbox*) #1

declare dso_local i32 @altera_mbox_tx_intmask(%struct.altera_mbox*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
