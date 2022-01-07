; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_mailbox_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_mailbox_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.tegra_hsp_mailbox* }
%struct.tegra_hsp_mailbox = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.tegra_hsp* }
%struct.tegra_hsp = type { i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@HSP_SM_SHRD_MBOX_FULL = common dso_local global i32 0, align 4
@HSP_SM_SHRD_MBOX = common dso_local global i32 0, align 4
@HSP_INT_EMPTY_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i8*)* @tegra_hsp_mailbox_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hsp_mailbox_send_data(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tegra_hsp_mailbox*, align 8
  %7 = alloca %struct.tegra_hsp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %11 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %10, i32 0, i32 0
  %12 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %11, align 8
  store %struct.tegra_hsp_mailbox* %12, %struct.tegra_hsp_mailbox** %6, align 8
  %13 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %6, align 8
  %14 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.tegra_hsp*, %struct.tegra_hsp** %15, align 8
  store %struct.tegra_hsp* %16, %struct.tegra_hsp** %7, align 8
  %17 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @HSP_SM_SHRD_MBOX_FULL, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %35, i32 0, i32 1
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @HSP_SM_SHRD_MBOX, align 4
  %39 = call i32 @tegra_hsp_channel_writel(%struct.TYPE_2__* %36, i32 %37, i32 %38)
  %40 = load %struct.tegra_hsp*, %struct.tegra_hsp** %7, align 8
  %41 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i64, i64* @HSP_INT_EMPTY_SHIFT, align 8
  %45 = load %struct.tegra_hsp_mailbox*, %struct.tegra_hsp_mailbox** %6, align 8
  %46 = getelementptr inbounds %struct.tegra_hsp_mailbox, %struct.tegra_hsp_mailbox* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call i32 @BIT(i64 %48)
  %50 = load %struct.tegra_hsp*, %struct.tegra_hsp** %7, align 8
  %51 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.tegra_hsp*, %struct.tegra_hsp** %7, align 8
  %55 = load %struct.tegra_hsp*, %struct.tegra_hsp** %7, align 8
  %56 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tegra_hsp*, %struct.tegra_hsp** %7, align 8
  %59 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @HSP_INT_IE(i32 %60)
  %62 = call i32 @tegra_hsp_writel(%struct.tegra_hsp* %54, i32 %57, i32 %61)
  %63 = load %struct.tegra_hsp*, %struct.tegra_hsp** %7, align 8
  %64 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %63, i32 0, i32 0
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %28, %25
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tegra_hsp_channel_writel(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @tegra_hsp_writel(%struct.tegra_hsp*, i32, i32) #1

declare dso_local i32 @HSP_INT_IE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
