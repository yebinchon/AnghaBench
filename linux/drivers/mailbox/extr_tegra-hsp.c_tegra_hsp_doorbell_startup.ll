; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_doorbell_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_doorbell_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.TYPE_4__*, %struct.tegra_hsp_doorbell* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.tegra_hsp_doorbell = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tegra_hsp* }
%struct.tegra_hsp = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"invalid master ID %u for HSP channel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TEGRA_HSP_DB_MASTER_CCPLEX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@HSP_DB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @tegra_hsp_doorbell_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hsp_doorbell_startup(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.tegra_hsp_doorbell*, align 8
  %5 = alloca %struct.tegra_hsp*, align 8
  %6 = alloca %struct.tegra_hsp_doorbell*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %9 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %10 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %9, i32 0, i32 1
  %11 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %10, align 8
  store %struct.tegra_hsp_doorbell* %11, %struct.tegra_hsp_doorbell** %4, align 8
  %12 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.tegra_hsp*, %struct.tegra_hsp** %14, align 8
  store %struct.tegra_hsp* %15, %struct.tegra_hsp** %5, align 8
  %16 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %20 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %18, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %27 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %77

37:                                               ; preds = %1
  %38 = load %struct.tegra_hsp*, %struct.tegra_hsp** %5, align 8
  %39 = load i32, i32* @TEGRA_HSP_DB_MASTER_CCPLEX, align 4
  %40 = call %struct.tegra_hsp_doorbell* @tegra_hsp_doorbell_get(%struct.tegra_hsp* %38, i32 %39)
  store %struct.tegra_hsp_doorbell* %40, %struct.tegra_hsp_doorbell** %6, align 8
  %41 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %6, align 8
  %42 = icmp ne %struct.tegra_hsp_doorbell* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %77

46:                                               ; preds = %37
  %47 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %4, align 8
  %48 = call i32 @tegra_hsp_doorbell_can_ring(%struct.tegra_hsp_doorbell* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %77

53:                                               ; preds = %46
  %54 = load %struct.tegra_hsp*, %struct.tegra_hsp** %5, align 8
  %55 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %54, i32 0, i32 0
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %6, align 8
  %59 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %58, i32 0, i32 1
  %60 = load i32, i32* @HSP_DB_ENABLE, align 4
  %61 = call i32 @tegra_hsp_channel_readl(%struct.TYPE_5__* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %4, align 8
  %63 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @BIT(i64 %64)
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %6, align 8
  %69 = getelementptr inbounds %struct.tegra_hsp_doorbell, %struct.tegra_hsp_doorbell* %68, i32 0, i32 1
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @HSP_DB_ENABLE, align 4
  %72 = call i32 @tegra_hsp_channel_writel(%struct.TYPE_5__* %69, i32 %70, i32 %71)
  %73 = load %struct.tegra_hsp*, %struct.tegra_hsp** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %73, i32 0, i32 0
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %53, %50, %43, %25
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local %struct.tegra_hsp_doorbell* @tegra_hsp_doorbell_get(%struct.tegra_hsp*, i32) #1

declare dso_local i32 @tegra_hsp_doorbell_can_ring(%struct.tegra_hsp_doorbell*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tegra_hsp_channel_readl(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @tegra_hsp_channel_writel(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
