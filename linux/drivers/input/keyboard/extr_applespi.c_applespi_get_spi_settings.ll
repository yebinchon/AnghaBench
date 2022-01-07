; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_get_spi_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_get_spi_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { %struct.TYPE_4__*, %struct.spi_settings }
%struct.TYPE_4__ = type { i32 }
%struct.spi_settings = type { i8*, i8*, i8* }
%struct.acpi_device = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"spiCSDelay\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Property spiCSDelay not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"resetA2RUsec\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Property resetA2RUsec not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"resetRecUsec\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Property resetRecUsec not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"SPI settings: spi_cs_delay=%llu reset_a2r_usec=%llu reset_rec_usec=%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.applespi_data*)* @applespi_get_spi_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applespi_get_spi_settings(%struct.applespi_data* %0) #0 {
  %2 = alloca %struct.applespi_data*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %struct.spi_settings*, align 8
  store %struct.applespi_data* %0, %struct.applespi_data** %2, align 8
  %6 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %7 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call %struct.acpi_device* @ACPI_COMPANION(i32* %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %3, align 8
  %11 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %12 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %11, i32 0, i32 1
  store %struct.spi_settings* %12, %struct.spi_settings** %5, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %15 = call i32 @acpi_dev_get_property(%struct.acpi_device* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14, %union.acpi_object** %4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %19 = bitcast %union.acpi_object* %18 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.spi_settings*, %struct.spi_settings** %5, align 8
  %25 = getelementptr inbounds %struct.spi_settings, %struct.spi_settings* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %28 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %26, %17
  %33 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %34 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %35 = call i32 @acpi_dev_get_property(%struct.acpi_device* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %34, %union.acpi_object** %4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8**
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.spi_settings*, %struct.spi_settings** %5, align 8
  %45 = getelementptr inbounds %struct.spi_settings, %struct.spi_settings* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %52

46:                                               ; preds = %32
  %47 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %48 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %46, %37
  %53 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %54 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %55 = call i32 @acpi_dev_get_property(%struct.acpi_device* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %54, %union.acpi_object** %4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %59 = bitcast %union.acpi_object* %58 to %struct.TYPE_3__*
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8**
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.spi_settings*, %struct.spi_settings** %5, align 8
  %65 = getelementptr inbounds %struct.spi_settings, %struct.spi_settings* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %72

66:                                               ; preds = %52
  %67 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %68 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @dev_warn(i32* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %66, %57
  %73 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %74 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.spi_settings*, %struct.spi_settings** %5, align 8
  %78 = getelementptr inbounds %struct.spi_settings, %struct.spi_settings* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.spi_settings*, %struct.spi_settings** %5, align 8
  %81 = getelementptr inbounds %struct.spi_settings, %struct.spi_settings* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.spi_settings*, %struct.spi_settings** %5, align 8
  %84 = getelementptr inbounds %struct.spi_settings, %struct.spi_settings* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i8* %79, i8* %82, i8* %85)
  ret i32 0
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @acpi_dev_get_property(%struct.acpi_device*, i8*, i32, %union.acpi_object**) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
