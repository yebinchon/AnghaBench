; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_bcm-keypad.c_bcm_kp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_bcm-keypad.c_bcm_kp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kp = type { i64, i64 }

@KPCR_OFFSET = common dso_local global i64 0, align 8
@KPCR_ENABLE = common dso_local global i32 0, align 4
@KPIMR0_OFFSET = common dso_local global i64 0, align 8
@KPIMR1_OFFSET = common dso_local global i64 0, align 8
@KPICR0_OFFSET = common dso_local global i64 0, align 8
@KPICR1_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_kp*)* @bcm_kp_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_kp_stop(%struct.bcm_kp* %0) #0 {
  %2 = alloca %struct.bcm_kp*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm_kp* %0, %struct.bcm_kp** %2, align 8
  %4 = load %struct.bcm_kp*, %struct.bcm_kp** %2, align 8
  %5 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @KPCR_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @KPCR_ENABLE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.bcm_kp*, %struct.bcm_kp** %2, align 8
  %15 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KPCR_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 0, i64 %18)
  %20 = load %struct.bcm_kp*, %struct.bcm_kp** %2, align 8
  %21 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KPIMR0_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load %struct.bcm_kp*, %struct.bcm_kp** %2, align 8
  %27 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KPIMR1_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  %32 = load %struct.bcm_kp*, %struct.bcm_kp** %2, align 8
  %33 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @KPICR0_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 -1, i64 %36)
  %38 = load %struct.bcm_kp*, %struct.bcm_kp** %2, align 8
  %39 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KPICR1_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 -1, i64 %42)
  %44 = load %struct.bcm_kp*, %struct.bcm_kp** %2, align 8
  %45 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %1
  %49 = load %struct.bcm_kp*, %struct.bcm_kp** %2, align 8
  %50 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @clk_disable_unprepare(i64 %51)
  br label %53

53:                                               ; preds = %48, %1
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
