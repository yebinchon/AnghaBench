; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_do_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_do_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_i2c = type { i32, i32, i32, i32, i64, i64, %struct.i2c_msg*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"i2c_pxa: timeout waiting for bus free\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"i2c_pxa_set_master: error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"i2c_pxa_send_mastercode timeout\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@I2C_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_i2c*, %struct.i2c_msg*, i32)* @i2c_pxa_do_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_do_xfer(%struct.pxa_i2c* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.pxa_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pxa_i2c* %0, %struct.pxa_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %10 = call i32 @i2c_pxa_wait_bus_not_busy(%struct.pxa_i2c* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %15 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %94

18:                                               ; preds = %3
  %19 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %20 = call i32 @i2c_pxa_set_master(%struct.pxa_i2c* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %25 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %94

29:                                               ; preds = %18
  %30 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %31 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %36 = call i32 @i2c_pxa_send_mastercode(%struct.pxa_i2c* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %41 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %94

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %47 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %46, i32 0, i32 3
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %50 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %51 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %50, i32 0, i32 6
  store %struct.i2c_msg* %49, %struct.i2c_msg** %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %54 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %56 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %58 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %60 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %62 = call i32 @i2c_pxa_start_message(%struct.pxa_i2c* %61)
  %63 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %64 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %63, i32 0, i32 3
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %67 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %70 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* @HZ, align 4
  %75 = mul nsw i32 %74, 5
  %76 = call i64 @wait_event_timeout(i32 %68, i32 %73, i32 %75)
  store i64 %76, i64* %7, align 8
  %77 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %78 = call i32 @i2c_pxa_stop_message(%struct.pxa_i2c* %77)
  %79 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %80 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %8, align 4
  %82 = load i64, i64* %7, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %45
  %85 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %86 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.pxa_i2c*, %struct.pxa_i2c** %4, align 8
  %91 = call i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* @I2C_RETRY, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %89, %84, %45
  br label %94

94:                                               ; preds = %93, %39, %23, %13
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32 @i2c_pxa_wait_bus_not_busy(%struct.pxa_i2c*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_pxa_set_master(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_send_mastercode(%struct.pxa_i2c*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @i2c_pxa_start_message(%struct.pxa_i2c*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @i2c_pxa_stop_message(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
