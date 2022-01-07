; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_priv = type { %struct.TYPE_6__, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i64*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.dvb_frontend = type { %struct.cxd2880_priv*, i32 }
%struct.cxd2880_config = type { i32, i32 }

@CXD2880_TNRDMD_CHIP_ID_UNKNOWN = common dso_local global i32 0, align 4
@cxd2880_attach.priv = internal global %struct.cxd2880_priv* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"invalid arg.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@cxd2880_dvbt_t2_ops = common dso_local global i32 0, align 4
@CXD2880_SPI_MODE_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"spi_device_initialize failed. %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"spi_device_create_spi failed. %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"io_spi_create failed. %d\0A\00", align 1
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"set bank to 0x00 failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"read chip id failed.\0A\00", align 1
@CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_0X = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_11 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"chip id invalid.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"CXD2880 driver version: Ver %s\0A\00", align 1
@CXD2880_TNRDMD_DRIVER_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @cxd2880_attach(%struct.dvb_frontend* %0, %struct.cxd2880_config* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.cxd2880_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.cxd2880_config* %1, %struct.cxd2880_config** %5, align 8
  %9 = load i32, i32* @CXD2880_TNRDMD_CHIP_ID_UNKNOWN, align 4
  store i32 %9, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = icmp ne %struct.dvb_frontend* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %128

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cxd2880_priv* @kzalloc(i32 32, i32 %15)
  store %struct.cxd2880_priv* %16, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %17 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %18 = icmp ne %struct.cxd2880_priv* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %128

20:                                               ; preds = %14
  %21 = load %struct.cxd2880_config*, %struct.cxd2880_config** %5, align 8
  %22 = getelementptr inbounds %struct.cxd2880_config, %struct.cxd2880_config* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %25 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cxd2880_config*, %struct.cxd2880_config** %5, align 8
  %27 = getelementptr inbounds %struct.cxd2880_config, %struct.cxd2880_config* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %30 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cxd2880_config*, %struct.cxd2880_config** %5, align 8
  %32 = getelementptr inbounds %struct.cxd2880_config, %struct.cxd2880_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %35 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %37, i32 0, i32 1
  %39 = call i32 @memcpy(i32* %38, i32* @cxd2880_dvbt_t2_ops, i32 4)
  %40 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %41 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %40, i32 0, i32 2
  %42 = load i32, i32* @CXD2880_SPI_MODE_0, align 4
  %43 = call i32 @cxd2880_spi_device_initialize(%struct.TYPE_7__* %41, i32 %42, i32 55000000)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %20
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %50 = call i32 @kfree(%struct.cxd2880_priv* %49)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %128

51:                                               ; preds = %20
  %52 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %53 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %52, i32 0, i32 1
  %54 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %55 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %54, i32 0, i32 2
  %56 = call i32 @cxd2880_spi_device_create_spi(i32* %53, %struct.TYPE_7__* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %63 = call i32 @kfree(%struct.cxd2880_priv* %62)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %128

64:                                               ; preds = %51
  %65 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %66 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %65, i32 0, i32 0
  %67 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %68 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %67, i32 0, i32 1
  %69 = call i32 @cxd2880_io_spi_create(%struct.TYPE_6__* %66, i32* %68, i32 0)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %76 = call i32 @kfree(%struct.cxd2880_priv* %75)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %128

77:                                               ; preds = %64
  %78 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %79 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %80, align 8
  %82 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %83 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %82, i32 0, i32 0
  %84 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %85 = call i32 %81(%struct.TYPE_6__* %83, i32 %84, i32 0, i32 0)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %91 = call i32 @kfree(%struct.cxd2880_priv* %90)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %128

92:                                               ; preds = %77
  %93 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %94 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32 (%struct.TYPE_6__*, i32, i32, i64*, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i64*, i32)** %95, align 8
  %97 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %98 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %97, i32 0, i32 0
  %99 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %100 = call i32 %96(%struct.TYPE_6__* %98, i32 %99, i32 253, i64* %8, i32 1)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %105 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %106 = call i32 @kfree(%struct.cxd2880_priv* %105)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %128

107:                                              ; preds = %92
  %108 = load i64, i64* %8, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_0X, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_11, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %119 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %120 = call i32 @kfree(%struct.cxd2880_priv* %119)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %128

121:                                              ; preds = %113, %107
  %122 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** @cxd2880_attach.priv, align 8
  %123 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %124 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %123, i32 0, i32 0
  store %struct.cxd2880_priv* %122, %struct.cxd2880_priv** %124, align 8
  %125 = load i32, i32* @CXD2880_TNRDMD_DRIVER_VERSION, align 4
  %126 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  %127 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend* %127, %struct.dvb_frontend** %3, align 8
  br label %128

128:                                              ; preds = %121, %117, %103, %88, %72, %59, %46, %19, %12
  %129 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %129
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.cxd2880_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cxd2880_spi_device_initialize(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cxd2880_priv*) #1

declare dso_local i32 @cxd2880_spi_device_create_spi(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @cxd2880_io_spi_create(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
