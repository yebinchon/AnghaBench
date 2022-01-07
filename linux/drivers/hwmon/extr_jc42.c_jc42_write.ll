; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.jc42_data = type { i32*, i32, i32, %struct.i2c_client*, i32 }
%struct.i2c_client = type { i32 }

@t_min = common dso_local global i64 0, align 8
@temp_regs = common dso_local global i32* null, align 8
@t_max = common dso_local global i64 0, align 8
@t_crit = common dso_local global i64 0, align 8
@JC42_TEMP_MIN_EXTENDED = common dso_local global i32 0, align 4
@JC42_TEMP_MIN = common dso_local global i32 0, align 4
@JC42_TEMP_MAX = common dso_local global i32 0, align 4
@JC42_CFG_HYST_MASK = common dso_local global i32 0, align 4
@JC42_CFG_HYST_SHIFT = common dso_local global i32 0, align 4
@JC42_REG_CONFIG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64)* @jc42_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jc42_write(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.jc42_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.jc42_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.jc42_data* %17, %struct.jc42_data** %11, align 8
  %18 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %19 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %18, i32 0, i32 3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %12, align 8
  %21 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %22 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %157 [
    i32 128, label %25
    i32 129, label %49
    i32 131, label %73
    i32 130, label %97
  ]

25:                                               ; preds = %5
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %28 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @jc42_temp_to_reg(i64 %26, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %33 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @t_min, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %31, i32* %36, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %38 = load i32*, i32** @temp_regs, align 8
  %39 = load i64, i64* @t_min, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %43 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @t_min, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %37, i32 %41, i32 %47)
  store i32 %48, i32* %15, align 4
  br label %160

49:                                               ; preds = %5
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %52 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @jc42_temp_to_reg(i64 %50, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %57 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @t_max, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %62 = load i32*, i32** @temp_regs, align 8
  %63 = load i64, i64* @t_max, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %67 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @t_max, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %61, i32 %65, i32 %71)
  store i32 %72, i32* %15, align 4
  br label %160

73:                                               ; preds = %5
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %76 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @jc42_temp_to_reg(i64 %74, i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %81 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @t_crit, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %86 = load i32*, i32** @temp_regs, align 8
  %87 = load i64, i64* @t_crit, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %91 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @t_crit, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %85, i32 %89, i32 %95)
  store i32 %96, i32* %15, align 4
  br label %160

97:                                               ; preds = %5
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %100 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @JC42_TEMP_MIN_EXTENDED, align 4
  br label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @JC42_TEMP_MIN, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = sub nsw i32 %108, 6000
  %110 = load i32, i32* @JC42_TEMP_MAX, align 4
  %111 = call i64 @clamp_val(i64 %98, i32 %109, i32 %110)
  store i64 %111, i64* %10, align 8
  %112 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %113 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @t_crit, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @jc42_temp_from_reg(i32 %117)
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %10, align 8
  %121 = sub nsw i64 %119, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %107
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %126, 2250
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 1, i32* %14, align 4
  br label %135

129:                                              ; preds = %125
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %130, 4500
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 2, i32* %14, align 4
  br label %134

133:                                              ; preds = %129
  store i32 3, i32* %14, align 4
  br label %134

134:                                              ; preds = %133, %132
  br label %135

135:                                              ; preds = %134, %128
  br label %136

136:                                              ; preds = %135, %107
  %137 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %138 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @JC42_CFG_HYST_MASK, align 4
  %141 = xor i32 %140, -1
  %142 = and i32 %139, %141
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @JC42_CFG_HYST_SHIFT, align 4
  %145 = shl i32 %143, %144
  %146 = or i32 %142, %145
  %147 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %148 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %150 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %149, i32 0, i32 3
  %151 = load %struct.i2c_client*, %struct.i2c_client** %150, align 8
  %152 = load i32, i32* @JC42_REG_CONFIG, align 4
  %153 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %154 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %151, i32 %152, i32 %155)
  store i32 %156, i32* %15, align 4
  br label %160

157:                                              ; preds = %5
  %158 = load i32, i32* @EOPNOTSUPP, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %157, %136, %73, %49, %25
  %161 = load %struct.jc42_data*, %struct.jc42_data** %11, align 8
  %162 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %161, i32 0, i32 2
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* %15, align 4
  ret i32 %164
}

declare dso_local %struct.jc42_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @jc42_temp_to_reg(i64, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @jc42_temp_from_reg(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
