; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_find_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_find_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { i32 }

@gpio_suffixes = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@GPIO_ACTIVE_LOW = common dso_local global i64 0, align 8
@OF_GPIO_SINGLE_ENDED = common dso_local global i32 0, align 4
@OF_GPIO_OPEN_DRAIN = common dso_local global i32 0, align 4
@GPIO_OPEN_DRAIN = common dso_local global i64 0, align 8
@GPIO_OPEN_SOURCE = common dso_local global i64 0, align 8
@OF_GPIO_TRANSITORY = common dso_local global i32 0, align 4
@GPIO_TRANSITORY = common dso_local global i64 0, align 8
@OF_GPIO_PULL_UP = common dso_local global i32 0, align 4
@GPIO_PULL_UP = common dso_local global i64 0, align 8
@OF_GPIO_PULL_DOWN = common dso_local global i32 0, align 4
@GPIO_PULL_DOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_desc* @of_find_gpio(%struct.device* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.gpio_desc*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %57, %4
  %15 = load i32, i32* %13, align 4
  %16 = load i8**, i8*** @gpio_suffixes, align 8
  %17 = call i32 @ARRAY_SIZE(i8** %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %24 = load i8*, i8** %7, align 8
  %25 = load i8**, i8*** @gpio_suffixes, align 8
  %26 = load i32, i32* %13, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %23, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %29)
  br label %39

31:                                               ; preds = %19
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %33 = load i8**, i8*** @gpio_suffixes, align 8
  %34 = load i32, i32* %13, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %32, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %31, %22
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.gpio_desc* @of_get_named_gpiod_flags(i32 %42, i8* %43, i32 %44, i32* %11)
  store %struct.gpio_desc* %45, %struct.gpio_desc** %12, align 8
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %47 = call i64 @IS_ERR(%struct.gpio_desc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %51 = call i32 @PTR_ERR(%struct.gpio_desc* %50)
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %39
  br label %60

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %13, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %14

60:                                               ; preds = %55, %14
  %61 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %62 = call i64 @IS_ERR(%struct.gpio_desc* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %66 = call i32 @PTR_ERR(%struct.gpio_desc* %65)
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call %struct.gpio_desc* @of_find_spi_gpio(%struct.device* %71, i8* %72, i32* %11)
  store %struct.gpio_desc* %73, %struct.gpio_desc** %12, align 8
  br label %74

74:                                               ; preds = %70, %64, %60
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %76 = call i64 @IS_ERR(%struct.gpio_desc* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %80 = call i32 @PTR_ERR(%struct.gpio_desc* %79)
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i64*, i64** %9, align 8
  %89 = call %struct.gpio_desc* @of_find_spi_cs_gpio(%struct.device* %85, i8* %86, i32 %87, i64* %88)
  store %struct.gpio_desc* %89, %struct.gpio_desc** %12, align 8
  %90 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %91 = call i64 @IS_ERR(%struct.gpio_desc* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  %94 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  store %struct.gpio_desc* %94, %struct.gpio_desc** %5, align 8
  br label %193

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %78, %74
  %97 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %98 = call i64 @IS_ERR(%struct.gpio_desc* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %102 = call i32 @PTR_ERR(%struct.gpio_desc* %101)
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.device*, %struct.device** %6, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call %struct.gpio_desc* @of_find_regulator_gpio(%struct.device* %107, i8* %108, i32* %11)
  store %struct.gpio_desc* %109, %struct.gpio_desc** %12, align 8
  br label %110

110:                                              ; preds = %106, %100, %96
  %111 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %112 = call i64 @IS_ERR(%struct.gpio_desc* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %116 = call i32 @PTR_ERR(%struct.gpio_desc* %115)
  %117 = load i32, i32* @ENOENT, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call %struct.gpio_desc* @of_find_arizona_gpio(%struct.device* %121, i8* %122, i32* %11)
  store %struct.gpio_desc* %123, %struct.gpio_desc** %12, align 8
  br label %124

124:                                              ; preds = %120, %114, %110
  %125 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %126 = call i64 @IS_ERR(%struct.gpio_desc* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  store %struct.gpio_desc* %129, %struct.gpio_desc** %5, align 8
  br label %193

130:                                              ; preds = %124
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i64, i64* @GPIO_ACTIVE_LOW, align 8
  %137 = load i64*, i64** %9, align 8
  %138 = load i64, i64* %137, align 8
  %139 = or i64 %138, %136
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @OF_GPIO_SINGLE_ENDED, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %140
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @OF_GPIO_OPEN_DRAIN, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i64, i64* @GPIO_OPEN_DRAIN, align 8
  %152 = load i64*, i64** %9, align 8
  %153 = load i64, i64* %152, align 8
  %154 = or i64 %153, %151
  store i64 %154, i64* %152, align 8
  br label %160

155:                                              ; preds = %145
  %156 = load i64, i64* @GPIO_OPEN_SOURCE, align 8
  %157 = load i64*, i64** %9, align 8
  %158 = load i64, i64* %157, align 8
  %159 = or i64 %158, %156
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %140
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @OF_GPIO_TRANSITORY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i64, i64* @GPIO_TRANSITORY, align 8
  %168 = load i64*, i64** %9, align 8
  %169 = load i64, i64* %168, align 8
  %170 = or i64 %169, %167
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %166, %161
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @OF_GPIO_PULL_UP, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load i64, i64* @GPIO_PULL_UP, align 8
  %178 = load i64*, i64** %9, align 8
  %179 = load i64, i64* %178, align 8
  %180 = or i64 %179, %177
  store i64 %180, i64* %178, align 8
  br label %181

181:                                              ; preds = %176, %171
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @OF_GPIO_PULL_DOWN, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load i64, i64* @GPIO_PULL_DOWN, align 8
  %188 = load i64*, i64** %9, align 8
  %189 = load i64, i64* %188, align 8
  %190 = or i64 %189, %187
  store i64 %190, i64* %188, align 8
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  store %struct.gpio_desc* %192, %struct.gpio_desc** %5, align 8
  br label %193

193:                                              ; preds = %191, %128, %93
  %194 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  ret %struct.gpio_desc* %194
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local %struct.gpio_desc* @of_get_named_gpiod_flags(i32, i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @of_find_spi_gpio(%struct.device*, i8*, i32*) #1

declare dso_local %struct.gpio_desc* @of_find_spi_cs_gpio(%struct.device*, i8*, i32, i64*) #1

declare dso_local %struct.gpio_desc* @of_find_regulator_gpio(%struct.device*, i8*, i32*) #1

declare dso_local %struct.gpio_desc* @of_find_arizona_gpio(%struct.device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
