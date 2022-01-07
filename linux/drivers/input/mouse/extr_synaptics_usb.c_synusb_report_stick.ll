; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_usb.c_synusb_report_stick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_usb.c_synusb_report_stick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synusb = type { i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synusb*)* @synusb_report_stick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synusb_report_stick(%struct.synusb* %0) #0 {
  %2 = alloca %struct.synusb*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.synusb* %0, %struct.synusb** %2, align 8
  %7 = load %struct.synusb*, %struct.synusb** %2, align 8
  %8 = getelementptr inbounds %struct.synusb, %struct.synusb* %7, i32 0, i32 1
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %3, align 8
  %10 = load %struct.synusb*, %struct.synusb** %2, align 8
  %11 = getelementptr inbounds %struct.synusb, %struct.synusb* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 6
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.synusb*, %struct.synusb** %2, align 8
  %16 = getelementptr inbounds %struct.synusb, %struct.synusb* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = call i32 @be16_to_cpup(i32* %18)
  %20 = shl i32 %19, 3
  %21 = ashr i32 %20, 7
  store i32 %21, i32* %4, align 4
  %22 = load %struct.synusb*, %struct.synusb** %2, align 8
  %23 = getelementptr inbounds %struct.synusb, %struct.synusb* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = call i32 @be16_to_cpup(i32* %25)
  %27 = shl i32 %26, 3
  %28 = ashr i32 %27, 7
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %33 = load i32, i32* @REL_X, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @input_report_rel(%struct.input_dev* %32, i32 %33, i32 %34)
  %36 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %37 = load i32, i32* @REL_Y, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @input_report_rel(%struct.input_dev* %36, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %31, %1
  %42 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %43 = load i32, i32* @ABS_PRESSURE, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @input_report_abs(%struct.input_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.synusb*, %struct.synusb** %2, align 8
  %47 = call i32 @synusb_report_buttons(%struct.synusb* %46)
  %48 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %49 = call i32 @input_sync(%struct.input_dev* %48)
  ret void
}

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @synusb_report_buttons(%struct.synusb*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
