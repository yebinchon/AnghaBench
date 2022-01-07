; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_input_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_input_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, %struct.hid_driver*, %struct.hid_report_enum* }
%struct.hid_driver = type { i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)* }
%struct.hid_device.0 = type opaque
%struct.hid_report = type { i32 }
%struct.hid_report_enum = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"empty report\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_input_report(%struct.hid_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hid_report_enum*, align 8
  %13 = alloca %struct.hid_driver*, align 8
  %14 = alloca %struct.hid_report*, align 8
  %15 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %17 = icmp ne %struct.hid_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %108

21:                                               ; preds = %5
  %22 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 0
  %24 = call i64 @down_trylock(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %108

29:                                               ; preds = %21
  %30 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %30, i32 0, i32 2
  %32 = load %struct.hid_driver*, %struct.hid_driver** %31, align 8
  %33 = icmp ne %struct.hid_driver* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  br label %103

37:                                               ; preds = %29
  %38 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 3
  %40 = load %struct.hid_report_enum*, %struct.hid_report_enum** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %40, i64 %42
  store %struct.hid_report_enum* %43, %struct.hid_report_enum** %12, align 8
  %44 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %44, i32 0, i32 2
  %46 = load %struct.hid_driver*, %struct.hid_driver** %45, align 8
  store %struct.hid_driver* %46, %struct.hid_driver** %13, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %37
  %50 = call i32 @dbg_hid(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %15, align 4
  br label %103

51:                                               ; preds = %37
  %52 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %53 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %52, i32 0, i32 1
  %54 = call i32 @list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @hid_dump_report(%struct.hid_device* %57, i32 %58, i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.hid_report_enum*, %struct.hid_report_enum** %12, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call %struct.hid_report* @hid_get_report(%struct.hid_report_enum* %63, i32* %64)
  store %struct.hid_report* %65, %struct.hid_report** %14, align 8
  %66 = load %struct.hid_report*, %struct.hid_report** %14, align 8
  %67 = icmp ne %struct.hid_report* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i32 -1, i32* %15, align 4
  br label %103

69:                                               ; preds = %62
  %70 = load %struct.hid_driver*, %struct.hid_driver** %13, align 8
  %71 = icmp ne %struct.hid_driver* %70, null
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load %struct.hid_driver*, %struct.hid_driver** %13, align 8
  %74 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %73, i32 0, i32 0
  %75 = load i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)*, i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)** %74, align 8
  %76 = icmp ne i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)* %75, null
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %79 = load %struct.hid_report*, %struct.hid_report** %14, align 8
  %80 = call i64 @hid_match_report(%struct.hid_device* %78, %struct.hid_report* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.hid_driver*, %struct.hid_driver** %13, align 8
  %84 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %83, i32 0, i32 0
  %85 = load i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)*, i32 (%struct.hid_device.0*, %struct.hid_report*, i32*, i32)** %84, align 8
  %86 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %87 = bitcast %struct.hid_device* %86 to %struct.hid_device.0*
  %88 = load %struct.hid_report*, %struct.hid_report** %14, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 %85(%struct.hid_device.0* %87, %struct.hid_report* %88, i32* %89, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %103

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %77, %72, %69
  %97 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @hid_report_raw_event(%struct.hid_device* %97, i32 %98, i32* %99, i32 %100, i32 %101)
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %96, %94, %68, %49, %34
  %104 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %105 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %104, i32 0, i32 0
  %106 = call i32 @up(i32* %105)
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %103, %26, %18
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @dbg_hid(i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @hid_dump_report(%struct.hid_device*, i32, i32*, i32) #1

declare dso_local %struct.hid_report* @hid_get_report(%struct.hid_report_enum*, i32*) #1

declare dso_local i64 @hid_match_report(%struct.hid_device*, %struct.hid_report*) #1

declare dso_local i32 @hid_report_raw_event(%struct.hid_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
