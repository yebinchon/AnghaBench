; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_egalax_ts_serial.c_egalax_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_egalax_ts_serial.c_egalax_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.egalax = type { i8*, i32 }

@EGALAX_FORMAT_START_BIT = common dso_local global i32 0, align 4
@EGALAX_FORMAT_PRESSURE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unknown/unsynchronized data: %x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @egalax_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @egalax_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.egalax*, align 8
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load %struct.serio*, %struct.serio** %4, align 8
  %10 = call %struct.egalax* @serio_get_drvdata(%struct.serio* %9)
  store %struct.egalax* %10, %struct.egalax** %7, align 8
  %11 = load i8, i8* %5, align 1
  %12 = load %struct.egalax*, %struct.egalax** %7, align 8
  %13 = getelementptr inbounds %struct.egalax, %struct.egalax* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.egalax*, %struct.egalax** %7, align 8
  %16 = getelementptr inbounds %struct.egalax, %struct.egalax* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %14, i64 %19
  store i8 %11, i8* %20, align 1
  %21 = load %struct.egalax*, %struct.egalax** %7, align 8
  %22 = getelementptr inbounds %struct.egalax, %struct.egalax* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, i32* @EGALAX_FORMAT_START_BIT, align 4
  %28 = and i32 %26, %27
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %3
  %32 = load %struct.egalax*, %struct.egalax** %7, align 8
  %33 = getelementptr inbounds %struct.egalax, %struct.egalax* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* @EGALAX_FORMAT_PRESSURE_BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 6, i32 5
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.egalax*, %struct.egalax** %7, align 8
  %45 = getelementptr inbounds %struct.egalax, %struct.egalax* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %31
  %49 = load %struct.egalax*, %struct.egalax** %7, align 8
  %50 = call i32 @egalax_process_data(%struct.egalax* %49)
  %51 = load %struct.egalax*, %struct.egalax** %7, align 8
  %52 = getelementptr inbounds %struct.egalax, %struct.egalax* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %48, %31
  br label %66

54:                                               ; preds = %3
  %55 = load %struct.serio*, %struct.serio** %4, align 8
  %56 = getelementptr inbounds %struct.serio, %struct.serio* %55, i32 0, i32 0
  %57 = load %struct.egalax*, %struct.egalax** %7, align 8
  %58 = getelementptr inbounds %struct.egalax, %struct.egalax* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.egalax*, %struct.egalax** %7, align 8
  %65 = getelementptr inbounds %struct.egalax, %struct.egalax* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %54, %53
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %67
}

declare dso_local %struct.egalax* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @egalax_process_data(%struct.egalax*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
