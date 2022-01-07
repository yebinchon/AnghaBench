; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm831x-status.c_wm831x_status_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x_status = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i64 }

@WM831X_LED_SRC_MASK = common dso_local global i32 0, align 4
@WM831X_LED_MODE_MASK = common dso_local global i32 0, align 4
@WM831X_LED_DUTY_CYC_MASK = common dso_local global i32 0, align 4
@WM831X_LED_DUR_MASK = common dso_local global i32 0, align 4
@WM831X_LED_SRC_SHIFT = common dso_local global i32 0, align 4
@WM831X_LED_MODE_SHIFT = common dso_local global i32 0, align 4
@WM831X_LED_DUR_SHIFT = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm831x_status*)* @wm831x_status_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm831x_status_set(%struct.wm831x_status* %0) #0 {
  %2 = alloca %struct.wm831x_status*, align 8
  %3 = alloca i64, align 8
  store %struct.wm831x_status* %0, %struct.wm831x_status** %2, align 8
  %4 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %5 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %4, i32 0, i32 5
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load i32, i32* @WM831X_LED_SRC_MASK, align 4
  %8 = load i32, i32* @WM831X_LED_MODE_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @WM831X_LED_DUTY_CYC_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @WM831X_LED_DUR_MASK, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %16 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %20 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %19, i32 0, i32 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %24 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WM831X_LED_SRC_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %29 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %33 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %1
  %37 = load i32, i32* @WM831X_LED_MODE_SHIFT, align 4
  %38 = shl i32 2, %37
  %39 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %40 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %44 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @WM831X_LED_DUR_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %49 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %53 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %56 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %73

59:                                               ; preds = %1
  %60 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %61 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LED_OFF, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @WM831X_LED_MODE_SHIFT, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %69 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %59
  br label %73

73:                                               ; preds = %72, %36
  %74 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %75 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %74, i32 0, i32 8
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %79 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %82 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %85 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @wm831x_reg_write(i32 %80, i32 %83, i32 %86)
  %88 = load %struct.wm831x_status*, %struct.wm831x_status** %2, align 8
  %89 = getelementptr inbounds %struct.wm831x_status, %struct.wm831x_status* %88, i32 0, i32 5
  %90 = call i32 @mutex_unlock(i32* %89)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wm831x_reg_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
