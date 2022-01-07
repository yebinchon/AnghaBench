; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_hid = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Requesting IRQ: %d\0A\00", align 1
@IRQF_TRIGGER_LOW = common dso_local global i64 0, align 8
@i2c_hid_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"Could not register for %s interrupt, irq = %d, ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @i2c_hid_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_hid_init_irq(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_hid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.i2c_hid* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.i2c_hid* %8, %struct.i2c_hid** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @irq_get_trigger_type(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* @IRQF_TRIGGER_LOW, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @i2c_hid_irq, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @IRQF_ONESHOT, align 8
  %29 = or i64 %27, %28
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.i2c_hid*, %struct.i2c_hid** %4, align 8
  %34 = call i32 @request_threaded_irq(i32 %25, i32* null, i32 %26, i64 %29, i32 %32, %struct.i2c_hid* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %22
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 2
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.i2c_hid* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i64, i32, %struct.i2c_hid*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
