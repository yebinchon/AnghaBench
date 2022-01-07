; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_report_synaptics_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_report_synaptics_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.bcm5974_config = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tp_finger = type { i32, i32, i32 }

@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.bcm5974_config*, %struct.tp_finger*, i32)* @report_synaptics_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_synaptics_data(%struct.input_dev* %0, %struct.bcm5974_config* %1, %struct.tp_finger* %2, i32 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.bcm5974_config*, align 8
  %7 = alloca %struct.tp_finger*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.bcm5974_config* %1, %struct.bcm5974_config** %6, align 8
  store %struct.tp_finger* %2, %struct.tp_finger** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %4
  %16 = load %struct.tp_finger*, %struct.tp_finger** %7, align 8
  %17 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @raw2int(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.tp_finger*, %struct.tp_finger** %7, align 8
  %21 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @raw2int(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %15
  %27 = load %struct.tp_finger*, %struct.tp_finger** %7, align 8
  %28 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @raw2int(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 256, %33
  %35 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %36 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %34, %38
  %40 = call i32 @clamp_val(i32 %39, i32 0, i32 255)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 16, %41
  %43 = load %struct.bcm5974_config*, %struct.bcm5974_config** %6, align 8
  %44 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %42, %46
  %48 = call i32 @clamp_val(i32 %47, i32 0, i32 15)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %32, %26, %15
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = load i32, i32* @ABS_PRESSURE, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @input_report_abs(%struct.input_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @input_report_abs(%struct.input_dev* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @raw2int(i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
