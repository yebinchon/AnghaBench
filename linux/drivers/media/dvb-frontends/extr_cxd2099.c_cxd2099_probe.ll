; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_cxd2099_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_cxd2099_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32 }
%struct.TYPE_3__ = type { i32*, i32*, %struct.cxd* }
%struct.cxd = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.cxd2099_cfg* }
%struct.cxd2099_cfg = type { %struct.TYPE_3__** }
%struct.i2c_device_id = type { i32 }

@cxd2099_probe.rm_cfg = internal constant %struct.regmap_config { i32 8, i32 8 }, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No CXD2099AR detected at 0x%02x\0A\00", align 1
@en_templ = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Attached CXD2099AR at 0x%02x\0A\00", align 1
@buffermode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Using CXD2099AR buffer mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cxd2099_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2099_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.cxd*, align 8
  %7 = alloca %struct.cxd2099_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.cxd2099_cfg*, %struct.cxd2099_cfg** %12, align 8
  store %struct.cxd2099_cfg* %13, %struct.cxd2099_cfg** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.cxd* @kzalloc(i32 56, i32 %14)
  store %struct.cxd* %15, %struct.cxd** %6, align 8
  %16 = load %struct.cxd*, %struct.cxd** %6, align 8
  %17 = icmp ne %struct.cxd* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %112

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.cxd*, %struct.cxd** %6, align 8
  %24 = getelementptr inbounds %struct.cxd, %struct.cxd* %23, i32 0, i32 7
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.cxd*, %struct.cxd** %6, align 8
  %26 = getelementptr inbounds %struct.cxd, %struct.cxd* %25, i32 0, i32 6
  %27 = load %struct.cxd2099_cfg*, %struct.cxd2099_cfg** %7, align 8
  %28 = call i32 @memcpy(i32* %26, %struct.cxd2099_cfg* %27, i32 4)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @regmap_init_i2c(%struct.i2c_client* %29, %struct.regmap_config* @cxd2099_probe.rm_cfg)
  %31 = load %struct.cxd*, %struct.cxd** %6, align 8
  %32 = getelementptr inbounds %struct.cxd, %struct.cxd* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.cxd*, %struct.cxd** %6, align 8
  %34 = getelementptr inbounds %struct.cxd, %struct.cxd* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load %struct.cxd*, %struct.cxd** %6, align 8
  %40 = getelementptr inbounds %struct.cxd, %struct.cxd* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %9, align 4
  br label %109

43:                                               ; preds = %21
  %44 = load %struct.cxd*, %struct.cxd** %6, align 8
  %45 = getelementptr inbounds %struct.cxd, %struct.cxd* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regmap_read(i32 %46, i32 0, i32* %8)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_info(%struct.TYPE_4__* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %104

57:                                               ; preds = %43
  %58 = load %struct.cxd*, %struct.cxd** %6, align 8
  %59 = getelementptr inbounds %struct.cxd, %struct.cxd* %58, i32 0, i32 5
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.cxd*, %struct.cxd** %6, align 8
  %62 = getelementptr inbounds %struct.cxd, %struct.cxd* %61, i32 0, i32 0
  store i32 255, i32* %62, align 8
  %63 = load %struct.cxd*, %struct.cxd** %6, align 8
  %64 = getelementptr inbounds %struct.cxd, %struct.cxd* %63, i32 0, i32 1
  store i32 74, i32* %64, align 4
  %65 = load %struct.cxd*, %struct.cxd** %6, align 8
  %66 = getelementptr inbounds %struct.cxd, %struct.cxd* %65, i32 0, i32 2
  store i32 27, i32* %66, align 8
  %67 = load %struct.cxd*, %struct.cxd** %6, align 8
  %68 = getelementptr inbounds %struct.cxd, %struct.cxd* %67, i32 0, i32 4
  %69 = bitcast %struct.TYPE_3__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 bitcast (%struct.TYPE_3__* @en_templ to i8*), i64 24, i1 false)
  %70 = load %struct.cxd*, %struct.cxd** %6, align 8
  %71 = load %struct.cxd*, %struct.cxd** %6, align 8
  %72 = getelementptr inbounds %struct.cxd, %struct.cxd* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store %struct.cxd* %70, %struct.cxd** %73, align 8
  %74 = load %struct.cxd*, %struct.cxd** %6, align 8
  %75 = call i32 @init(%struct.cxd* %74)
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_info(%struct.TYPE_4__* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.cxd*, %struct.cxd** %6, align 8
  %83 = getelementptr inbounds %struct.cxd, %struct.cxd* %82, i32 0, i32 4
  %84 = load %struct.cxd2099_cfg*, %struct.cxd2099_cfg** %7, align 8
  %85 = getelementptr inbounds %struct.cxd2099_cfg, %struct.cxd2099_cfg* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %85, align 8
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %86, align 8
  %87 = load i32, i32* @buffermode, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %57
  %90 = load %struct.cxd*, %struct.cxd** %6, align 8
  %91 = getelementptr inbounds %struct.cxd, %struct.cxd* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  %93 = load %struct.cxd*, %struct.cxd** %6, align 8
  %94 = getelementptr inbounds %struct.cxd, %struct.cxd* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  br label %100

96:                                               ; preds = %57
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_info(%struct.TYPE_4__* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = load %struct.cxd*, %struct.cxd** %6, align 8
  %103 = call i32 @i2c_set_clientdata(%struct.i2c_client* %101, %struct.cxd* %102)
  store i32 0, i32* %3, align 4
  br label %114

104:                                              ; preds = %50
  %105 = load %struct.cxd*, %struct.cxd** %6, align 8
  %106 = getelementptr inbounds %struct.cxd, %struct.cxd* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @regmap_exit(i32 %107)
  br label %109

109:                                              ; preds = %104, %38
  %110 = load %struct.cxd*, %struct.cxd** %6, align 8
  %111 = call i32 @kfree(%struct.cxd* %110)
  br label %112

112:                                              ; preds = %109, %18
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %100
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.cxd* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.cxd2099_cfg*, i32) #1

declare dso_local i32 @regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init(%struct.cxd*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.cxd*) #1

declare dso_local i32 @regmap_exit(i32) #1

declare dso_local i32 @kfree(%struct.cxd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
