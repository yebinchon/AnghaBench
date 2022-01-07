; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_vadc_map_voltage_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_vadc_map_voltage_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_map_pt = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vadc_map_pt*, i32, i64, i32*)* @qcom_vadc_map_voltage_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_vadc_map_voltage_temp(%struct.vadc_map_pt* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vadc_map_pt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vadc_map_pt* %0, %struct.vadc_map_pt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %13 = icmp ne %struct.vadc_map_pt* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %143

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %22 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %21, i64 0
  %23 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %26 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %25, i64 1
  %27 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %20
  br label %32

32:                                               ; preds = %31, %17
  br label %33

33:                                               ; preds = %64, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %41, i64 %43
  %45 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %67

50:                                               ; preds = %40, %37
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %54, i64 %56
  %58 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %67

63:                                               ; preds = %53, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %33

67:                                               ; preds = %62, %49, %33
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %72 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %71, i64 0
  %73 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  br label %142

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %81, i64 %84
  %86 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %141

89:                                               ; preds = %76
  %90 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %90, i64 %92
  %94 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %96, i64 %99
  %101 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %95, %102
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %106, i64 %109
  %111 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %105, %112
  %114 = mul nsw i64 %104, %113
  %115 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %115, i64 %117
  %119 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %121, i64 %124
  %126 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %120, %127
  %129 = sdiv i64 %114, %128
  %130 = load %struct.vadc_map_pt*, %struct.vadc_map_pt** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %130, i64 %133
  %135 = getelementptr inbounds %struct.vadc_map_pt, %struct.vadc_map_pt* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %129, %137
  %139 = trunc i64 %138 to i32
  %140 = load i32*, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %89, %80
  br label %142

142:                                              ; preds = %141, %70
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %14
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
