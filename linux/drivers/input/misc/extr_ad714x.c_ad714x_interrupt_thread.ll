; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_interrupt_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_interrupt_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32, %struct.TYPE_2__*, i32, i32 (%struct.ad714x_chip*, i32, i32*, i32)* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@STG_LOW_INT_STA_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ad714x_interrupt_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad714x_interrupt_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ad714x_chip*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ad714x_chip*
  store %struct.ad714x_chip* %8, %struct.ad714x_chip** %5, align 8
  %9 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %10 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %13 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %12, i32 0, i32 3
  %14 = load i32 (%struct.ad714x_chip*, i32, i32*, i32)*, i32 (%struct.ad714x_chip*, i32, i32*, i32)** %13, align 8
  %15 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %16 = load i32, i32* @STG_LOW_INT_STA_REG, align 4
  %17 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %18 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %17, i32 0, i32 2
  %19 = call i32 %14(%struct.ad714x_chip* %15, i32 %16, i32* %18, i32 3)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %32, %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %23 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ad714x_button_state_machine(%struct.ad714x_chip* %29, i32 %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %20

35:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %39 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ad714x_slider_state_machine(%struct.ad714x_chip* %45, i32 %46)
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %36

51:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %55 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ad714x_wheel_state_machine(%struct.ad714x_chip* %61, i32 %62)
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %52

67:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %80, %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %71 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ad714x_touchpad_state_machine(%struct.ad714x_chip* %77, i32 %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %68

83:                                               ; preds = %68
  %84 = load %struct.ad714x_chip*, %struct.ad714x_chip** %5, align 8
  %85 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad714x_button_state_machine(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @ad714x_slider_state_machine(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @ad714x_wheel_state_machine(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @ad714x_touchpad_state_machine(%struct.ad714x_chip*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
