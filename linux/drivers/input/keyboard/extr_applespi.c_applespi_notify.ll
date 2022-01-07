; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ET_RD_IRQ = common dso_local global i32 0, align 4
@PT_READ = common dso_local global i32 0, align 4
@applespi_async_read_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error queueing async read to device: %d\0A\00", align 1
@ACPI_INTERRUPT_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @applespi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applespi_notify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.applespi_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.applespi_data*
  store %struct.applespi_data* %11, %struct.applespi_data** %7, align 8
  %12 = load i32, i32* @ET_RD_IRQ, align 4
  %13 = load i32, i32* @PT_READ, align 4
  %14 = call i32 @trace_applespi_irq_received(i32 %12, i32 %13)
  %15 = load %struct.applespi_data*, %struct.applespi_data** %7, align 8
  %16 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %15, i32 0, i32 1
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.applespi_data*, %struct.applespi_data** %7, align 8
  %20 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %3
  %24 = load %struct.applespi_data*, %struct.applespi_data** %7, align 8
  %25 = load %struct.applespi_data*, %struct.applespi_data** %7, align 8
  %26 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %25, i32 0, i32 3
  %27 = load i32, i32* @applespi_async_read_complete, align 4
  %28 = call i32 @applespi_async(%struct.applespi_data* %24, i32* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.applespi_data*, %struct.applespi_data** %7, align 8
  %33 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %41

38:                                               ; preds = %23
  %39 = load %struct.applespi_data*, %struct.applespi_data** %7, align 8
  %40 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.applespi_data*, %struct.applespi_data** %7, align 8
  %44 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %43, i32 0, i32 1
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* @ACPI_INTERRUPT_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @trace_applespi_irq_received(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @applespi_async(%struct.applespi_data*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
