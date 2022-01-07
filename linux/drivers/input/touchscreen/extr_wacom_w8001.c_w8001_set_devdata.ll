; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_set_devdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_set_devdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_3__, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.w8001 = type { i32, i32 }
%struct.serio = type { i32 }

@BUS_RS232 = common dso_local global i32 0, align 4
@w8001_open = common dso_local global i32 0, align 4
@w8001_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.w8001*, %struct.serio*)* @w8001_set_devdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w8001_set_devdata(%struct.input_dev* %0, %struct.w8001* %1, %struct.serio* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.w8001*, align 8
  %6 = alloca %struct.serio*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.w8001* %1, %struct.w8001** %5, align 8
  store %struct.serio* %2, %struct.serio** %6, align 8
  %7 = load %struct.w8001*, %struct.w8001** %5, align 8
  %8 = getelementptr inbounds %struct.w8001, %struct.w8001* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @BUS_RS232, align 4
  %13 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 4
  %16 = load %struct.w8001*, %struct.w8001** %5, align 8
  %17 = getelementptr inbounds %struct.w8001, %struct.w8001* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 1386, i32* %24, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 256, i32* %27, align 4
  %28 = load i32, i32* @w8001_open, align 4
  %29 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @w8001_close, align 4
  %32 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.serio*, %struct.serio** %6, align 8
  %35 = getelementptr inbounds %struct.serio, %struct.serio* %34, i32 0, i32 0
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = load %struct.w8001*, %struct.w8001** %5, align 8
  %41 = call i32 @input_set_drvdata(%struct.input_dev* %39, %struct.w8001* %40)
  ret void
}

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.w8001*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
