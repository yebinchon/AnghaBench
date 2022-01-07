; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_check_trip_points.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_check_trip_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i32, i64**, i64** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct6775_data*, i32)* @check_trip_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_trip_points(%struct.nct6775_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nct6775_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nct6775_data* %0, %struct.nct6775_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %43, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %10 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %7
  %15 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %16 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %15, i32 0, i32 1
  %17 = load i64**, i64*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64*, i64** %17, i64 %19
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %27 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %26, i32 0, i32 1
  %28 = load i64**, i64*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64*, i64** %28, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %25, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %14
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %164

42:                                               ; preds = %14
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %83, %46
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %50 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %47
  %55 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %56 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %55, i32 0, i32 2
  %57 = load i64**, i64*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64*, i64** %57, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %67 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %66, i32 0, i32 2
  %68 = load i64**, i64*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %65, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %54
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %164

82:                                               ; preds = %54
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %47

86:                                               ; preds = %47
  %87 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %88 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %87, i32 0, i32 2
  %89 = load i64**, i64*** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64*, i64** %89, i64 %91
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %95 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %93, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %163

101:                                              ; preds = %86
  %102 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %103 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %102, i32 0, i32 1
  %104 = load i64**, i64*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64*, i64** %104, i64 %106
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %110 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %108, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %117 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %116, i32 0, i32 1
  %118 = load i64**, i64*** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64*, i64** %118, i64 %120
  %122 = load i64*, i64** %121, align 8
  %123 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %124 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %122, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %115, %128
  br i1 %129, label %159, label %130

130:                                              ; preds = %101
  %131 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %132 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %131, i32 0, i32 2
  %133 = load i64**, i64*** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64*, i64** %133, i64 %135
  %137 = load i64*, i64** %136, align 8
  %138 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %139 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %137, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %146 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %145, i32 0, i32 2
  %147 = load i64**, i64*** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64*, i64** %147, i64 %149
  %151 = load i64*, i64** %150, align 8
  %152 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %153 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %151, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %144, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %130, %101
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %164

162:                                              ; preds = %130
  br label %163

163:                                              ; preds = %162, %86
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %159, %79, %39
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
