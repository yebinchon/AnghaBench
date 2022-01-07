; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_enable_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_enable_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i32, i32, i64, i32 }

@MCDE_CRA0 = common dso_local global i64 0, align 8
@MCDE_CRB0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"cannot enable FIFO %c\0A\00", align 1
@MCDE_CRX0_FLOEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde*, i32)* @mcde_enable_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_enable_fifo(%struct.mcde* %0, i32 %1) #0 {
  %3 = alloca %struct.mcde*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mcde* %0, %struct.mcde** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %12 [
    i32 129, label %8
    i32 128, label %10
  ]

8:                                                ; preds = %2
  %9 = load i64, i64* @MCDE_CRA0, align 8
  store i64 %9, i64* %6, align 8
  br label %20

10:                                               ; preds = %2
  %11 = load i64, i64* @MCDE_CRB0, align 8
  store i64 %11, i64* %6, align 8
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.mcde*, %struct.mcde** %3, align 8
  %14 = getelementptr inbounds %struct.mcde, %struct.mcde* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add i32 65, %16
  %18 = trunc i32 %17 to i8
  %19 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 signext %18)
  br label %47

20:                                               ; preds = %10, %8
  %21 = load %struct.mcde*, %struct.mcde** %3, align 8
  %22 = getelementptr inbounds %struct.mcde, %struct.mcde* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.mcde*, %struct.mcde** %3, align 8
  %25 = getelementptr inbounds %struct.mcde, %struct.mcde* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @readl(i64 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* @MCDE_CRX0_FLOEN, align 8
  %31 = load i64, i64* %5, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.mcde*, %struct.mcde** %3, align 8
  %35 = getelementptr inbounds %struct.mcde, %struct.mcde* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i64 %33, i64 %38)
  %40 = load %struct.mcde*, %struct.mcde** %3, align 8
  %41 = getelementptr inbounds %struct.mcde, %struct.mcde* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.mcde*, %struct.mcde** %3, align 8
  %45 = getelementptr inbounds %struct.mcde, %struct.mcde* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %20, %12
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i8 signext) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
