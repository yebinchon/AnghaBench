; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9960.c_apds9960_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds9960_data = type { i32, i32, i32, i32, i32, i32, i32 }

@APDS9960_REG_PERS = common dso_local global i32 0, align 4
@APDS9960_DEFAULT_PERS = common dso_local global i32 0, align 4
@APDS9960_REG_GCONF_1 = common dso_local global i32 0, align 4
@APDS9960_REG_GCONF_1_GFIFO_THRES_MASK = common dso_local global i32 0, align 4
@APDS9960_REG_GCONF_1_GFIFO_THRES_MASK_SHIFT = common dso_local global i32 0, align 4
@APDS9960_REG_GPENTH = common dso_local global i32 0, align 4
@APDS9960_DEFAULT_GPENTH = common dso_local global i32 0, align 4
@APDS9960_REG_GEXTH = common dso_local global i32 0, align 4
@APDS9960_DEFAULT_GEXTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds9960_data*)* @apds9960_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9960_chip_init(%struct.apds9960_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apds9960_data*, align 8
  %4 = alloca i32, align 4
  store %struct.apds9960_data* %0, %struct.apds9960_data** %3, align 8
  %5 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %6 = call i32 @apds9960_set_it_time(%struct.apds9960_data* %5, i32 28000)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %115

11:                                               ; preds = %1
  %12 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %13 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_field_write(i32 %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %115

20:                                               ; preds = %11
  %21 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %22 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regmap_field_write(i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %115

29:                                               ; preds = %20
  %30 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %31 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regmap_field_write(i32 %32, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %115

38:                                               ; preds = %29
  %39 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %40 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_field_write(i32 %41, i32 1)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %115

47:                                               ; preds = %38
  %48 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %49 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regmap_field_write(i32 %50, i32 0)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %115

56:                                               ; preds = %47
  %57 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %58 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regmap_field_write(i32 %59, i32 1)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %115

65:                                               ; preds = %56
  %66 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %67 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @APDS9960_REG_PERS, align 4
  %70 = load i32, i32* @APDS9960_DEFAULT_PERS, align 4
  %71 = call i32 @regmap_write(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %115

76:                                               ; preds = %65
  %77 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %78 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @APDS9960_REG_GCONF_1, align 4
  %81 = load i32, i32* @APDS9960_REG_GCONF_1_GFIFO_THRES_MASK, align 4
  %82 = call i32 @BIT(i32 0)
  %83 = load i32, i32* @APDS9960_REG_GCONF_1_GFIFO_THRES_MASK_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %115

90:                                               ; preds = %76
  %91 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %92 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @APDS9960_REG_GPENTH, align 4
  %95 = load i32, i32* @APDS9960_DEFAULT_GPENTH, align 4
  %96 = call i32 @regmap_write(i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %115

101:                                              ; preds = %90
  %102 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %103 = getelementptr inbounds %struct.apds9960_data, %struct.apds9960_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @APDS9960_REG_GEXTH, align 4
  %106 = load i32, i32* @APDS9960_DEFAULT_GEXTH, align 4
  %107 = call i32 @regmap_write(i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %115

112:                                              ; preds = %101
  %113 = load %struct.apds9960_data*, %struct.apds9960_data** %3, align 8
  %114 = call i32 @apds9960_set_powermode(%struct.apds9960_data* %113, i32 1)
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %112, %110, %99, %88, %74, %63, %54, %45, %36, %27, %18, %9
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @apds9960_set_it_time(%struct.apds9960_data*, i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @apds9960_set_powermode(%struct.apds9960_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
