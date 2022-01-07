; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f01.c_rmi_f01_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f01.c_rmi_f01_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.f01_data = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"Failed to write device_control register: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to write doze interval: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to write wakeup threshold: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to write doze holdoff: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*)* @rmi_f01_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f01_config(%struct.rmi_function* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmi_function*, align 8
  %4 = alloca %struct.f01_data*, align 8
  %5 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %3, align 8
  %6 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %7 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %6, i32 0, i32 0
  %8 = call %struct.f01_data* @dev_get_drvdata(i32* %7)
  store %struct.f01_data* %8, %struct.f01_data** %4, align 8
  %9 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %10 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %13 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %17 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rmi_write(i32 %11, i32 %15, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %25 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %103

29:                                               ; preds = %1
  %30 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %31 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %29
  %36 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %37 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %40 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %43 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @rmi_write(i32 %38, i32 %41, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %35
  %50 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %51 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %50, i32 0, i32 0
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %103

55:                                               ; preds = %35
  %56 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %57 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %60 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %63 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = call i32 @rmi_write_block(i32 %58, i32 %61, i32* %64, i32 4)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %70 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %103

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %29
  %76 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %77 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %75
  %82 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %83 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %86 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %89 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @rmi_write(i32 %84, i32 %87, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %81
  %96 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %97 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %96, i32 0, i32 0
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %103

101:                                              ; preds = %81
  br label %102

102:                                              ; preds = %101, %75
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %95, %68, %49, %23
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.f01_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rmi_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @rmi_write_block(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
