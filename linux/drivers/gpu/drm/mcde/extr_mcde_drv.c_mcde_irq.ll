; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_drv.c_mcde_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_drv.c_mcde_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i64, i32 }

@MCDE_MISERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"some error IRQ\0A\00", align 1
@MCDE_RISERR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcde_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcde_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mcde*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mcde*
  store %struct.mcde* %8, %struct.mcde** %5, align 8
  %9 = load %struct.mcde*, %struct.mcde** %5, align 8
  %10 = getelementptr inbounds %struct.mcde, %struct.mcde* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MCDE_MISERR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @readl(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.mcde*, %struct.mcde** %5, align 8
  %16 = call i32 @mcde_display_irq(%struct.mcde* %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.mcde*, %struct.mcde** %5, align 8
  %21 = getelementptr inbounds %struct.mcde, %struct.mcde* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.mcde*, %struct.mcde** %5, align 8
  %27 = getelementptr inbounds %struct.mcde, %struct.mcde* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MCDE_RISERR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i64 %25, i64 %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %32
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @mcde_display_irq(%struct.mcde*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
