; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_setup_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_setup_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm36651_data = type { i32*, i32*, %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@CM36651_ALS_ENABLE = common dso_local global i32 0, align 4
@CM36651_ALS_THRES = common dso_local global i32 0, align 4
@CM36651_CS_CONF1 = common dso_local global i64 0, align 8
@CM36651_CS_CONF2_DEFAULT_BIT = common dso_local global i32 0, align 4
@CM36651_CS_CONF2 = common dso_local global i64 0, align 8
@CM36651_CS_CONF_REG_NUM = common dso_local global i32 0, align 4
@cm36651_cs_reg = common dso_local global i64* null, align 8
@CM36651_PS_ENABLE = common dso_local global i32 0, align 4
@CM36651_PS_IT2 = common dso_local global i32 0, align 4
@CM36651_PS_CONF1 = common dso_local global i64 0, align 8
@CM36651_PS_INITIAL_THD = common dso_local global i32 0, align 4
@CM36651_PS_THD = common dso_local global i64 0, align 8
@CM36651_PS_CANC_DEFAULT = common dso_local global i32 0, align 4
@CM36651_PS_CANC = common dso_local global i64 0, align 8
@CM36651_PS_HYS2 = common dso_local global i32 0, align 4
@CM36651_PS_DIR_INT = common dso_local global i32 0, align 4
@CM36651_PS_SMART_PERS_EN = common dso_local global i32 0, align 4
@CM36651_PS_CONF2 = common dso_local global i64 0, align 8
@CM36651_PS_REG_NUM = common dso_local global i32 0, align 4
@cm36651_ps_reg = common dso_local global i64* null, align 8
@CM36651_ALS_DISABLE = common dso_local global i32 0, align 4
@CM36651_PS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm36651_data*)* @cm36651_setup_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm36651_setup_reg(%struct.cm36651_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm36651_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cm36651_data* %0, %struct.cm36651_data** %3, align 8
  %8 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %9 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %8, i32 0, i32 3
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %12 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %11, i32 0, i32 2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = load i32, i32* @CM36651_ALS_ENABLE, align 4
  %15 = load i32, i32* @CM36651_ALS_THRES, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %18 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @CM36651_CS_CONF1, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %16, i32* %21, align 4
  %22 = load i32, i32* @CM36651_CS_CONF2_DEFAULT_BIT, align 4
  %23 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %24 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @CM36651_CS_CONF2, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %22, i32* %27, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %52, %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CM36651_CS_CONF_REG_NUM, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i64*, i64** @cm36651_cs_reg, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %40 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %33, i64 %38, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %32
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %134

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %28

55:                                               ; preds = %28
  %56 = load i32, i32* @CM36651_PS_ENABLE, align 4
  %57 = load i32, i32* @CM36651_PS_IT2, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %60 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @CM36651_PS_CONF1, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* @CM36651_PS_INITIAL_THD, align 4
  %65 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %66 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @CM36651_PS_THD, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* @CM36651_PS_CANC_DEFAULT, align 4
  %71 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %72 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @CM36651_PS_CANC, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* @CM36651_PS_HYS2, align 4
  %77 = load i32, i32* @CM36651_PS_DIR_INT, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CM36651_PS_SMART_PERS_EN, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %82 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @CM36651_PS_CONF2, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %80, i32* %85, align 4
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %110, %55
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @CM36651_PS_REG_NUM, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %92 = load i64*, i64** @cm36651_ps_reg, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %98 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %91, i64 %96, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %90
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %134

109:                                              ; preds = %90
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %86

113:                                              ; preds = %86
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = load i64, i64* @CM36651_CS_CONF1, align 8
  %116 = load i32, i32* @CM36651_ALS_DISABLE, align 4
  %117 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %114, i64 %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %134

122:                                              ; preds = %113
  %123 = load %struct.cm36651_data*, %struct.cm36651_data** %3, align 8
  %124 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %123, i32 0, i32 2
  %125 = load %struct.i2c_client*, %struct.i2c_client** %124, align 8
  %126 = load i64, i64* @CM36651_PS_CONF1, align 8
  %127 = load i32, i32* @CM36651_PS_DISABLE, align 4
  %128 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %125, i64 %126, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %131, %120, %107, %49
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
