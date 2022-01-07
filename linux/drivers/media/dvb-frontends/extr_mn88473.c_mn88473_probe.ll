; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88473.c_mn88473_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88473.c_mn88473_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32 }
%struct.i2c_client = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.mn88473_config* }
%struct.mn88473_config = type { i32, %struct.TYPE_5__**, i64 }
%struct.TYPE_5__ = type { %struct.i2c_client*, i32 }
%struct.i2c_device_id = type { i32 }
%struct.mn88473_dev = type { i32, %struct.i2c_client**, %struct.i2c_client**, %struct.TYPE_5__, i64 }

@mn88473_probe.regmap_config = internal constant %struct.regmap_config { i32 8, i32 8 }, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"frontend pointer not defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"I2C registration failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"2nd I2C registration failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"chip id=%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@mn88473_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Panasonic MN88473 successfully identified\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mn88473_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88473_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mn88473_config*, align 8
  %7 = alloca %struct.mn88473_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.mn88473_config*, %struct.mn88473_config** %12, align 8
  store %struct.mn88473_config* %13, %struct.mn88473_config** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mn88473_config*, %struct.mn88473_config** %6, align 8
  %18 = getelementptr inbounds %struct.mn88473_config, %struct.mn88473_config* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %18, align 8
  %20 = icmp eq %struct.TYPE_5__** %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 @dev_err(%struct.TYPE_6__* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %302

27:                                               ; preds = %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mn88473_dev* @kzalloc(i32 48, i32 %28)
  store %struct.mn88473_dev* %29, %struct.mn88473_dev** %7, align 8
  %30 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %31 = icmp eq %struct.mn88473_dev* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %302

35:                                               ; preds = %27
  %36 = load %struct.mn88473_config*, %struct.mn88473_config** %6, align 8
  %37 = getelementptr inbounds %struct.mn88473_config, %struct.mn88473_config* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.mn88473_config*, %struct.mn88473_config** %6, align 8
  %42 = getelementptr inbounds %struct.mn88473_config, %struct.mn88473_config* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %45 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  br label %49

46:                                               ; preds = %35
  %47 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %48 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %47, i32 0, i32 4
  store i64 -1, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.mn88473_config*, %struct.mn88473_config** %6, align 8
  %51 = getelementptr inbounds %struct.mn88473_config, %struct.mn88473_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.mn88473_config*, %struct.mn88473_config** %6, align 8
  %56 = getelementptr inbounds %struct.mn88473_config, %struct.mn88473_config* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %59 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %63

60:                                               ; preds = %49
  %61 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %62 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %61, i32 0, i32 0
  store i32 25000000, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %54
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %66 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %65, i32 0, i32 2
  %67 = load %struct.i2c_client**, %struct.i2c_client*** %66, align 8
  %68 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %67, i64 0
  store %struct.i2c_client* %64, %struct.i2c_client** %68, align 8
  %69 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %70 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %69, i32 0, i32 2
  %71 = load %struct.i2c_client**, %struct.i2c_client*** %70, align 8
  %72 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %71, i64 0
  %73 = load %struct.i2c_client*, %struct.i2c_client** %72, align 8
  %74 = call i8* @regmap_init_i2c(%struct.i2c_client* %73, %struct.regmap_config* @mn88473_probe.regmap_config)
  %75 = bitcast i8* %74 to %struct.i2c_client*
  %76 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %77 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %76, i32 0, i32 1
  %78 = load %struct.i2c_client**, %struct.i2c_client*** %77, align 8
  %79 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %78, i64 0
  store %struct.i2c_client* %75, %struct.i2c_client** %79, align 8
  %80 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %81 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %80, i32 0, i32 1
  %82 = load %struct.i2c_client**, %struct.i2c_client*** %81, align 8
  %83 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %82, i64 0
  %84 = load %struct.i2c_client*, %struct.i2c_client** %83, align 8
  %85 = call i64 @IS_ERR(%struct.i2c_client* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %63
  %88 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %89 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %88, i32 0, i32 1
  %90 = load %struct.i2c_client**, %struct.i2c_client*** %89, align 8
  %91 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %90, i64 0
  %92 = load %struct.i2c_client*, %struct.i2c_client** %91, align 8
  %93 = call i32 @PTR_ERR(%struct.i2c_client* %92)
  store i32 %93, i32* %8, align 4
  br label %299

94:                                               ; preds = %63
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @i2c_new_dummy_device(i32 %97, i32 26)
  %99 = bitcast i8* %98 to %struct.i2c_client*
  %100 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %101 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %100, i32 0, i32 2
  %102 = load %struct.i2c_client**, %struct.i2c_client*** %101, align 8
  %103 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %102, i64 1
  store %struct.i2c_client* %99, %struct.i2c_client** %103, align 8
  %104 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %105 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %104, i32 0, i32 2
  %106 = load %struct.i2c_client**, %struct.i2c_client*** %105, align 8
  %107 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %106, i64 1
  %108 = load %struct.i2c_client*, %struct.i2c_client** %107, align 8
  %109 = call i64 @IS_ERR(%struct.i2c_client* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %94
  %112 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %113 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %112, i32 0, i32 2
  %114 = load %struct.i2c_client**, %struct.i2c_client*** %113, align 8
  %115 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %114, i64 1
  %116 = load %struct.i2c_client*, %struct.i2c_client** %115, align 8
  %117 = call i32 @PTR_ERR(%struct.i2c_client* %116)
  store i32 %117, i32* %8, align 4
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = call i32 @dev_err(%struct.TYPE_6__* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %292

121:                                              ; preds = %94
  %122 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %123 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %122, i32 0, i32 2
  %124 = load %struct.i2c_client**, %struct.i2c_client*** %123, align 8
  %125 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %124, i64 1
  %126 = load %struct.i2c_client*, %struct.i2c_client** %125, align 8
  %127 = call i8* @regmap_init_i2c(%struct.i2c_client* %126, %struct.regmap_config* @mn88473_probe.regmap_config)
  %128 = bitcast i8* %127 to %struct.i2c_client*
  %129 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %130 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %129, i32 0, i32 1
  %131 = load %struct.i2c_client**, %struct.i2c_client*** %130, align 8
  %132 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %131, i64 1
  store %struct.i2c_client* %128, %struct.i2c_client** %132, align 8
  %133 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %134 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %133, i32 0, i32 1
  %135 = load %struct.i2c_client**, %struct.i2c_client*** %134, align 8
  %136 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %135, i64 1
  %137 = load %struct.i2c_client*, %struct.i2c_client** %136, align 8
  %138 = call i64 @IS_ERR(%struct.i2c_client* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %121
  %141 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %142 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %141, i32 0, i32 1
  %143 = load %struct.i2c_client**, %struct.i2c_client*** %142, align 8
  %144 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %143, i64 1
  %145 = load %struct.i2c_client*, %struct.i2c_client** %144, align 8
  %146 = call i32 @PTR_ERR(%struct.i2c_client* %145)
  store i32 %146, i32* %8, align 4
  br label %285

147:                                              ; preds = %121
  %148 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %149 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %148, i32 0, i32 2
  %150 = load %struct.i2c_client**, %struct.i2c_client*** %149, align 8
  %151 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %150, i64 1
  %152 = load %struct.i2c_client*, %struct.i2c_client** %151, align 8
  %153 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %154 = call i32 @i2c_set_clientdata(%struct.i2c_client* %152, %struct.mn88473_dev* %153)
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @i2c_new_dummy_device(i32 %157, i32 28)
  %159 = bitcast i8* %158 to %struct.i2c_client*
  %160 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %161 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %160, i32 0, i32 2
  %162 = load %struct.i2c_client**, %struct.i2c_client*** %161, align 8
  %163 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %162, i64 2
  store %struct.i2c_client* %159, %struct.i2c_client** %163, align 8
  %164 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %165 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %164, i32 0, i32 2
  %166 = load %struct.i2c_client**, %struct.i2c_client*** %165, align 8
  %167 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %166, i64 2
  %168 = load %struct.i2c_client*, %struct.i2c_client** %167, align 8
  %169 = call i64 @IS_ERR(%struct.i2c_client* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %147
  %172 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %173 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %172, i32 0, i32 2
  %174 = load %struct.i2c_client**, %struct.i2c_client*** %173, align 8
  %175 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %174, i64 2
  %176 = load %struct.i2c_client*, %struct.i2c_client** %175, align 8
  %177 = call i32 @PTR_ERR(%struct.i2c_client* %176)
  store i32 %177, i32* %8, align 4
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %178, i32 0, i32 0
  %180 = call i32 @dev_err(%struct.TYPE_6__* %179, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %278

181:                                              ; preds = %147
  %182 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %183 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %182, i32 0, i32 2
  %184 = load %struct.i2c_client**, %struct.i2c_client*** %183, align 8
  %185 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %184, i64 2
  %186 = load %struct.i2c_client*, %struct.i2c_client** %185, align 8
  %187 = call i8* @regmap_init_i2c(%struct.i2c_client* %186, %struct.regmap_config* @mn88473_probe.regmap_config)
  %188 = bitcast i8* %187 to %struct.i2c_client*
  %189 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %190 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %189, i32 0, i32 1
  %191 = load %struct.i2c_client**, %struct.i2c_client*** %190, align 8
  %192 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %191, i64 2
  store %struct.i2c_client* %188, %struct.i2c_client** %192, align 8
  %193 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %194 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %193, i32 0, i32 1
  %195 = load %struct.i2c_client**, %struct.i2c_client*** %194, align 8
  %196 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %195, i64 2
  %197 = load %struct.i2c_client*, %struct.i2c_client** %196, align 8
  %198 = call i64 @IS_ERR(%struct.i2c_client* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %181
  %201 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %202 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %201, i32 0, i32 1
  %203 = load %struct.i2c_client**, %struct.i2c_client*** %202, align 8
  %204 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %203, i64 2
  %205 = load %struct.i2c_client*, %struct.i2c_client** %204, align 8
  %206 = call i32 @PTR_ERR(%struct.i2c_client* %205)
  store i32 %206, i32* %8, align 4
  br label %271

207:                                              ; preds = %181
  %208 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %209 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %208, i32 0, i32 2
  %210 = load %struct.i2c_client**, %struct.i2c_client*** %209, align 8
  %211 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %210, i64 2
  %212 = load %struct.i2c_client*, %struct.i2c_client** %211, align 8
  %213 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %214 = call i32 @i2c_set_clientdata(%struct.i2c_client* %212, %struct.mn88473_dev* %213)
  %215 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %216 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %215, i32 0, i32 1
  %217 = load %struct.i2c_client**, %struct.i2c_client*** %216, align 8
  %218 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %217, i64 2
  %219 = load %struct.i2c_client*, %struct.i2c_client** %218, align 8
  %220 = call i32 @regmap_read(%struct.i2c_client* %219, i32 255, i32* %9)
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %207
  br label %264

224:                                              ; preds = %207
  %225 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %226 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %225, i32 0, i32 0
  %227 = load i32, i32* %9, align 4
  %228 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %226, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 3
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load i32, i32* @ENODEV, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %8, align 4
  br label %264

234:                                              ; preds = %224
  %235 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %236 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %235, i32 0, i32 1
  %237 = load %struct.i2c_client**, %struct.i2c_client*** %236, align 8
  %238 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %237, i64 2
  %239 = load %struct.i2c_client*, %struct.i2c_client** %238, align 8
  %240 = call i32 @regmap_write(%struct.i2c_client* %239, i32 5, i32 62)
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %234
  br label %264

244:                                              ; preds = %234
  %245 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %246 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 1
  %248 = call i32 @memcpy(i32* %247, i32* @mn88473_ops, i32 4)
  %249 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %250 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %251 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  store %struct.i2c_client* %249, %struct.i2c_client** %252, align 8
  %253 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %254 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %253, i32 0, i32 3
  %255 = load %struct.mn88473_config*, %struct.mn88473_config** %6, align 8
  %256 = getelementptr inbounds %struct.mn88473_config, %struct.mn88473_config* %255, i32 0, i32 1
  %257 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %256, align 8
  store %struct.TYPE_5__* %254, %struct.TYPE_5__** %257, align 8
  %258 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %259 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %260 = call i32 @i2c_set_clientdata(%struct.i2c_client* %258, %struct.mn88473_dev* %259)
  %261 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %262 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %261, i32 0, i32 0
  %263 = call i32 @dev_info(%struct.TYPE_6__* %262, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %308

264:                                              ; preds = %243, %231, %223
  %265 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %266 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %265, i32 0, i32 1
  %267 = load %struct.i2c_client**, %struct.i2c_client*** %266, align 8
  %268 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %267, i64 2
  %269 = load %struct.i2c_client*, %struct.i2c_client** %268, align 8
  %270 = call i32 @regmap_exit(%struct.i2c_client* %269)
  br label %271

271:                                              ; preds = %264, %200
  %272 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %273 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %272, i32 0, i32 2
  %274 = load %struct.i2c_client**, %struct.i2c_client*** %273, align 8
  %275 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %274, i64 2
  %276 = load %struct.i2c_client*, %struct.i2c_client** %275, align 8
  %277 = call i32 @i2c_unregister_device(%struct.i2c_client* %276)
  br label %278

278:                                              ; preds = %271, %171
  %279 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %280 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %279, i32 0, i32 1
  %281 = load %struct.i2c_client**, %struct.i2c_client*** %280, align 8
  %282 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %281, i64 1
  %283 = load %struct.i2c_client*, %struct.i2c_client** %282, align 8
  %284 = call i32 @regmap_exit(%struct.i2c_client* %283)
  br label %285

285:                                              ; preds = %278, %140
  %286 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %287 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %286, i32 0, i32 2
  %288 = load %struct.i2c_client**, %struct.i2c_client*** %287, align 8
  %289 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %288, i64 1
  %290 = load %struct.i2c_client*, %struct.i2c_client** %289, align 8
  %291 = call i32 @i2c_unregister_device(%struct.i2c_client* %290)
  br label %292

292:                                              ; preds = %285, %111
  %293 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %294 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %293, i32 0, i32 1
  %295 = load %struct.i2c_client**, %struct.i2c_client*** %294, align 8
  %296 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %295, i64 0
  %297 = load %struct.i2c_client*, %struct.i2c_client** %296, align 8
  %298 = call i32 @regmap_exit(%struct.i2c_client* %297)
  br label %299

299:                                              ; preds = %292, %87
  %300 = load %struct.mn88473_dev*, %struct.mn88473_dev** %7, align 8
  %301 = call i32 @kfree(%struct.mn88473_dev* %300)
  br label %302

302:                                              ; preds = %299, %32, %21
  %303 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %304 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %303, i32 0, i32 0
  %305 = load i32, i32* %8, align 4
  %306 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_dbg(%struct.TYPE_6__* %304, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* %8, align 4
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %302, %244
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.mn88473_dev* @kzalloc(i32, i32) #1

declare dso_local i8* @regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i8* @i2c_new_dummy_device(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mn88473_dev*) #1

declare dso_local i32 @regmap_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @regmap_exit(%struct.i2c_client*) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @kfree(%struct.mn88473_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
