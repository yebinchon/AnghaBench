; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_calc_hem_mhop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_calc_hem_mhop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_hem_table = type { i64, i32, i64 }
%struct.hns_roce_hem_mhop = type { i64, i64, i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BA_BYTE_LEN = common dso_local global i64 0, align 8
@HEM_TYPE_MTT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Table %d not support hop_num = %d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1, i64* %2, %struct.hns_roce_hem_mhop* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_hem_table*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.hns_roce_hem_mhop*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.hns_roce_hem_mhop* %3, %struct.hns_roce_hem_mhop** %9, align 8
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %19 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %20 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %21 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @get_hem_table_config(%struct.hns_roce_dev* %18, %struct.hns_roce_hem_mhop* %19, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %141

28:                                               ; preds = %4
  %29 = load i64*, i64** %8, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %141

32:                                               ; preds = %28
  %33 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %34 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %37 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @hns_roce_get_bt_num(i64 %35, i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %41 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BA_BYTE_LEN, align 8
  %44 = udiv i64 %42, %43
  store i64 %44, i64* %11, align 8
  %45 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %46 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HEM_TYPE_MTT, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %32
  %51 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %52 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  br label %58

54:                                               ; preds = %32
  %55 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %56 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i64 [ %53, %50 ], [ %57, %54 ]
  store i64 %59, i64* %14, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %63 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = and i64 %61, %66
  %68 = load i64, i64* %14, align 8
  %69 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %70 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = udiv i64 %68, %71
  %73 = udiv i64 %67, %72
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %13, align 8
  switch i64 %74, label %113 [
    i64 3, label %75
    i64 2, label %97
    i64 1, label %109
  ]

75:                                               ; preds = %58
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %11, align 8
  %78 = sub i64 %77, 1
  %79 = and i64 %76, %78
  %80 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %81 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = udiv i64 %82, %83
  %85 = load i64, i64* %11, align 8
  %86 = sub i64 %85, 1
  %87 = and i64 %84, %86
  %88 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %89 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %11, align 8
  %92 = udiv i64 %90, %91
  %93 = load i64, i64* %11, align 8
  %94 = udiv i64 %92, %93
  %95 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %96 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %95, i32 0, i32 4
  store i64 %94, i64* %96, align 8
  br label %124

97:                                               ; preds = %58
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %11, align 8
  %100 = sub i64 %99, 1
  %101 = and i64 %98, %100
  %102 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %103 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %11, align 8
  %106 = udiv i64 %104, %105
  %107 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %108 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %107, i32 0, i32 4
  store i64 %106, i64* %108, align 8
  br label %124

109:                                              ; preds = %58
  %110 = load i64, i64* %12, align 8
  %111 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %112 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %111, i32 0, i32 4
  store i64 %110, i64* %112, align 8
  br label %124

113:                                              ; preds = %58
  %114 = load %struct.device*, %struct.device** %10, align 8
  %115 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %116 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %119 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %117, i32 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %141

124:                                              ; preds = %109, %97, %75
  %125 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %126 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %129 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp uge i64 %127, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %134 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.hns_roce_hem_mhop*, %struct.hns_roce_hem_mhop** %9, align 8
  %137 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = urem i64 %138, %135
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %132, %124
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %113, %31, %25
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @get_hem_table_config(%struct.hns_roce_dev*, %struct.hns_roce_hem_mhop*, i64) #1

declare dso_local i64 @hns_roce_get_bt_num(i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
