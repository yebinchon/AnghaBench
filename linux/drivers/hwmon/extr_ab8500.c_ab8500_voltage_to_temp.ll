; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ab8500.c_ab8500_voltage_to_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ab8500.c_ab8500_voltage_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_gpadc_cfg = type { i32, i32, i32, %struct.abx500_res_to_temp* }
%struct.abx500_res_to_temp = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_gpadc_cfg*, i32, i32*)* @ab8500_voltage_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_voltage_to_temp(%struct.ab8500_gpadc_cfg* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab8500_gpadc_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.abx500_res_to_temp*, align 8
  store %struct.ab8500_gpadc_cfg* %0, %struct.ab8500_gpadc_cfg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ab8500_gpadc_cfg*, %struct.ab8500_gpadc_cfg** %5, align 8
  %13 = getelementptr inbounds %struct.ab8500_gpadc_cfg, %struct.ab8500_gpadc_cfg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ab8500_gpadc_cfg*, %struct.ab8500_gpadc_cfg** %5, align 8
  %16 = getelementptr inbounds %struct.ab8500_gpadc_cfg, %struct.ab8500_gpadc_cfg* %15, i32 0, i32 3
  %17 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %16, align 8
  store %struct.abx500_res_to_temp* %17, %struct.abx500_res_to_temp** %11, align 8
  %18 = load %struct.ab8500_gpadc_cfg*, %struct.ab8500_gpadc_cfg** %5, align 8
  %19 = getelementptr inbounds %struct.ab8500_gpadc_cfg, %struct.ab8500_gpadc_cfg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ab8500_gpadc_cfg*, %struct.ab8500_gpadc_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.ab8500_gpadc_cfg, %struct.ab8500_gpadc_cfg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %141

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ab8500_gpadc_cfg*, %struct.ab8500_gpadc_cfg** %5, align 8
  %34 = getelementptr inbounds %struct.ab8500_gpadc_cfg, %struct.ab8500_gpadc_cfg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = load %struct.ab8500_gpadc_cfg*, %struct.ab8500_gpadc_cfg** %5, align 8
  %38 = getelementptr inbounds %struct.ab8500_gpadc_cfg, %struct.ab8500_gpadc_cfg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sdiv i32 %36, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %11, align 8
  %45 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %44, i64 0
  %46 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %43, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %51, i64 %54
  %56 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %50, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49, %31
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %141

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %89, %62
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %11, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %65, i64 %67
  %69 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %64, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %63
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %11, align 8
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %74, i64 %77
  %79 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %73, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %72, %63
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, 2
  %86 = icmp slt i32 %83, %85
  br label %87

87:                                               ; preds = %82, %72
  %88 = phi i1 [ false, %72 ], [ %86, %82 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %63

92:                                               ; preds = %87
  %93 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %11, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %93, i64 %95
  %97 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 1000
  %100 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %11, align 8
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %100, i64 %103
  %105 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %11, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %107, i64 %109
  %111 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %106, %112
  %114 = mul nsw i32 %113, 1000
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %11, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %116, i64 %118
  %120 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %115, %121
  %123 = mul nsw i32 %114, %122
  %124 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %11, align 8
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %124, i64 %127
  %129 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %11, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %131, i64 %133
  %135 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %130, %136
  %138 = sdiv i32 %123, %137
  %139 = add nsw i32 %99, %138
  %140 = load i32*, i32** %7, align 8
  store i32 %139, i32* %140, align 4
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %92, %59, %28
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
