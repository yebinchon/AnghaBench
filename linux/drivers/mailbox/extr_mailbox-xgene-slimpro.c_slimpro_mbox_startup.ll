; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-xgene-slimpro.c_slimpro_mbox_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-xgene-slimpro.c_slimpro_mbox_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.slimpro_mbox_chan* }
%struct.slimpro_mbox_chan = type { i64, i32, i32 }

@slimpro_mbox_irq = common dso_local global i32 0, align 4
@MBOX_CON_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to register mailbox interrupt %d\0A\00", align 1
@MBOX_STATUS_ACK_MASK = common dso_local global i32 0, align 4
@MBOX_STATUS_AVAIL_MASK = common dso_local global i32 0, align 4
@REG_DB_STAT = common dso_local global i64 0, align 8
@REG_DB_STATMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @slimpro_mbox_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slimpro_mbox_startup(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.slimpro_mbox_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %7 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %8 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %7, i32 0, i32 0
  %9 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %8, align 8
  store %struct.slimpro_mbox_chan* %9, %struct.slimpro_mbox_chan** %4, align 8
  %10 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %4, align 8
  %11 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %4, align 8
  %14 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @slimpro_mbox_irq, align 4
  %17 = load i32, i32* @MBOX_CON_NAME, align 4
  %18 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %4, align 8
  %19 = call i32 @devm_request_irq(i32 %12, i32 %15, i32 %16, i32 0, i32 %17, %struct.slimpro_mbox_chan* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %4, align 8
  %25 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %4, align 8
  %28 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %61

32:                                               ; preds = %1
  %33 = load i32, i32* @MBOX_STATUS_ACK_MASK, align 4
  %34 = load i32, i32* @MBOX_STATUS_AVAIL_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %4, align 8
  %37 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @REG_DB_STAT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %4, align 8
  %43 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REG_DB_STATMASK, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @MBOX_STATUS_ACK_MASK, align 4
  %49 = load i32, i32* @MBOX_STATUS_AVAIL_MASK, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %4, align 8
  %56 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @REG_DB_STATMASK, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %32, %23
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.slimpro_mbox_chan*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
