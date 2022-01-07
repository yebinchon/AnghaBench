; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_pmac.c_pmac_ide_do_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_pmac.c_pmac_ide_do_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i32, i32, i32)* }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@ppc_md = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PMAC_FTR_IDE_RESET = common dso_local global i32 0, align 4
@PMAC_FTR_IDE_ENABLE = common dso_local global i32 0, align 4
@KAUAI_FCR_UATA_RESET_N = common dso_local global i32 0, align 4
@KAUAI_FCR_UATA_ENABLE = common dso_local global i32 0, align 4
@IDE_WAKEUP_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @pmac_ide_do_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmac_ide_do_resume(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = call i32 @on_media_bay(%struct.TYPE_6__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %1
  %8 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ppc_md, i32 0, i32 0), align 8
  %9 = load i32, i32* @PMAC_FTR_IDE_RESET, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %8(i32 %9, i32 %12, i32 %15, i32 1)
  %17 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ppc_md, i32 0, i32 0), align 8
  %18 = load i32, i32* @PMAC_FTR_IDE_ENABLE, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %17(i32 %18, i32 %21, i32 %24, i32 1)
  %26 = call i32 @msleep(i32 10)
  %27 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ppc_md, i32 0, i32 0), align 8
  %28 = load i32, i32* @PMAC_FTR_IDE_RESET, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %27(i32 %28, i32 %31, i32 %34, i32 0)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %7
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @KAUAI_FCR_UATA_RESET_N, align 4
  %46 = load i32, i32* @KAUAI_FCR_UATA_ENABLE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @writel(i32 %50, i64 %53)
  br label %55

55:                                               ; preds = %40, %7
  %56 = load i32, i32* @IDE_WAKEUP_DELAY, align 4
  %57 = call i32 @jiffies_to_msecs(i32 %56)
  %58 = call i32 @msleep(i32 %57)
  br label %59

59:                                               ; preds = %55, %1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = call i32 @sanitize_timings(%struct.TYPE_6__* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @enable_irq(i32 %64)
  ret i32 0
}

declare dso_local i32 @on_media_bay(%struct.TYPE_6__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @sanitize_timings(%struct.TYPE_6__*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
