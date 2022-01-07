; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_generic_scl_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_generic_scl_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_bus_recovery_info* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter.0*)*, i32 (%struct.i2c_adapter.1*, i32)*, i32 (%struct.i2c_adapter.2*, i32)*, i32 (%struct.i2c_adapter.3*)*, i32 (%struct.i2c_adapter.4*)* }
%struct.i2c_adapter.0 = type opaque
%struct.i2c_adapter.1 = type opaque
%struct.i2c_adapter.2 = type opaque
%struct.i2c_adapter.3 = type opaque
%struct.i2c_adapter.4 = type opaque

@RECOVERY_NDELAY = common dso_local global i32 0, align 4
@RECOVERY_CLK_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SCL is stuck low, exit recovery\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_generic_scl_recovery(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i2c_bus_recovery_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 1
  %9 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %8, align 8
  store %struct.i2c_bus_recovery_info* %9, %struct.i2c_bus_recovery_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %10, i32 0, i32 4
  %12 = load i32 (%struct.i2c_adapter.4*)*, i32 (%struct.i2c_adapter.4*)** %11, align 8
  %13 = icmp ne i32 (%struct.i2c_adapter.4*)* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %15, i32 0, i32 4
  %17 = load i32 (%struct.i2c_adapter.4*)*, i32 (%struct.i2c_adapter.4*)** %16, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %19 = bitcast %struct.i2c_adapter* %18 to %struct.i2c_adapter.4*
  %20 = call i32 %17(%struct.i2c_adapter.4* %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %22, i32 0, i32 2
  %24 = load i32 (%struct.i2c_adapter.2*, i32)*, i32 (%struct.i2c_adapter.2*, i32)** %23, align 8
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %26 = bitcast %struct.i2c_adapter* %25 to %struct.i2c_adapter.2*
  %27 = load i32, i32* %5, align 4
  %28 = call i32 %24(%struct.i2c_adapter.2* %26, i32 %27)
  %29 = load i32, i32* @RECOVERY_NDELAY, align 4
  %30 = sdiv i32 %29, 2
  %31 = call i32 @ndelay(i32 %30)
  %32 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %32, i32 0, i32 1
  %34 = load i32 (%struct.i2c_adapter.1*, i32)*, i32 (%struct.i2c_adapter.1*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.i2c_adapter.1*, i32)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %21
  %37 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %37, i32 0, i32 1
  %39 = load i32 (%struct.i2c_adapter.1*, i32)*, i32 (%struct.i2c_adapter.1*, i32)** %38, align 8
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %41 = bitcast %struct.i2c_adapter* %40 to %struct.i2c_adapter.1*
  %42 = load i32, i32* %5, align 4
  %43 = call i32 %39(%struct.i2c_adapter.1* %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %21
  %45 = load i32, i32* @RECOVERY_NDELAY, align 4
  %46 = sdiv i32 %45, 2
  %47 = call i32 @ndelay(i32 %46)
  br label %48

48:                                               ; preds = %112, %44
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @RECOVERY_CLK_CNT, align 4
  %52 = mul nsw i32 %51, 2
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %113

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %58, i32 0, i32 3
  %60 = load i32 (%struct.i2c_adapter.3*)*, i32 (%struct.i2c_adapter.3*)** %59, align 8
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %62 = bitcast %struct.i2c_adapter* %61 to %struct.i2c_adapter.3*
  %63 = call i32 %60(%struct.i2c_adapter.3* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %57
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %113

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %5, align 4
  %77 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %78 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %77, i32 0, i32 2
  %79 = load i32 (%struct.i2c_adapter.2*, i32)*, i32 (%struct.i2c_adapter.2*, i32)** %78, align 8
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %81 = bitcast %struct.i2c_adapter* %80 to %struct.i2c_adapter.2*
  %82 = load i32, i32* %5, align 4
  %83 = call i32 %79(%struct.i2c_adapter.2* %81, i32 %82)
  %84 = load i32, i32* @RECOVERY_NDELAY, align 4
  %85 = sdiv i32 %84, 2
  %86 = call i32 @ndelay(i32 %85)
  %87 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %88 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %87, i32 0, i32 1
  %89 = load i32 (%struct.i2c_adapter.1*, i32)*, i32 (%struct.i2c_adapter.1*, i32)** %88, align 8
  %90 = icmp ne i32 (%struct.i2c_adapter.1*, i32)* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %72
  %92 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %93 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %92, i32 0, i32 1
  %94 = load i32 (%struct.i2c_adapter.1*, i32)*, i32 (%struct.i2c_adapter.1*, i32)** %93, align 8
  %95 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %96 = bitcast %struct.i2c_adapter* %95 to %struct.i2c_adapter.1*
  %97 = load i32, i32* %5, align 4
  %98 = call i32 %94(%struct.i2c_adapter.1* %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %72
  %100 = load i32, i32* @RECOVERY_NDELAY, align 4
  %101 = sdiv i32 %100, 2
  %102 = call i32 @ndelay(i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %107 = call i32 @i2c_generic_bus_free(%struct.i2c_adapter* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %113

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %99
  br label %48

113:                                              ; preds = %110, %65, %48
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @EOPNOTSUPP, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %113
  %120 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %121 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %120, i32 0, i32 0
  %122 = load i32 (%struct.i2c_adapter.0*)*, i32 (%struct.i2c_adapter.0*)** %121, align 8
  %123 = icmp ne i32 (%struct.i2c_adapter.0*)* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %3, align 8
  %126 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %125, i32 0, i32 0
  %127 = load i32 (%struct.i2c_adapter.0*)*, i32 (%struct.i2c_adapter.0*)** %126, align 8
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %129 = bitcast %struct.i2c_adapter* %128 to %struct.i2c_adapter.0*
  %130 = call i32 %127(%struct.i2c_adapter.0* %129)
  br label %131

131:                                              ; preds = %124, %119
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_generic_bus_free(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
