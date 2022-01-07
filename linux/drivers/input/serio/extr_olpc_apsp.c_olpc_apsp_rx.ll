; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_olpc_apsp.c_olpc_apsp_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_olpc_apsp.c_olpc_apsp_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.olpc_apsp = type { i32, i64, %struct.serio*, %struct.serio* }
%struct.serio = type { i32 }

@PJ_RST_INTERRUPT = common dso_local global i64 0, align 8
@SP_COMMAND_COMPLETE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"spurious interrupt?\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@COMMAND_RETURN_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"olpc_apsp_rx %x\0A\00", align 1
@PORT_SHIFT = common dso_local global i64 0, align 8
@KEYBOARD_PORT = common dso_local global i64 0, align 8
@DATA_MASK = common dso_local global i32 0, align 4
@PORT_MASK = common dso_local global i32 0, align 4
@SECURE_PROCESSOR_COMMAND = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @olpc_apsp_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_apsp_rx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.olpc_apsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.serio*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.olpc_apsp*
  store %struct.olpc_apsp* %11, %struct.olpc_apsp** %6, align 8
  %12 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %13 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PJ_RST_INTERRUPT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SP_COMMAND_COMPLETE_RESET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %24 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %82

28:                                               ; preds = %2
  %29 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %30 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @COMMAND_RETURN_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %36 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* @PORT_SHIFT, align 8
  %42 = trunc i64 %41 to i32
  %43 = lshr i32 %40, %42
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* @KEYBOARD_PORT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %49 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %48, i32 0, i32 3
  %50 = load %struct.serio*, %struct.serio** %49, align 8
  store %struct.serio* %50, %struct.serio** %9, align 8
  br label %55

51:                                               ; preds = %28
  %52 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %53 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %52, i32 0, i32 2
  %54 = load %struct.serio*, %struct.serio** %53, align 8
  store %struct.serio* %54, %struct.serio** %9, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.serio*, %struct.serio** %9, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @DATA_MASK, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @serio_interrupt(%struct.serio* %56, i32 %59, i32 0)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @SP_COMMAND_COMPLETE_RESET, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %65 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PJ_RST_INTERRUPT, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load i32, i32* @PORT_MASK, align 4
  %71 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %72 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SECURE_PROCESSOR_COMMAND, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.olpc_apsp*, %struct.olpc_apsp** %6, align 8
  %78 = getelementptr inbounds %struct.olpc_apsp, %struct.olpc_apsp* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pm_wakeup_event(i32 %79, i32 1000)
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %55, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @serio_interrupt(%struct.serio*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
