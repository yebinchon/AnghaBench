; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_read_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9033_dev* }
%struct.af9033_dev = type { i32, i64, %struct.TYPE_4__, %struct.i2c_client* }
%struct.TYPE_4__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FE_SCALE_DECIBEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @af9033_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9033_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.af9033_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.af9033_dev*, %struct.af9033_dev** %12, align 8
  store %struct.af9033_dev* %13, %struct.af9033_dev** %6, align 8
  %14 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %15 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %14, i32 0, i32 3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %7, align 8
  %17 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %18 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.dtv_frontend_properties* %19, %struct.dtv_frontend_properties** %8, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FE_SCALE_DECIBEL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %89

32:                                               ; preds = %2
  %33 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %34 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @div_s64(i32 %44, i32 100)
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %88

47:                                               ; preds = %32
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @div_s64(i32 %54, i32 1000)
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %58 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @regmap_read(i32 %59, i32 8452355, i32* %10)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %92

64:                                               ; preds = %47
  %65 = load i32, i32* %10, align 4
  %66 = lshr i32 %65, 0
  %67 = and i32 %66, 3
  switch i32 %67, label %86 [
    i32 0, label %68
    i32 1, label %74
    i32 2, label %80
  ]

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 65535
  %72 = sdiv i32 %71, 23
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %87

74:                                               ; preds = %64
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 65535
  %78 = sdiv i32 %77, 26
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  br label %87

80:                                               ; preds = %64
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 65535
  %84 = sdiv i32 %83, 32
  %85 = load i32*, i32** %5, align 8
  store i32 %84, i32* %85, align 4
  br label %87

86:                                               ; preds = %64
  br label %92

87:                                               ; preds = %80, %74, %68
  br label %88

88:                                               ; preds = %87, %37
  br label %91

89:                                               ; preds = %2
  %90 = load i32*, i32** %5, align 8
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %89, %88
  store i32 0, i32* %3, align 4
  br label %98

92:                                               ; preds = %86, %63
  %93 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %92, %91
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
