; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_ext_clk_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_ext_clk_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis16480 = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.device_node = type { i32 }

@ADIS16480_REG_FNCTIO_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"DIO%x pin supports only one function at a time\0A\00", align 1
@ADIS16480_SYNC_EN_MSK = common dso_local global i32 0, align 4
@ADIS16480_SYNC_SEL_MSK = common dso_local global i32 0, align 4
@ADIS16480_SYNC_MODE_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adis16480*, %struct.device_node*, i32)* @adis16480_ext_clk_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_ext_clk_config(%struct.adis16480* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adis16480*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adis16480* %0, %struct.adis16480** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %14 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %13, i32 0, i32 1
  %15 = load i32, i32* @ADIS16480_REG_FNCTIO_CTRL, align 4
  %16 = call i32 @adis_read_reg_16(%struct.TYPE_7__* %14, i32 %15, i32* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %4, align 4
  br label %85

21:                                               ; preds = %3
  %22 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call i32 @adis16480_of_get_ext_clk_pin(%struct.adis16480* %22, %struct.device_node* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @ADIS16480_DRDY_SEL(i32 %26)
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %31 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %35, 1
  %37 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %29, %21
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ADIS16480_SYNC_EN(i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @ADIS16480_SYNC_SEL(i32 %41)
  %43 = or i32 %40, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @ADIS16480_SYNC_EN_MSK, align 4
  %45 = load i32, i32* @ADIS16480_SYNC_SEL_MSK, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %48 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %38
  %54 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %55 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ADIS16480_SYNC_MODE(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @ADIS16480_SYNC_MODE_MSK, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %53, %38
  %64 = load i32, i32* %9, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %72 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %71, i32 0, i32 1
  %73 = load i32, i32* @ADIS16480_REG_FNCTIO_CTRL, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @adis_write_reg_16(%struct.TYPE_7__* %72, i32 %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %85

80:                                               ; preds = %63
  %81 = load %struct.adis16480*, %struct.adis16480** %5, align 8
  %82 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @clk_prepare_enable(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %78, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @adis_read_reg_16(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @adis16480_of_get_ext_clk_pin(%struct.adis16480*, %struct.device_node*) #1

declare dso_local i32 @ADIS16480_DRDY_SEL(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @ADIS16480_SYNC_EN(i32) #1

declare dso_local i32 @ADIS16480_SYNC_SEL(i32) #1

declare dso_local i32 @ADIS16480_SYNC_MODE(i32) #1

declare dso_local i32 @adis_write_reg_16(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
