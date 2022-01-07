; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9033_dev* }
%struct.af9033_dev = type { i32, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i64 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AF9033_TS_MODE_SERIAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @af9033_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9033_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.af9033_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.af9033_dev*, %struct.af9033_dev** %9, align 8
  store %struct.af9033_dev* %10, %struct.af9033_dev** %4, align 8
  %11 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %12 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %11, i32 0, i32 2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %18 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @regmap_write(i32 %19, i32 8388684, i32 1)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %77

24:                                               ; preds = %1
  %25 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %26 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regmap_write(i32 %27, i32 8388608, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %77

32:                                               ; preds = %24
  %33 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %34 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @regmap_read_poll_timeout(i32 %35, i32 8388684, i32 %36, i32 %39, i32 5000, i32 1000000)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %77

44:                                               ; preds = %32
  %45 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %46 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @regmap_update_bits(i32 %47, i32 8452900, i32 8, i32 8)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %77

52:                                               ; preds = %44
  %53 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %54 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AF9033_TS_MODE_SERIAL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %61 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @regmap_update_bits(i32 %62, i32 55575, i32 1, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %77

67:                                               ; preds = %59
  %68 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %69 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @regmap_update_bits(i32 %70, i32 55574, i32 1, i32 1)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %77

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %52
  store i32 0, i32* %2, align 4
  br label %83

77:                                               ; preds = %74, %66, %51, %43, %31, %23
  %78 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %76
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
