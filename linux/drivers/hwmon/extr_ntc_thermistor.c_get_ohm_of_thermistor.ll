; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ntc_thermistor.c_get_ohm_of_thermistor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ntc_thermistor.c_get_ohm_of_thermistor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntc_data = type { %struct.ntc_thermistor_platform_data* }
%struct.ntc_thermistor_platform_data = type { i32, i32, i32, i64 }

@NTC_CONNECTED_POSITIVE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@NTC_CONNECTED_GROUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntc_data*, i32)* @get_ohm_of_thermistor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ohm_of_thermistor(%struct.ntc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntc_thermistor_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ntc_data* %0, %struct.ntc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ntc_data*, %struct.ntc_data** %4, align 8
  %12 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %11, i32 0, i32 0
  %13 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %12, align 8
  store %struct.ntc_thermistor_platform_data* %13, %struct.ntc_thermistor_platform_data** %6, align 8
  %14 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %6, align 8
  %15 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %6, align 8
  %18 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %6, align 8
  %21 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %6, align 8
  %27 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NTC_CONNECTED_POSITIVE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @INT_MAX, align 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  store i32 %35, i32* %3, align 4
  br label %135

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %6, align 8
  %42 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NTC_CONNECTED_POSITIVE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @INT_MAX, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i32 [ 0, %46 ], [ %48, %47 ]
  store i32 %50, i32* %3, align 4
  br label %135

51:                                               ; preds = %36
  %52 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %6, align 8
  %53 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NTC_CONNECTED_POSITIVE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub i32 %62, %63
  %65 = mul i32 %61, %64
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @div_u64(i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %127

68:                                               ; preds = %57, %51
  %69 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %6, align 8
  %70 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NTC_CONNECTED_GROUND, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = mul i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sub i32 %81, %82
  %84 = call i32 @div_u64(i32 %80, i32 %83)
  store i32 %84, i32* %8, align 4
  br label %126

85:                                               ; preds = %74, %68
  %86 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %6, align 8
  %87 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NTC_CONNECTED_POSITIVE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = mul i32 %92, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sub i32 %95, %96
  %98 = mul i32 %94, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %5, align 4
  %101 = mul i32 %99, %100
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sub i32 %103, %104
  %106 = mul i32 %102, %105
  %107 = sub i32 %101, %106
  %108 = call i32 @div64_u64_safe(i32 %98, i32 %107)
  store i32 %108, i32* %8, align 4
  br label %125

109:                                              ; preds = %85
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = mul i32 %110, %111
  %113 = load i32, i32* %5, align 4
  %114 = mul i32 %112, %113
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %5, align 4
  %118 = sub i32 %116, %117
  %119 = mul i32 %115, %118
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %5, align 4
  %122 = mul i32 %120, %121
  %123 = sub i32 %119, %122
  %124 = call i32 @div64_u64_safe(i32 %114, i32 %123)
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %109, %91
  br label %126

126:                                              ; preds = %125, %77
  br label %127

127:                                              ; preds = %126, %60
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @INT_MAX, align 4
  %130 = icmp ugt i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @INT_MAX, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %131, %127
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %49, %34
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @div64_u64_safe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
