; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_dynapro.c_dynapro_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_dynapro.c_dynapro_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.dynapro = type { i8*, i64 }

@DYNAPRO_RESPONSE_BEGIN_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unknown/unsynchronized data: %x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @dynapro_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dynapro_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.dynapro*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.dynapro* @serio_get_drvdata(%struct.serio* %8)
  store %struct.dynapro* %9, %struct.dynapro** %7, align 8
  %10 = load i8, i8* %5, align 1
  %11 = load %struct.dynapro*, %struct.dynapro** %7, align 8
  %12 = getelementptr inbounds %struct.dynapro, %struct.dynapro* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.dynapro*, %struct.dynapro** %7, align 8
  %15 = getelementptr inbounds %struct.dynapro, %struct.dynapro* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8 %10, i8* %17, align 1
  %18 = load i32, i32* @DYNAPRO_RESPONSE_BEGIN_BYTE, align 4
  %19 = load %struct.dynapro*, %struct.dynapro** %7, align 8
  %20 = getelementptr inbounds %struct.dynapro, %struct.dynapro* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %18, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.dynapro*, %struct.dynapro** %7, align 8
  %29 = call i32 @dynapro_process_data(%struct.dynapro* %28)
  br label %40

30:                                               ; preds = %3
  %31 = load %struct.serio*, %struct.serio** %4, align 8
  %32 = getelementptr inbounds %struct.serio, %struct.serio* %31, i32 0, i32 0
  %33 = load %struct.dynapro*, %struct.dynapro** %7, align 8
  %34 = getelementptr inbounds %struct.dynapro, %struct.dynapro* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %30, %27
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local %struct.dynapro* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @dynapro_process_data(%struct.dynapro*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
