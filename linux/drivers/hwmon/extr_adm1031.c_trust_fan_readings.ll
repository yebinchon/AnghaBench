; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_trust_fan_readings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_trust_fan_readings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1031_data = type { i32, i64*, i32*, i32*, i32 }

@ADM1031_CONF1_AUTO_MODE = common dso_local global i32 0, align 4
@adm1031 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adm1031_data*, i32)* @trust_fan_readings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trust_fan_readings(%struct.adm1031_data* %0, i32 %1) #0 {
  %3 = alloca %struct.adm1031_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adm1031_data* %0, %struct.adm1031_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %7 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ADM1031_CONF1_AUTO_MODE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %116

12:                                               ; preds = %2
  %13 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %14 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 96
  switch i32 %16, label %115 [
    i32 0, label %17
    i32 32, label %37
    i32 64, label %51
    i32 96, label %65
  ]

17:                                               ; preds = %12
  %18 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %19 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %27 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @AUTO_TEMP_MIN_FROM_REG_DEG(i32 %33)
  %35 = icmp sge i32 %25, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %115

37:                                               ; preds = %12
  %38 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %39 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %44 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @AUTO_TEMP_MIN_FROM_REG_DEG(i32 %47)
  %49 = icmp sge i32 %42, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %115

51:                                               ; preds = %12
  %52 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %53 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %58 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @AUTO_TEMP_MIN_FROM_REG_DEG(i32 %61)
  %63 = icmp sge i32 %56, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %115

65:                                               ; preds = %12
  %66 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %67 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %72 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @AUTO_TEMP_MIN_FROM_REG_DEG(i32 %75)
  %77 = icmp sge i32 %70, %76
  br i1 %77, label %112, label %78

78:                                               ; preds = %65
  %79 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %80 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %85 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @AUTO_TEMP_MIN_FROM_REG_DEG(i32 %88)
  %90 = icmp sge i32 %83, %89
  br i1 %90, label %112, label %91

91:                                               ; preds = %78
  %92 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %93 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @adm1031, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %99 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %104 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @AUTO_TEMP_MIN_FROM_REG_DEG(i32 %107)
  %109 = icmp sge i32 %102, %108
  br label %110

110:                                              ; preds = %97, %91
  %111 = phi i1 [ false, %91 ], [ %109, %97 ]
  br label %112

112:                                              ; preds = %110, %78, %65
  %113 = phi i1 [ true, %78 ], [ true, %65 ], [ %111, %110 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %12, %112, %51, %37, %17
  br label %126

116:                                              ; preds = %2
  %117 = load %struct.adm1031_data*, %struct.adm1031_data** %3, align 8
  %118 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %116, %115
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @AUTO_TEMP_MIN_FROM_REG_DEG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
