; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_diseqc_send_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_diseqc_send_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88ds3103_dev* }
%struct.m88ds3103_dev = type { i32, %struct.TYPE_2__*, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"fe_sec_mini_cmd=%d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid fe_sec_mini_cmd\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"diseqc tx took %u ms\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"diseqc tx timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@SEND_BURST_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @m88ds3103_diseqc_send_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_diseqc_send_burst(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m88ds3103_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %13, align 8
  store %struct.m88ds3103_dev* %14, %struct.m88ds3103_dev** %6, align 8
  %15 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %16 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %15, i32 0, i32 3
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %7, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %23 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %124

29:                                               ; preds = %2
  %30 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %31 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 5
  store i32 %35, i32* %9, align 4
  %36 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %36, i32 162, i32 224, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %124

42:                                               ; preds = %29
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %46 [
    i32 129, label %44
    i32 128, label %45
  ]

44:                                               ; preds = %42
  store i32 2, i32* %10, align 4
  br label %52

45:                                               ; preds = %42
  store i32 1, i32* %10, align 4
  br label %52

46:                                               ; preds = %42
  %47 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %124

52:                                               ; preds = %45, %44
  %53 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %54 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @regmap_write(i32 %55, i32 161, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %124

61:                                               ; preds = %52
  %62 = load i64, i64* @jiffies, align 8
  %63 = call i64 @msecs_to_jiffies(i32 40)
  %64 = add i64 %62, %63
  store i64 %64, i64* %11, align 8
  %65 = call i32 @usleep_range(i32 8500, i32 12500)
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %84, %61
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @time_after(i64 %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi i1 [ false, %66 ], [ %73, %71 ]
  br i1 %75, label %76, label %88

76:                                               ; preds = %74
  %77 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %78 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @regmap_read(i32 %79, i32 161, i32* %9)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %124

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = lshr i32 %85, 6
  %87 = and i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %66

88:                                               ; preds = %74
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i64, i64* @jiffies, align 8
  %95 = call i32 @jiffies_to_msecs(i64 %94)
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @jiffies_to_msecs(i64 %96)
  %98 = sub nsw i32 %97, 40
  %99 = sub nsw i32 %95, %98
  %100 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %111

101:                                              ; preds = %88
  %102 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %106 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %105, i32 161, i32 192, i32 64)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %124

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %91
  %112 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %113 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %112, i32 162, i32 192, i32 128)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %124

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @ETIMEDOUT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %124

123:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %130

124:                                              ; preds = %120, %116, %109, %83, %60, %46, %41, %26
  %125 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %124, %123
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @m88ds3103_update_bits(%struct.m88ds3103_dev*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
