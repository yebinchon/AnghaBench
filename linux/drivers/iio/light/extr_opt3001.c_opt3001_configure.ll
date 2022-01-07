; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt3001 = type { i8*, i8*, i32, i32, i8*, i8*, i32 }

@OPT3001_CONFIGURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read register %02x\0A\00", align 1
@OPT3001_CONFIGURATION_RN_MASK = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_RN_AUTO = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_CT = common dso_local global i32 0, align 4
@OPT3001_INT_TIME_LONG = common dso_local global i32 0, align 4
@OPT3001_INT_TIME_SHORT = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_M_SHUTDOWN = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_L = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_POL = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_ME = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_FC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to write register %02x\0A\00", align 1
@OPT3001_LOW_LIMIT = common dso_local global i32 0, align 4
@OPT3001_HIGH_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opt3001*)* @opt3001_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_configure(%struct.opt3001* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.opt3001*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.opt3001* %0, %struct.opt3001** %3, align 8
  %6 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %7 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %10 = call i32 @i2c_smbus_read_word_swapped(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %15 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %122

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @OPT3001_CONFIGURATION_RN_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @OPT3001_CONFIGURATION_RN_AUTO, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @OPT3001_CONFIGURATION_CT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i32, i32* @OPT3001_INT_TIME_LONG, align 4
  %35 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %36 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  br label %41

37:                                               ; preds = %20
  %38 = load i32, i32* @OPT3001_INT_TIME_SHORT, align 4
  %39 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %40 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %43 = load i32, i32* @OPT3001_CONFIGURATION_M_SHUTDOWN, align 4
  %44 = call i32 @opt3001_set_mode(%struct.opt3001* %42, i32* %5, i32 %43)
  %45 = load i32, i32* @OPT3001_CONFIGURATION_L, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @OPT3001_CONFIGURATION_POL, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @OPT3001_CONFIGURATION_ME, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @OPT3001_CONFIGURATION_FC_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %61 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @i2c_smbus_write_word_swapped(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %41
  %69 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %70 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %122

75:                                               ; preds = %41
  %76 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %77 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @OPT3001_LOW_LIMIT, align 4
  %80 = call i32 @i2c_smbus_read_word_swapped(i32 %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %85 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @OPT3001_LOW_LIMIT, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %122

90:                                               ; preds = %75
  %91 = load i32, i32* %4, align 4
  %92 = call i8* @OPT3001_REG_MANTISSA(i32 %91)
  %93 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %94 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i8* @OPT3001_REG_EXPONENT(i32 %95)
  %97 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %98 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  %99 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %100 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @OPT3001_HIGH_LIMIT, align 4
  %103 = call i32 @i2c_smbus_read_word_swapped(i32 %101, i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %90
  %107 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %108 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @OPT3001_HIGH_LIMIT, align 4
  %111 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %122

113:                                              ; preds = %90
  %114 = load i32, i32* %4, align 4
  %115 = call i8* @OPT3001_REG_MANTISSA(i32 %114)
  %116 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %117 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i8* @OPT3001_REG_EXPONENT(i32 %118)
  %120 = load %struct.opt3001*, %struct.opt3001** %3, align 8
  %121 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %113, %106, %83, %68, %13
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @opt3001_set_mode(%struct.opt3001*, i32*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

declare dso_local i8* @OPT3001_REG_MANTISSA(i32) #1

declare dso_local i8* @OPT3001_REG_EXPONENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
