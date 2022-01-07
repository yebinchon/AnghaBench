; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4000.c_vcnl4200_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4000.c_vcnl4200_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcnl4000_data = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@VCNL4200_DEV_ID = common dso_local global i32 0, align 4
@VCNL4040_DEV_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"device id 0x%x\00", align 1
@VCNL4200_AL_CONF = common dso_local global i32 0, align 4
@VCNL4200_PS_CONF1 = common dso_local global i32 0, align 4
@VCNL4200_AL_DATA = common dso_local global i32 0, align 4
@VCNL4200_PS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcnl4000_data*)* @vcnl4200_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4200_init(%struct.vcnl4000_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcnl4000_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vcnl4000_data* %0, %struct.vcnl4000_data** %3, align 8
  %6 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %7 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %6, i32 0, i32 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = load i32, i32* @VCNL4200_DEV_ID, align 4
  %10 = call i32 @i2c_smbus_read_word_data(%struct.TYPE_7__* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %117

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 255
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 128
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %22 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %21, i32 0, i32 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i32, i32* @VCNL4040_DEV_ID, align 4
  %25 = call i32 @i2c_smbus_read_word_data(%struct.TYPE_7__* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %117

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 129
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %117

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %15
  %40 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %41 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %40, i32 0, i32 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 15
  %49 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %50 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %52 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %51, i32 0, i32 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* @VCNL4200_AL_CONF, align 4
  %55 = call i32 @i2c_smbus_write_word_data(%struct.TYPE_7__* %53, i32 %54, i32 0)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %39
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %117

60:                                               ; preds = %39
  %61 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %62 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %61, i32 0, i32 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* @VCNL4200_PS_CONF1, align 4
  %65 = call i32 @i2c_smbus_write_word_data(%struct.TYPE_7__* %63, i32 %64, i32 0)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %117

70:                                               ; preds = %60
  %71 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %72 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %71, i32 0, i32 1
  store i32 24000, i32* %72, align 4
  %73 = load i32, i32* @VCNL4200_AL_DATA, align 4
  %74 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %75 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @VCNL4200_PS_DATA, align 4
  %78 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %79 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* %5, align 4
  switch i32 %81, label %100 [
    i32 128, label %82
    i32 129, label %91
  ]

82:                                               ; preds = %70
  %83 = call i8* @ktime_set(i32 0, i32 54000000)
  %84 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %85 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i8* %83, i8** %86, align 8
  %87 = call i8* @ktime_set(i32 0, i32 4200000)
  %88 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %89 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  store i8* %87, i8** %90, align 8
  br label %100

91:                                               ; preds = %70
  %92 = call i8* @ktime_set(i32 0, i32 100000000)
  %93 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %94 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  store i8* %92, i8** %95, align 8
  %96 = call i8* @ktime_set(i32 0, i32 100000000)
  %97 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %98 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store i8* %96, i8** %99, align 8
  br label %100

100:                                              ; preds = %70, %91, %82
  %101 = call i8* @ktime_set(i32 0, i32 0)
  %102 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %103 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = call i8* @ktime_set(i32 0, i32 0)
  %106 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %107 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  %109 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %110 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i32 @mutex_init(i32* %111)
  %113 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %3, align 8
  %114 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = call i32 @mutex_init(i32* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %100, %68, %58, %35, %28, %13
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_data(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @ktime_set(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
