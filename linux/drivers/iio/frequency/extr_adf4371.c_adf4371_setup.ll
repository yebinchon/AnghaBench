; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf4371_state = type { i32, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADF4371_RESET_CMD = common dso_local global i32 0, align 4
@adf4371_reg_defaults = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"adi,mute-till-lock-en\00", align 1
@ADF4371_MUTE_LD_MSK = common dso_local global i32 0, align 4
@ADF4371_ADDR_ASC_MSK = common dso_local global i32 0, align 4
@ADF4371_ADDR_ASC_R_MSK = common dso_local global i32 0, align 4
@ADF4371_MAX_FREQ_PFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf4371_state*)* @adf4371_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4371_setup(%struct.adf4371_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adf4371_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adf4371_state* %0, %struct.adf4371_state** %3, align 8
  store i32 2, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %10 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %11 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ADF4371_REG(i32 0)
  %14 = load i32, i32* @ADF4371_RESET_CMD, align 4
  %15 = call i32 @regmap_write(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %2, align 4
  br label %166

20:                                               ; preds = %1
  %21 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %22 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @adf4371_reg_defaults, align 4
  %25 = load i32, i32* @adf4371_reg_defaults, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @regmap_multi_reg_write(i32 %23, i32 %24, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %166

32:                                               ; preds = %20
  %33 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %34 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %33, i32 0, i32 5
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i64 @device_property_read_bool(i32* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %41 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ADF4371_REG(i32 37)
  %44 = load i32, i32* @ADF4371_MUTE_LD_MSK, align 4
  %45 = call i32 @ADF4371_MUTE_LD(i32 1)
  %46 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %2, align 4
  br label %166

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %54 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ADF4371_REG(i32 0)
  %57 = load i32, i32* @ADF4371_ADDR_ASC_MSK, align 4
  %58 = load i32, i32* @ADF4371_ADDR_ASC_R_MSK, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @ADF4371_ADDR_ASC(i32 1)
  %61 = call i32 @ADF4371_ADDR_ASC_R(i32 1)
  %62 = or i32 %60, %61
  %63 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %59, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %166

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %83, %68
  %70 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %71 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %75 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %78 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %76, %79
  %81 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %82 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %69
  %84 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %85 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ADF4371_MAX_FREQ_PFD, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %69, label %89

89:                                               ; preds = %83
  %90 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %91 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @DIV_ROUND_UP(i32 %92, i32 2400000)
  store i32 %93, i32* %7, align 4
  %94 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %95 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @DIV_ROUND_CLOSEST(i32 %96, i32 1000000)
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %107, %89
  %99 = load i32, i32* %5, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ugt i32 %101, 1023
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  store i32 2, i32* %5, align 4
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = mul i32 %108, 1024
  %110 = load i32, i32* %5, align 4
  %111 = add i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = mul i32 20, %112
  %114 = icmp ule i32 %111, %113
  br i1 %114, label %98, label %115

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %119, %115
  %117 = load i32, i32* %6, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = mul i32 %120, 1024
  %122 = load i32, i32* %5, align 4
  %123 = sub i32 %121, %122
  %124 = load i32, i32* %8, align 4
  %125 = mul i32 50, %124
  %126 = icmp ule i32 %123, %125
  br i1 %126, label %116, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %130 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, 255
  %135 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %136 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* %5, align 4
  %140 = lshr i32 %139, 8
  %141 = call i32 @ADF4371_TIMEOUT(i32 %140)
  %142 = or i32 %141, 4
  %143 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %144 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %149 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @ADF4371_VCO_ALC_TOUT(i32 %152)
  %154 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %155 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  store i32 %153, i32* %157, align 4
  %158 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %159 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ADF4371_REG(i32 48)
  %162 = load %struct.adf4371_state*, %struct.adf4371_state** %3, align 8
  %163 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @regmap_bulk_write(i32 %160, i32 %161, i32* %164, i32 5)
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %127, %66, %49, %30, %18
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ADF4371_REG(i32) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @device_property_read_bool(i32*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADF4371_MUTE_LD(i32) #1

declare dso_local i32 @ADF4371_ADDR_ASC(i32) #1

declare dso_local i32 @ADF4371_ADDR_ASC_R(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @ADF4371_TIMEOUT(i32) #1

declare dso_local i32 @ADF4371_VCO_ALC_TOUT(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
