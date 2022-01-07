; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_disable_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_disable_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i32, i32, i32, i64 }

@MCDE_CRA0 = common dso_local global i32 0, align 4
@MCDE_CRB0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot disable FIFO %c\0A\00", align 1
@MCDE_CRX0_FLOEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"FIFO timeout while clearing FIFO %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde*, i32, i32)* @mcde_disable_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_disable_fifo(%struct.mcde* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mcde*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mcde* %0, %struct.mcde** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 100, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %15 [
    i32 129, label %11
    i32 128, label %13
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @MCDE_CRA0, align 4
  store i32 %12, i32* %9, align 4
  br label %23

13:                                               ; preds = %3
  %14 = load i32, i32* @MCDE_CRB0, align 4
  store i32 %14, i32* %9, align 4
  br label %23

15:                                               ; preds = %3
  %16 = load %struct.mcde*, %struct.mcde** %4, align 8
  %17 = getelementptr inbounds %struct.mcde, %struct.mcde* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add i32 65, %19
  %21 = trunc i32 %20 to i8
  %22 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8 signext %21)
  br label %77

23:                                               ; preds = %13, %11
  %24 = load %struct.mcde*, %struct.mcde** %4, align 8
  %25 = getelementptr inbounds %struct.mcde, %struct.mcde* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.mcde*, %struct.mcde** %4, align 8
  %28 = getelementptr inbounds %struct.mcde, %struct.mcde* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @readl(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @MCDE_CRX0_FLOEN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mcde*, %struct.mcde** %4, align 8
  %39 = getelementptr inbounds %struct.mcde, %struct.mcde* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @writel(i32 %37, i32 %42)
  %44 = load %struct.mcde*, %struct.mcde** %4, align 8
  %45 = getelementptr inbounds %struct.mcde, %struct.mcde* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.mcde*, %struct.mcde** %4, align 8
  %47 = getelementptr inbounds %struct.mcde, %struct.mcde* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %23
  br label %77

52:                                               ; preds = %23
  br label %53

53:                                               ; preds = %76, %52
  %54 = load %struct.mcde*, %struct.mcde** %4, align 8
  %55 = getelementptr inbounds %struct.mcde, %struct.mcde* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @readl(i32 %58)
  %60 = load i32, i32* @MCDE_CRX0_FLOEN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %53
  %64 = call i32 @usleep_range(i32 1000, i32 1500)
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load %struct.mcde*, %struct.mcde** %4, align 8
  %70 = getelementptr inbounds %struct.mcde, %struct.mcde* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add i32 65, %72
  %74 = trunc i32 %73 to i8
  %75 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8 signext %74)
  br label %77

76:                                               ; preds = %63
  br label %53

77:                                               ; preds = %15, %51, %68, %53
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i8 signext) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
