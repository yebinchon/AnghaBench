; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxtj9_data = type { %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@CTRL_REG1 = common dso_local global i32 0, align 4
@INT_CTRL1 = common dso_local global i32 0, align 4
@PC1_ON = common dso_local global i32 0, align 4
@INT_REL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error clearing interrupt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxtj9_data*)* @kxtj9_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxtj9_enable(%struct.kxtj9_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kxtj9_data*, align 8
  %4 = alloca i32, align 4
  store %struct.kxtj9_data* %0, %struct.kxtj9_data** %3, align 8
  %5 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %6 = call i32 @kxtj9_device_power_on(%struct.kxtj9_data* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %109

11:                                               ; preds = %1
  %12 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %13 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* @CTRL_REG1, align 4
  %16 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_5__* %14, i32 %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %109

21:                                               ; preds = %11
  %22 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %23 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %30 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* @INT_CTRL1, align 4
  %33 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %34 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_5__* %31, i32 %32, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %109

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %44 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %45 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kxtj9_update_g_range(%struct.kxtj9_data* %43, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %109

53:                                               ; preds = %42
  %54 = load i32, i32* @PC1_ON, align 4
  %55 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %56 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %60 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* @CTRL_REG1, align 4
  %63 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %64 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_5__* %61, i32 %62, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %53
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %109

71:                                               ; preds = %53
  %72 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %73 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %74 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @kxtj9_update_odr(%struct.kxtj9_data* %72, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %109

81:                                               ; preds = %71
  %82 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %83 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %81
  %89 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %90 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* @INT_REL, align 4
  %93 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_5__* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %98 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %105

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %81
  store i32 0, i32* %2, align 4
  br label %109

105:                                              ; preds = %96
  %106 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %107 = call i32 @kxtj9_device_power_off(%struct.kxtj9_data* %106)
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %104, %79, %69, %51, %39, %19, %9
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @kxtj9_device_power_on(%struct.kxtj9_data*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @kxtj9_update_g_range(%struct.kxtj9_data*, i32) #1

declare dso_local i32 @kxtj9_update_odr(%struct.kxtj9_data*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kxtj9_device_power_off(%struct.kxtj9_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
