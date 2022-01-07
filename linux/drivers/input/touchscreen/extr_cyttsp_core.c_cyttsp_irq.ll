; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CY_BL_STATE = common dso_local global i64 0, align 8
@CY_REG_BASE = common dso_local global i32 0, align 4
@CY_IDLE_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Could not return to operational mode, err: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cyttsp_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyttsp_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cyttsp*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.cyttsp*
  store %struct.cyttsp* %8, %struct.cyttsp** %5, align 8
  %9 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %10 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CY_BL_STATE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %19 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %18, i32 0, i32 3
  %20 = call i32 @complete(i32* %19)
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %23 = load i32, i32* @CY_REG_BASE, align 4
  %24 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %25 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %24, i32 0, i32 2
  %26 = call i32 @ttsp_read_block_data(%struct.cyttsp* %22, i32 %23, i32 4, %struct.TYPE_2__* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %72

30:                                               ; preds = %21
  %31 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %32 = call i32 @cyttsp_handshake(%struct.cyttsp* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %72

36:                                               ; preds = %30
  %37 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %38 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CY_IDLE_STATE, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %72

46:                                               ; preds = %36
  %47 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %48 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @GET_BOOTLOADERMODE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %55 = call i32 @cyttsp_exit_bl_mode(%struct.cyttsp* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %60 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* @CY_IDLE_STATE, align 8
  %65 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %66 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %58, %53
  br label %71

68:                                               ; preds = %46
  %69 = load %struct.cyttsp*, %struct.cyttsp** %5, align 8
  %70 = call i32 @cyttsp_report_tchdata(%struct.cyttsp* %69)
  br label %71

71:                                               ; preds = %68, %67
  br label %72

72:                                               ; preds = %71, %45, %35, %29, %17
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %73
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @ttsp_read_block_data(%struct.cyttsp*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @cyttsp_handshake(%struct.cyttsp*) #1

declare dso_local i64 @GET_BOOTLOADERMODE(i32) #1

declare dso_local i32 @cyttsp_exit_bl_mode(%struct.cyttsp*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cyttsp_report_tchdata(%struct.cyttsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
