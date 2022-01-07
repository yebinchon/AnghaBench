; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_get_boolean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_get_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_data = type { i32* }
%struct.pmbus_boolean = type { %struct.pmbus_sensor*, %struct.pmbus_sensor* }
%struct.pmbus_sensor = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"Bad boolean descriptor %p: s1=%p, s2=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmbus_data*, %struct.pmbus_boolean*, i32)* @pmbus_get_boolean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_get_boolean(%struct.pmbus_data* %0, %struct.pmbus_boolean* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmbus_data*, align 8
  %6 = alloca %struct.pmbus_boolean*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmbus_sensor*, align 8
  %9 = alloca %struct.pmbus_sensor*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.pmbus_data* %0, %struct.pmbus_data** %5, align 8
  store %struct.pmbus_boolean* %1, %struct.pmbus_boolean** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.pmbus_boolean*, %struct.pmbus_boolean** %6, align 8
  %18 = getelementptr inbounds %struct.pmbus_boolean, %struct.pmbus_boolean* %17, i32 0, i32 1
  %19 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %18, align 8
  store %struct.pmbus_sensor* %19, %struct.pmbus_sensor** %8, align 8
  %20 = load %struct.pmbus_boolean*, %struct.pmbus_boolean** %6, align 8
  %21 = getelementptr inbounds %struct.pmbus_boolean, %struct.pmbus_boolean* %20, i32 0, i32 0
  %22 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %21, align 8
  store %struct.pmbus_sensor* %22, %struct.pmbus_sensor** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 65535
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 65535
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %11, align 8
  %30 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %31 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %4, align 4
  br label %108

40:                                               ; preds = %3
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %14, align 8
  %45 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  %46 = icmp ne %struct.pmbus_sensor* %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %9, align 8
  %49 = icmp ne %struct.pmbus_sensor* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %12, align 4
  br label %106

56:                                               ; preds = %47, %40
  %57 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  %58 = icmp ne %struct.pmbus_sensor* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %9, align 8
  %61 = icmp ne %struct.pmbus_sensor* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.pmbus_boolean*, %struct.pmbus_boolean** %6, align 8
  %64 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  %65 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %9, align 8
  %66 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.pmbus_boolean* %63, %struct.pmbus_sensor* %64, %struct.pmbus_sensor* %65)
  store i32 0, i32* %4, align 4
  br label %108

67:                                               ; preds = %59
  %68 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  %69 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  %74 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %108

77:                                               ; preds = %67
  %78 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %9, align 8
  %79 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %9, align 8
  %84 = getelementptr inbounds %struct.pmbus_sensor, %struct.pmbus_sensor* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  br label %108

87:                                               ; preds = %77
  %88 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %89 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %8, align 8
  %90 = call i64 @pmbus_reg2data(%struct.pmbus_data* %88, %struct.pmbus_sensor* %89)
  store i64 %90, i64* %15, align 8
  %91 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %92 = load %struct.pmbus_sensor*, %struct.pmbus_sensor** %9, align 8
  %93 = call i64 @pmbus_reg2data(%struct.pmbus_data* %91, %struct.pmbus_sensor* %92)
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %14, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = icmp sge i64 %97, %98
  br label %100

100:                                              ; preds = %96, %87
  %101 = phi i1 [ false, %87 ], [ %99, %96 ]
  %102 = xor i1 %101, true
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %50
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %82, %72, %62, %38
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @WARN(i32, i8*, %struct.pmbus_boolean*, %struct.pmbus_sensor*, %struct.pmbus_sensor*) #1

declare dso_local i64 @pmbus_reg2data(%struct.pmbus_data*, %struct.pmbus_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
