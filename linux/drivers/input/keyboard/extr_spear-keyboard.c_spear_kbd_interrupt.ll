; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_spear-keyboard.c_spear_kbd_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_spear-keyboard.c_spear_kbd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_kbd = type { i32, i32*, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@STATUS_REG = common dso_local global i64 0, align 8
@STATUS_DATA_AVAIL = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@DATA_REG = common dso_local global i64 0, align 8
@DATA_ROW_MASK = common dso_local global i64 0, align 8
@DATA_COLUMN_MASK = common dso_local global i64 0, align 8
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spear_kbd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_kbd_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spear_kbd*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.spear_kbd*
  store %struct.spear_kbd* %12, %struct.spear_kbd** %6, align 8
  %13 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %14 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %13, i32 0, i32 3
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %7, align 8
  %16 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %17 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @STATUS_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @readl_relaxed(i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @STATUS_DATA_AVAIL, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %80

28:                                               ; preds = %2
  %29 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %30 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @KEY_RESERVED, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %36 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %37 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @input_report_key(%struct.input_dev* %35, i32 %38, i32 0)
  %40 = load i32, i32* @KEY_RESERVED, align 4
  %41 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %42 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %34, %28
  %44 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %45 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DATA_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i64 @readl_relaxed(i64 %48)
  %50 = load i64, i64* @DATA_ROW_MASK, align 8
  %51 = load i64, i64* @DATA_COLUMN_MASK, align 8
  %52 = or i64 %50, %51
  %53 = and i64 %49, %52
  store i64 %53, i64* %10, align 8
  %54 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %55 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = load i32, i32* @EV_MSC, align 4
  %62 = load i32, i32* @MSC_SCAN, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @input_event(%struct.input_dev* %60, i32 %61, i32 %62, i64 %63)
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @input_report_key(%struct.input_dev* %65, i32 %66, i32 1)
  %68 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %69 = call i32 @input_sync(%struct.input_dev* %68)
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %72 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.spear_kbd*, %struct.spear_kbd** %6, align 8
  %74 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @STATUS_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel_relaxed(i32 0, i64 %77)
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %43, %26
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i64) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
