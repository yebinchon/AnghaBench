; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.cyapa*, %struct.firmware*)*, i32 (%struct.cyapa*)*, i32 (%struct.cyapa*)*, i32 (%struct.cyapa*, %struct.firmware*)*, i32 (%struct.cyapa*, %struct.firmware*)* }
%struct.firmware = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Could not load firmware from %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid CYAPA firmware image: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bl_enter failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"bl_activate failed, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"bl_initiate failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"update_fw failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i8*)* @cyapa_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_firmware(%struct.cyapa* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %10 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @request_firmware(%struct.firmware** %7, i8* %13, %struct.device* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %111

24:                                               ; preds = %2
  %25 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %26 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.cyapa*, %struct.firmware*)*, i32 (%struct.cyapa*, %struct.firmware*)** %28, align 8
  %30 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %31 = load %struct.firmware*, %struct.firmware** %7, align 8
  %32 = call i32 %29(%struct.cyapa* %30, %struct.firmware* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %107

39:                                               ; preds = %24
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @pm_runtime_get_sync(%struct.device* %40)
  %42 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %43 = call i32 @cyapa_enable_irq_for_cmd(%struct.cyapa* %42)
  %44 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %45 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32 (%struct.cyapa*)*, i32 (%struct.cyapa*)** %47, align 8
  %49 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %50 = call i32 %48(%struct.cyapa* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %102

57:                                               ; preds = %39
  %58 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %59 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32 (%struct.cyapa*)*, i32 (%struct.cyapa*)** %61, align 8
  %63 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %64 = call i32 %62(%struct.cyapa* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %102

71:                                               ; preds = %57
  %72 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %73 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i32 (%struct.cyapa*, %struct.firmware*)*, i32 (%struct.cyapa*, %struct.firmware*)** %75, align 8
  %77 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %78 = load %struct.firmware*, %struct.firmware** %7, align 8
  %79 = call i32 %76(%struct.cyapa* %77, %struct.firmware* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  br label %102

86:                                               ; preds = %71
  %87 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %88 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load i32 (%struct.cyapa*, %struct.firmware*)*, i32 (%struct.cyapa*, %struct.firmware*)** %90, align 8
  %92 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %93 = load %struct.firmware*, %struct.firmware** %7, align 8
  %94 = call i32 %91(%struct.cyapa* %92, %struct.firmware* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %102

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101, %97, %82, %67, %53
  %103 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %104 = call i32 @cyapa_disable_irq_for_cmd(%struct.cyapa* %103)
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i32 @pm_runtime_put_noidle(%struct.device* %105)
  br label %107

107:                                              ; preds = %102, %35
  %108 = load %struct.firmware*, %struct.firmware** %7, align 8
  %109 = call i32 @release_firmware(%struct.firmware* %108)
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %18
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @cyapa_enable_irq_for_cmd(%struct.cyapa*) #1

declare dso_local i32 @cyapa_disable_irq_for_cmd(%struct.cyapa*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
