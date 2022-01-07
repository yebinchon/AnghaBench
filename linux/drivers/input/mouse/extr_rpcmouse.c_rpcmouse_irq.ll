; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_rpcmouse.c_rpcmouse_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_rpcmouse.c_rpcmouse_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@IOMD_MOUSEX = common dso_local global i32 0, align 4
@IOMD_MOUSEY = common dso_local global i32 0, align 4
@rpcmouse_lastx = common dso_local global i16 0, align 2
@rpcmouse_lasty = common dso_local global i16 0, align 2
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rpcmouse_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcmouse_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.input_dev*
  store %struct.input_dev* %12, %struct.input_dev** %5, align 8
  %13 = load i32, i32* @IOMD_MOUSEX, align 4
  %14 = call i64 @iomd_readl(i32 %13)
  %15 = trunc i64 %14 to i16
  store i16 %15, i16* %6, align 2
  %16 = load i32, i32* @IOMD_MOUSEY, align 4
  %17 = call i64 @iomd_readl(i32 %16)
  %18 = trunc i64 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = call i32 @IOMEM(i32 -533659648)
  %20 = call i32 @__raw_readl(i32 %19)
  %21 = xor i32 %20, 112
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %10, align 2
  %23 = load i16, i16* %6, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @rpcmouse_lastx, align 2
  %26 = sext i16 %25 to i32
  %27 = sub nsw i32 %24, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %8, align 2
  %29 = load i16, i16* %7, align 2
  %30 = sext i16 %29 to i32
  %31 = load i16, i16* @rpcmouse_lasty, align 2
  %32 = sext i16 %31 to i32
  %33 = sub nsw i32 %30, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %9, align 2
  %35 = load i16, i16* %6, align 2
  store i16 %35, i16* @rpcmouse_lastx, align 2
  %36 = load i16, i16* %7, align 2
  store i16 %36, i16* @rpcmouse_lasty, align 2
  %37 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %38 = load i32, i32* @REL_X, align 4
  %39 = load i16, i16* %8, align 2
  %40 = call i32 @input_report_rel(%struct.input_dev* %37, i32 %38, i16 signext %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = load i32, i32* @REL_Y, align 4
  %43 = load i16, i16* %9, align 2
  %44 = sext i16 %43 to i32
  %45 = sub nsw i32 0, %44
  %46 = trunc i32 %45 to i16
  %47 = call i32 @input_report_rel(%struct.input_dev* %41, i32 %42, i16 signext %46)
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = load i32, i32* @BTN_LEFT, align 4
  %50 = load i16, i16* %10, align 2
  %51 = sext i16 %50 to i32
  %52 = and i32 %51, 64
  %53 = trunc i32 %52 to i16
  %54 = call i32 @input_report_key(%struct.input_dev* %48, i32 %49, i16 signext %53)
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = load i32, i32* @BTN_MIDDLE, align 4
  %57 = load i16, i16* %10, align 2
  %58 = sext i16 %57 to i32
  %59 = and i32 %58, 32
  %60 = trunc i32 %59 to i16
  %61 = call i32 @input_report_key(%struct.input_dev* %55, i32 %56, i16 signext %60)
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = load i32, i32* @BTN_RIGHT, align 4
  %64 = load i16, i16* %10, align 2
  %65 = sext i16 %64 to i32
  %66 = and i32 %65, 16
  %67 = trunc i32 %66 to i16
  %68 = call i32 @input_report_key(%struct.input_dev* %62, i32 %63, i16 signext %67)
  %69 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %70 = call i32 @input_sync(%struct.input_dev* %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %71
}

declare dso_local i64 @iomd_readl(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @IOMEM(i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i16 signext) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i16 signext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
