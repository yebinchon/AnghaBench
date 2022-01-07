; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c___elan_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c___elan_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { %struct.TYPE_2__*, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*, i32)*, i32 (%struct.i2c_client*, i32)* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"device initialize failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to wake device up: %d\0A\00", align 1
@ETP_ENABLE_ABS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to switch to absolute mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elan_tp_data*)* @__elan_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__elan_initialize(%struct.elan_tp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  %7 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %8 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %7, i32 0, i32 2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %11 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)** %13, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = call i32 %14(%struct.i2c_client* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %99

25:                                               ; preds = %1
  %26 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %27 = call i32 @elan_query_product(%struct.elan_tp_data* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %99

32:                                               ; preds = %25
  %33 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %34 = call i64 @elan_check_ASUS_special_fw(%struct.elan_tp_data* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %38 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.i2c_client*, i32)*, i32 (%struct.i2c_client*, i32)** %40, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = call i32 %41(%struct.i2c_client* %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %99

52:                                               ; preds = %36
  %53 = call i32 @msleep(i32 200)
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %32
  %55 = load i32, i32* @ETP_ENABLE_ABS, align 4
  %56 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %57 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %61 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32 (%struct.i2c_client*, i32)*, i32 (%struct.i2c_client*, i32)** %63, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %67 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %64(%struct.i2c_client* %65, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %54
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %99

78:                                               ; preds = %54
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %78
  %82 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %83 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32 (%struct.i2c_client*, i32)*, i32 (%struct.i2c_client*, i32)** %85, align 8
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = call i32 %86(%struct.i2c_client* %87, i32 0)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %81
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %78
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %91, %72, %46, %30, %19
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @elan_query_product(%struct.elan_tp_data*) #1

declare dso_local i64 @elan_check_ASUS_special_fw(%struct.elan_tp_data*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
