; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_allocate_output_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_allocate_output_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_sc = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SIXAXIS_CONTROLLER = common dso_local global i32 0, align 4
@NAVIGATION_CONTROLLER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DUALSHOCK4_CONTROLLER_BT = common dso_local global i32 0, align 4
@DS4_OUTPUT_REPORT_0x11_SIZE = common dso_local global i32 0, align 4
@DUALSHOCK4_CONTROLLER_USB = common dso_local global i32 0, align 4
@DUALSHOCK4_DONGLE = common dso_local global i32 0, align 4
@DS4_OUTPUT_REPORT_0x05_SIZE = common dso_local global i32 0, align 4
@MOTION_CONTROLLER = common dso_local global i32 0, align 4
@MOTION_REPORT_0x02_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sony_sc*)* @sony_allocate_output_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_allocate_output_report(%struct.sony_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sony_sc*, align 8
  store %struct.sony_sc* %0, %struct.sony_sc** %3, align 8
  %4 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %5 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SIXAXIS_CONTROLLER, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %12 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NAVIGATION_CONTROLLER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10, %1
  %18 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %19 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kmalloc(i32* %21, i32 4, i32 %22)
  %24 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %25 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %83

26:                                               ; preds = %10
  %27 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %28 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DUALSHOCK4_CONTROLLER_BT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %35 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* @DS4_OUTPUT_REPORT_0x11_SIZE, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kmalloc(i32* %37, i32 %38, i32 %39)
  %41 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %42 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %82

43:                                               ; preds = %26
  %44 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %45 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DUALSHOCK4_CONTROLLER_USB, align 4
  %48 = load i32, i32* @DUALSHOCK4_DONGLE, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %54 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* @DS4_OUTPUT_REPORT_0x05_SIZE, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @devm_kmalloc(i32* %56, i32 %57, i32 %58)
  %60 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %61 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %81

62:                                               ; preds = %43
  %63 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %64 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MOTION_CONTROLLER, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %71 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* @MOTION_REPORT_0x02_SIZE, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @devm_kmalloc(i32* %73, i32 %74, i32 %75)
  %77 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %78 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %80

79:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %92

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %52
  br label %82

82:                                               ; preds = %81, %33
  br label %83

83:                                               ; preds = %82, %17
  %84 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %85 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %88, %79
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i8* @devm_kmalloc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
