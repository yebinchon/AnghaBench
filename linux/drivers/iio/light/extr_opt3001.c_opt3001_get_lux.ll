; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_get_lux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_get_lux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt3001 = type { i32, i32, i64, i32, i32, i32, i32, i32, i64, i32 }

@OPT3001_LOW_LIMIT = common dso_local global i32 0, align 4
@OPT3001_LOW_LIMIT_EOC_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to write register %02x\0A\00", align 1
@OPT3001_CONFIGURATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to read register %02x\0A\00", align 1
@OPT3001_CONFIGURATION_M_SINGLE = common dso_local global i32 0, align 4
@OPT3001_RESULT_READY_LONG = common dso_local global i64 0, align 8
@OPT3001_INT_TIME_SHORT = common dso_local global i64 0, align 8
@OPT3001_RESULT_READY_SHORT = common dso_local global i64 0, align 8
@OPT3001_CONFIGURATION_CRF = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@OPT3001_RESULT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opt3001*, i32*, i32*)* @opt3001_get_lux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_get_lux(%struct.opt3001* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.opt3001*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.opt3001* %0, %struct.opt3001** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %15 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %20 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OPT3001_LOW_LIMIT, align 4
  %23 = load i32, i32* @OPT3001_LOW_LIMIT_EOC_ENABLE, align 4
  %24 = call i32 @i2c_smbus_write_word_swapped(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %29 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OPT3001_LOW_LIMIT, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %209

34:                                               ; preds = %18
  %35 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %36 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %3
  %38 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %39 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %41 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %44 = call i32 @i2c_smbus_read_word_swapped(i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %49 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %143

53:                                               ; preds = %37
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %56 = load i32, i32* @OPT3001_CONFIGURATION_M_SINGLE, align 4
  %57 = call i32 @opt3001_set_mode(%struct.opt3001* %55, i32* %10, i32 %56)
  %58 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %59 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @i2c_smbus_write_word_swapped(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %68 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %71 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %143

72:                                               ; preds = %53
  %73 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %74 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %79 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %82 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* @OPT3001_RESULT_READY_LONG, align 8
  %85 = call i32 @msecs_to_jiffies(i64 %84)
  %86 = call i32 @wait_event_timeout(i32 %80, i32 %83, i32 %85)
  store i32 %86, i32* %8, align 4
  br label %142

87:                                               ; preds = %72
  %88 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %89 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @OPT3001_INT_TIME_SHORT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i64, i64* @OPT3001_RESULT_READY_SHORT, align 8
  br label %97

95:                                               ; preds = %87
  %96 = load i64, i64* @OPT3001_RESULT_READY_LONG, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @msleep(i64 %99)
  %101 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %102 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %105 = call i32 @i2c_smbus_read_word_swapped(i32 %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %97
  %109 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %110 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %113 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %143

114:                                              ; preds = %97
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @OPT3001_CONFIGURATION_CRF, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @ETIMEDOUT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %8, align 4
  br label %143

122:                                              ; preds = %114
  %123 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %124 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @OPT3001_RESULT, align 4
  %127 = call i32 @i2c_smbus_read_word_swapped(i32 %125, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %122
  %131 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %132 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @OPT3001_RESULT, align 4
  %135 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  br label %143

136:                                              ; preds = %122
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %139 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %141 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %136, %77
  br label %143

143:                                              ; preds = %142, %130, %119, %108, %66, %47
  %144 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %145 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %144, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %150 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* @ETIMEDOUT, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %4, align 4
  br label %209

157:                                              ; preds = %151
  %158 = load i32, i32* %8, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %4, align 4
  br label %209

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %165 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %193

168:                                              ; preds = %163
  %169 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %170 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 12
  %173 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %174 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %172, %175
  store i32 %176, i32* %12, align 4
  %177 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %178 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @OPT3001_LOW_LIMIT, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @i2c_smbus_write_word_swapped(i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %168
  %186 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %187 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @OPT3001_LOW_LIMIT, align 4
  %190 = call i32 @dev_err(i32 %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %4, align 4
  br label %209

192:                                              ; preds = %168
  br label %193

193:                                              ; preds = %192, %163
  %194 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %195 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @OPT3001_REG_EXPONENT(i32 %196)
  store i32 %197, i32* %11, align 4
  %198 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %199 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @OPT3001_REG_MANTISSA(i32 %200)
  store i32 %201, i32* %9, align 4
  %202 = load %struct.opt3001*, %struct.opt3001** %5, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32*, i32** %6, align 8
  %206 = load i32*, i32** %7, align 8
  %207 = call i32 @opt3001_to_iio_ret(%struct.opt3001* %202, i32 %203, i32 %204, i32* %205, i32* %206)
  %208 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %193, %185, %160, %154, %27
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @opt3001_set_mode(%struct.opt3001*, i32*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @OPT3001_REG_EXPONENT(i32) #1

declare dso_local i32 @OPT3001_REG_MANTISSA(i32) #1

declare dso_local i32 @opt3001_to_iio_ret(%struct.opt3001*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
