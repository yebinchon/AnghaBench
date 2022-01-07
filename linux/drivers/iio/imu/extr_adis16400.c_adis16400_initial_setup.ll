; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_initial_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_initial_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.adis16400_state = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ADIS16400_HAS_SLOW_MODE = common dso_local global i32 0, align 4
@ADIS16400_SPI_SLOW = common dso_local global i8* null, align 8
@ADIS16400_SPI_FAST = common dso_local global i8* null, align 8
@SPI_MODE_3 = common dso_local global i32 0, align 4
@ADIS16400_HAS_PROD_ID = common dso_local global i32 0, align 4
@ADIS16400_PRODUCT_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"adis%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Device ID(%u) and product ID(%u) do not match.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: prod_id 0x%04x at CS%d (irq %d)\0A\00", align 1
@ADIS16400_SMPL_PRD = common dso_local global i32 0, align 4
@ADIS16400_SMPL_PRD_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @adis16400_initial_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16400_initial_setup(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.adis16400_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call %struct.adis16400_state* @iio_priv(%struct.iio_dev* %9)
  store %struct.adis16400_state* %10, %struct.adis16400_state** %4, align 8
  %11 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %12 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ADIS16400_HAS_SLOW_MODE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i8*, i8** @ADIS16400_SPI_SLOW, align 8
  %21 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %22 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i8* %20, i8** %25, align 8
  br label %33

26:                                               ; preds = %1
  %27 = load i8*, i8** @ADIS16400_SPI_FAST, align 8
  %28 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %29 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* %27, i8** %32, align 8
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* @SPI_MODE_3, align 4
  %35 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %36 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32 %34, i32* %39, align 8
  %40 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %41 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @spi_setup(%struct.TYPE_6__* %43)
  %45 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %46 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %45, i32 0, i32 0
  %47 = call i32 @adis_initial_startup(%struct.TYPE_7__* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %147

52:                                               ; preds = %33
  %53 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %54 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ADIS16400_HAS_PROD_ID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %109

61:                                               ; preds = %52
  %62 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %63 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %62, i32 0, i32 0
  %64 = load i32, i32* @ADIS16400_PRODUCT_ID, align 4
  %65 = call i32 @adis_read_reg_16(%struct.TYPE_7__* %63, i32 %64, i32* %5)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %145

69:                                               ; preds = %61
  %70 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sscanf(i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %145

79:                                               ; preds = %69
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %85 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @dev_warn(i32* %85, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %79
  %90 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 1
  %92 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %93 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %97 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %103 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95, i32 %101, i32 %107)
  br label %109

109:                                              ; preds = %89, %52
  %110 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %111 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ADIS16400_HAS_SLOW_MODE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %144

118:                                              ; preds = %109
  %119 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %120 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %119, i32 0, i32 0
  %121 = load i32, i32* @ADIS16400_SMPL_PRD, align 4
  %122 = call i32 @adis_read_reg_16(%struct.TYPE_7__* %120, i32 %121, i32* %6)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %145

126:                                              ; preds = %118
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @ADIS16400_SMPL_PRD_DIV_MASK, align 4
  %129 = and i32 %127, %128
  %130 = icmp ult i32 %129, 10
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i8*, i8** @ADIS16400_SPI_FAST, align 8
  %133 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %134 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i8* %132, i8** %137, align 8
  %138 = load %struct.adis16400_state*, %struct.adis16400_state** %4, align 8
  %139 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = call i32 @spi_setup(%struct.TYPE_6__* %141)
  br label %143

143:                                              ; preds = %131, %126
  br label %144

144:                                              ; preds = %143, %109
  br label %145

145:                                              ; preds = %144, %125, %76, %68
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %50
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.adis16400_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spi_setup(%struct.TYPE_6__*) #1

declare dso_local i32 @adis_initial_startup(%struct.TYPE_7__*) #1

declare dso_local i32 @adis_read_reg_16(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
