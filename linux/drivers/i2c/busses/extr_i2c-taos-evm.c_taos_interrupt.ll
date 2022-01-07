; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.taos_data = type { i32, i8*, i64 }

@TAOS_BUFFER_SIZE = common dso_local global i32 0, align 4
@TAOS_STATE_IDLE = common dso_local global i8* null, align 8
@wq = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @taos_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taos_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.taos_data*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.taos_data* @serio_get_drvdata(%struct.serio* %8)
  store %struct.taos_data* %9, %struct.taos_data** %7, align 8
  %10 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %11 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %81 [
    i32 129, label %13
    i32 130, label %48
    i32 128, label %54
  ]

13:                                               ; preds = %3
  %14 = load i8, i8* %5, align 1
  %15 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %16 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %19 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 %14, i8* %22, align 1
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 58
  br i1 %25, label %34, label %26

26:                                               ; preds = %13
  %27 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %28 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @TAOS_BUFFER_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %26, %13
  %35 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %36 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %39 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** @TAOS_STATE_IDLE, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %45 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = call i32 @wake_up_interruptible(i32* @wq)
  br label %47

47:                                               ; preds = %34, %26
  br label %81

48:                                               ; preds = %3
  %49 = load i8*, i8** @TAOS_STATE_IDLE, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %52 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = call i32 @wake_up_interruptible(i32* @wq)
  br label %81

54:                                               ; preds = %3
  %55 = load i8, i8* %5, align 1
  %56 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %57 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %60 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 %55, i8* %63, align 1
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 93
  br i1 %66, label %67, label %80

67:                                               ; preds = %54
  %68 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %69 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %72 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** @TAOS_STATE_IDLE, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.taos_data*, %struct.taos_data** %7, align 8
  %78 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = call i32 @wake_up_interruptible(i32* @wq)
  br label %80

80:                                               ; preds = %67, %54
  br label %81

81:                                               ; preds = %3, %80, %48, %47
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %82
}

declare dso_local %struct.taos_data* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
