; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_regfield_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_regfield_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds9960_data = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.regmap*, %struct.TYPE_2__* }
%struct.regmap = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@apds9960_reg_field_int_als = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"INT ALS reg field init failed\0A\00", align 1
@apds9960_reg_field_int_ges = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"INT gesture reg field init failed\0A\00", align 1
@apds9960_reg_field_int_pxs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"INT pxs reg field init failed\0A\00", align 1
@apds9960_reg_field_enable_als = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Enable ALS reg field init failed\0A\00", align 1
@apds9960_reg_field_enable_ges = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Enable gesture reg field init failed\0A\00", align 1
@apds9960_reg_field_enable_pxs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Enable PXS reg field init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds9960_data*)* @apds9960_regfield_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_regfield_init(%struct.apds9960_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apds9960_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  store %struct.apds9960_data* %0, %struct.apds9960_data** %3, align 8
  %6 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %7 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %6, i32 0, i32 7
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %11 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %10, i32 0, i32 6
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.regmap*, %struct.regmap** %5, align 8
  %15 = load i32, i32* @apds9960_reg_field_int_als, align 4
  %16 = call i8* @devm_regmap_field_alloc(%struct.device* %13, %struct.regmap* %14, i32 %15)
  %17 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %18 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %20 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %19, i32 0, i32 5
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @IS_ERR(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %28 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %27, i32 0, i32 5
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @PTR_ERR(i8* %29)
  store i32 %30, i32* %2, align 4
  br label %127

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.regmap*, %struct.regmap** %5, align 8
  %34 = load i32, i32* @apds9960_reg_field_int_ges, align 4
  %35 = call i8* @devm_regmap_field_alloc(%struct.device* %32, %struct.regmap* %33, i32 %34)
  %36 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %37 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %39 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %47 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %2, align 4
  br label %127

50:                                               ; preds = %31
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.regmap*, %struct.regmap** %5, align 8
  %53 = load i32, i32* @apds9960_reg_field_int_pxs, align 4
  %54 = call i8* @devm_regmap_field_alloc(%struct.device* %51, %struct.regmap* %52, i32 %53)
  %55 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %56 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %58 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %50
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %66 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %2, align 4
  br label %127

69:                                               ; preds = %50
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.regmap*, %struct.regmap** %5, align 8
  %72 = load i32, i32* @apds9960_reg_field_enable_als, align 4
  %73 = call i8* @devm_regmap_field_alloc(%struct.device* %70, %struct.regmap* %71, i32 %72)
  %74 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %75 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %77 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %85 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @PTR_ERR(i8* %86)
  store i32 %87, i32* %2, align 4
  br label %127

88:                                               ; preds = %69
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.regmap*, %struct.regmap** %5, align 8
  %91 = load i32, i32* @apds9960_reg_field_enable_ges, align 4
  %92 = call i8* @devm_regmap_field_alloc(%struct.device* %89, %struct.regmap* %90, i32 %91)
  %93 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %94 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %96 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %88
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %104 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @PTR_ERR(i8* %105)
  store i32 %106, i32* %2, align 4
  br label %127

107:                                              ; preds = %88
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load %struct.regmap*, %struct.regmap** %5, align 8
  %110 = load i32, i32* @apds9960_reg_field_enable_pxs, align 4
  %111 = call i8* @devm_regmap_field_alloc(%struct.device* %108, %struct.regmap* %109, i32 %110)
  %112 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %113 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %115 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @IS_ERR(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %107
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %122 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %123 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @PTR_ERR(i8* %124)
  store i32 %125, i32* %2, align 4
  br label %127

126:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %119, %100, %81, %62, %43, %24
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i8* @devm_regmap_field_alloc(%struct.device*, %struct.regmap*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
