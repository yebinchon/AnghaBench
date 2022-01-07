; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_get_fan_auto_nearest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_get_fan_auto_nearest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1031_data = type { i64*** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adm1031_data*, i32, i64, i64)* @get_fan_auto_nearest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fan_auto_nearest(%struct.adm1031_data* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adm1031_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.adm1031_data* %0, %struct.adm1031_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %14 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %15 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %14, i32 0, i32 0
  %16 = load i64***, i64**** %15, align 8
  %17 = load i64**, i64*** %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @FAN_CHAN_FROM_REG(i64 %18)
  %20 = getelementptr inbounds i64*, i64** %17, i64 %19
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %21, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %110

32:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %93, %32
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %96

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %39 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %38, i32 0, i32 0
  %40 = load i64***, i64**** %39, align 8
  %41 = load i64**, i64*** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %37, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %36
  %52 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %53 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %52, i32 0, i32 0
  %54 = load i64***, i64**** %53, align 8
  %55 = load i64**, i64*** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64*, i64** %55, i64 %57
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %59, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %51
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %12, align 4
  br label %96

71:                                               ; preds = %51, %36
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %74 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %73, i32 0, i32 0
  %75 = load i64***, i64**** %74, align 8
  %76 = load i64**, i64*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64*, i64** %76, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %72, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %71
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %89, %86, %71
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %33

96:                                               ; preds = %69, %33
  %97 = load i32, i32* %12, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %5, align 4
  br label %110

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %5, align 4
  br label %110

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %107, %104, %99, %31
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i64 @FAN_CHAN_FROM_REG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
