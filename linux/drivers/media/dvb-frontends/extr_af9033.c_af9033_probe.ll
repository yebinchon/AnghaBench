; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32 }
%struct.af9033_config = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.af9033_dev*, %struct.TYPE_9__ }
%struct.af9033_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_9__, %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.af9033_config* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }

@af9033_probe.regmap_config = internal constant %struct.regmap_config { i32 24, i32 8 }, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Unsupported clock %u Hz. Only 12000000 Hz is supported currently\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"firmware version: LINK %d.%d.%d.%d - OFDM %d.%d.%d.%d\0A\00", align 1
@af9033_ops = common dso_local global %struct.af9033_config zeroinitializer, align 8
@af9033_pid_filter = common dso_local global i32 0, align 4
@af9033_pid_filter_ctrl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Afatech AF9033 successfully attached\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @af9033_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9033_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.af9033_config*, align 8
  %7 = alloca %struct.af9033_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.af9033_config*, %struct.af9033_config** %13, align 8
  store %struct.af9033_config* %14, %struct.af9033_config** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.af9033_dev* @kzalloc(i32 72, i32 %15)
  store %struct.af9033_dev* %16, %struct.af9033_dev** %7, align 8
  %17 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %18 = icmp ne %struct.af9033_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %193

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %25 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %24, i32 0, i32 7
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %27 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %26, i32 0, i32 6
  %28 = load %struct.af9033_config*, %struct.af9033_config** %6, align 8
  %29 = call i32 @memcpy(%struct.TYPE_9__* %27, %struct.af9033_config* %28, i32 12)
  %30 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %31 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %41 [
    i32 136, label %34
    i32 135, label %37
    i32 134, label %40
  ]

34:                                               ; preds = %22
  %35 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %36 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %42

37:                                               ; preds = %22
  %38 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %39 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %42

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %22, %40
  br label %42

42:                                               ; preds = %41, %37, %34
  %43 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %44 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 12000000
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %54 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(%struct.TYPE_10__* %52, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %190

58:                                               ; preds = %42
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = call i32 @regmap_init_i2c(%struct.i2c_client* %59, %struct.regmap_config* @af9033_probe.regmap_config)
  %61 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %62 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %64 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %70 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %8, align 4
  br label %190

73:                                               ; preds = %58
  %74 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %75 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %81 [
    i32 133, label %78
    i32 132, label %78
    i32 131, label %78
    i32 130, label %78
    i32 129, label %78
    i32 128, label %78
  ]

78:                                               ; preds = %73, %73, %73, %73, %73, %73
  %79 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %80 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  store i32 19452, i32* %10, align 4
  br label %84

81:                                               ; preds = %73
  %82 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %83 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %82, i32 0, i32 3
  store i32 1, i32* %83, align 4
  store i32 33769, i32* %10, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %86 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %90 = call i32 @regmap_bulk_read(i32 %87, i32 %88, i32* %89, i32 4)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %185

94:                                               ; preds = %84
  %95 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %96 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  %99 = call i32 @regmap_bulk_read(i32 %97, i32 8405393, i32* %98, i32 4)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %185

103:                                              ; preds = %94
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  %115 = load i32, i32* %114, align 16
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_info(%struct.TYPE_10__* %105, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %109, i32 %111, i32 %113, i32 %115, i32 %117, i32 %119, i32 %121)
  %123 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %124 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %103
  %128 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %129 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @regmap_write(i32 %130, i32 8388684, i32 1)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %185

135:                                              ; preds = %127
  %136 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %137 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @regmap_write(i32 %138, i32 8388608, i32 0)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %185

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %103
  %145 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %146 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = call i32 @memcpy(%struct.TYPE_9__* %147, %struct.af9033_config* @af9033_ops, i32 12)
  %149 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %150 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %151 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store %struct.af9033_dev* %149, %struct.af9033_dev** %152, align 8
  %153 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %154 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %153, i32 0, i32 5
  %155 = load %struct.af9033_config*, %struct.af9033_config** %6, align 8
  %156 = getelementptr inbounds %struct.af9033_config, %struct.af9033_config* %155, i32 0, i32 2
  %157 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %156, align 8
  store %struct.TYPE_7__* %154, %struct.TYPE_7__** %157, align 8
  %158 = load %struct.af9033_config*, %struct.af9033_config** %6, align 8
  %159 = getelementptr inbounds %struct.af9033_config, %struct.af9033_config* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = icmp ne %struct.TYPE_8__* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %144
  %163 = load i32, i32* @af9033_pid_filter, align 4
  %164 = load %struct.af9033_config*, %struct.af9033_config** %6, align 8
  %165 = getelementptr inbounds %struct.af9033_config, %struct.af9033_config* %164, i32 0, i32 1
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* @af9033_pid_filter_ctrl, align 4
  %169 = load %struct.af9033_config*, %struct.af9033_config** %6, align 8
  %170 = getelementptr inbounds %struct.af9033_config, %struct.af9033_config* %169, i32 0, i32 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 4
  br label %173

173:                                              ; preds = %162, %144
  %174 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %175 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.af9033_config*, %struct.af9033_config** %6, align 8
  %178 = getelementptr inbounds %struct.af9033_config, %struct.af9033_config* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %181 = call i32 @i2c_set_clientdata(%struct.i2c_client* %179, %struct.af9033_dev* %180)
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_info(%struct.TYPE_10__* %183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %199

185:                                              ; preds = %142, %134, %102, %93
  %186 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %187 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @regmap_exit(i32 %188)
  br label %190

190:                                              ; preds = %185, %68, %48
  %191 = load %struct.af9033_dev*, %struct.af9033_dev** %7, align 8
  %192 = call i32 @kfree(%struct.af9033_dev* %191)
  br label %193

193:                                              ; preds = %190, %19
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @dev_dbg(%struct.TYPE_10__* %195, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %193, %173
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.af9033_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.af9033_config*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.af9033_dev*) #1

declare dso_local i32 @regmap_exit(i32) #1

declare dso_local i32 @kfree(%struct.af9033_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
