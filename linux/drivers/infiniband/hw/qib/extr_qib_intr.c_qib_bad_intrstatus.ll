; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_bad_intrstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_bad_intrstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 (%struct.qib_devdata*)*, i32, i32 (%struct.qib_devdata*, i32)* }

@qib_bad_intrstatus.allbits = internal global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Read of chip interrupt status failed disabling interrupts\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"2nd bad interrupt status, unregistering interrupts\0A\00", align 1
@QIB_BADINTR = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_bad_intrstatus(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %3 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %4 = call i32 @qib_dev_err(%struct.qib_devdata* %3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @qib_bad_intrstatus.allbits, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @qib_bad_intrstatus.allbits, align 4
  %7 = icmp ne i32 %5, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load i32, i32* @qib_bad_intrstatus.allbits, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 2
  %14 = load i32 (%struct.qib_devdata*, i32)*, i32 (%struct.qib_devdata*, i32)** %13, align 8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = call i32 %14(%struct.qib_devdata* %15, i32 0)
  br label %17

17:                                               ; preds = %11, %8
  %18 = load i32, i32* @qib_bad_intrstatus.allbits, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = call i32 @qib_dev_err(%struct.qib_devdata* %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @QIB_BADINTR, align 4
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @QIB_INITTED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 0
  %36 = load i32 (%struct.qib_devdata*)*, i32 (%struct.qib_devdata*)** %35, align 8
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %38 = call i32 %36(%struct.qib_devdata* %37)
  br label %39

39:                                               ; preds = %20, %17
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
