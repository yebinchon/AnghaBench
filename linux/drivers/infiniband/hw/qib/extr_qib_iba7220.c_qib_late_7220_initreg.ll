; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_late_7220_initreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_late_7220_initreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i64, i64, i64, i64 }

@kr_rcvhdrentsize = common dso_local global i32 0, align 4
@kr_rcvhdrsize = common dso_local global i32 0, align 4
@kr_rcvhdrcnt = common dso_local global i32 0, align 4
@kr_sendpioavailaddr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Catastrophic software error, SendPIOAvailAddr written as %lx, read back as %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sendctrl_observer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_late_7220_initreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_late_7220_initreg(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %6 = load i32, i32* @kr_rcvhdrentsize, align 4
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @qib_write_kreg(%struct.qib_devdata* %5, i32 %6, i64 %9)
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = load i32, i32* @kr_rcvhdrsize, align 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @qib_write_kreg(%struct.qib_devdata* %11, i32 %12, i64 %15)
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %18 = load i32, i32* @kr_rcvhdrcnt, align 4
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @qib_write_kreg(%struct.qib_devdata* %17, i32 %18, i64 %21)
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %24 = load i32, i32* @kr_sendpioavailaddr, align 4
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @qib_write_kreg(%struct.qib_devdata* %23, i32 %24, i64 %27)
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %30 = load i32, i32* @kr_sendpioavailaddr, align 4
  %31 = call i64 @qib_read_kreg64(%struct.qib_devdata* %29, i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %1
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @qib_dev_err(%struct.qib_devdata* %38, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %37, %1
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %48 = call i32 @qib_register_observer(%struct.qib_devdata* %47, i32* @sendctrl_observer)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i64, i64) #1

declare dso_local i32 @qib_register_observer(%struct.qib_devdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
