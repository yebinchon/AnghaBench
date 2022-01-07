; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_jornada720_kbd.c_jornada720_kbd_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_jornada720_kbd.c_jornada720_kbd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.jornadakbd = type { i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@GETSCANKEYCODE = common dso_local global i32 0, align 4
@TXDUMMY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"GetKeycode command failed with ETIMEDOUT, flushed bus\0A\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @jornada720_kbd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada720_kbd_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.jornadakbd*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.platform_device*
  store %struct.platform_device* %12, %struct.platform_device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = call %struct.jornadakbd* @platform_get_drvdata(%struct.platform_device* %13)
  store %struct.jornadakbd* %14, %struct.jornadakbd** %6, align 8
  %15 = load %struct.jornadakbd*, %struct.jornadakbd** %6, align 8
  %16 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %15, i32 0, i32 1
  %17 = load %struct.input_dev*, %struct.input_dev** %16, align 8
  store %struct.input_dev* %17, %struct.input_dev** %7, align 8
  %18 = call i32 (...) @jornada_ssp_start()
  %19 = load i32, i32* @GETSCANKEYCODE, align 4
  %20 = call i64 @jornada_ssp_inout(i32 %19)
  %21 = load i64, i64* @TXDUMMY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %61

27:                                               ; preds = %2
  %28 = load i64, i64* @TXDUMMY, align 8
  %29 = call i32 @jornada_ssp_byte(i64 %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %34, %27
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i64, i64* @TXDUMMY, align 8
  %36 = call i32 @jornada_ssp_byte(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 127
  store i32 %38, i32* %10, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %40 = load i32, i32* @EV_MSC, align 4
  %41 = load i32, i32* @MSC_SCAN, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @input_event(%struct.input_dev* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %45 = load %struct.jornadakbd*, %struct.jornadakbd** %6, align 8
  %46 = getelementptr inbounds %struct.jornadakbd, %struct.jornadakbd* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @input_report_key(%struct.input_dev* %44, i32 %51, i32 %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %59 = call i32 @input_sync(%struct.input_dev* %58)
  br label %30

60:                                               ; preds = %30
  br label %61

61:                                               ; preds = %60, %23
  %62 = call i32 (...) @jornada_ssp_end()
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %63
}

declare dso_local %struct.jornadakbd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @jornada_ssp_start(...) #1

declare dso_local i64 @jornada_ssp_inout(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @jornada_ssp_byte(i64) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @jornada_ssp_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
