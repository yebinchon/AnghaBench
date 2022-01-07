; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lgdt3306a_config = type { %struct.dvb_frontend**, %struct.TYPE_12__*, i32*, %struct.TYPE_10__, i32 }
%struct.dvb_frontend = type { %struct.TYPE_11__, %struct.lgdt3306a_state* }
%struct.TYPE_11__ = type { i32* }
%struct.lgdt3306a_state = type { %struct.dvb_frontend**, %struct.TYPE_12__*, i32*, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { i32*, %struct.i2c_client* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@I2C_MUX_LOCKED = common dso_local global i32 0, align 4
@lgdt3306a_select = common dso_local global i32 0, align 4
@lgdt3306a_deselect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"LG Electronics LGDT3306A successfully identified\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"probe failed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lgdt3306a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lgdt3306a_config*, align 8
  %7 = alloca %struct.lgdt3306a_state*, align 8
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lgdt3306a_state* @kmemdup(i32 %13, i32 40, i32 %14)
  %16 = bitcast %struct.lgdt3306a_state* %15 to %struct.lgdt3306a_config*
  store %struct.lgdt3306a_config* %16, %struct.lgdt3306a_config** %6, align 8
  %17 = load %struct.lgdt3306a_config*, %struct.lgdt3306a_config** %6, align 8
  %18 = icmp eq %struct.lgdt3306a_config* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %111

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lgdt3306a_config*, %struct.lgdt3306a_config** %6, align 8
  %27 = getelementptr inbounds %struct.lgdt3306a_config, %struct.lgdt3306a_config* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.lgdt3306a_config*, %struct.lgdt3306a_config** %6, align 8
  %29 = bitcast %struct.lgdt3306a_config* %28 to %struct.lgdt3306a_state*
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.dvb_frontend* @lgdt3306a_attach(%struct.lgdt3306a_state* %29, i32 %32)
  store %struct.dvb_frontend* %33, %struct.dvb_frontend** %8, align 8
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %35 = icmp eq %struct.dvb_frontend* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %107

39:                                               ; preds = %22
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 1
  %43 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %42, align 8
  %44 = call i32 @i2c_set_clientdata(%struct.i2c_client* %40, %struct.lgdt3306a_state* %43)
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %45, i32 0, i32 1
  %47 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %46, align 8
  store %struct.lgdt3306a_state* %47, %struct.lgdt3306a_state** %7, align 8
  %48 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %7, align 8
  %49 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* @I2C_MUX_LOCKED, align 4
  %58 = load i32, i32* @lgdt3306a_select, align 4
  %59 = load i32, i32* @lgdt3306a_deselect, align 4
  %60 = call %struct.TYPE_12__* @i2c_mux_alloc(i32 %54, %struct.TYPE_13__* %56, i32 1, i32 0, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %7, align 8
  %62 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %61, i32 0, i32 1
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %62, align 8
  %63 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %7, align 8
  %64 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = icmp ne %struct.TYPE_12__* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %39
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %104

70:                                               ; preds = %39
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %7, align 8
  %73 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store %struct.i2c_client* %71, %struct.i2c_client** %75, align 8
  %76 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %7, align 8
  %77 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = call i32 @i2c_mux_add_adapter(%struct.TYPE_12__* %78, i32 0, i32 0, i32 0)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %104

83:                                               ; preds = %70
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %85 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  %87 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %7, align 8
  %88 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.lgdt3306a_config*, %struct.lgdt3306a_config** %6, align 8
  %95 = getelementptr inbounds %struct.lgdt3306a_config, %struct.lgdt3306a_config* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  store i32 %93, i32* %96, align 4
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %98 = load %struct.lgdt3306a_config*, %struct.lgdt3306a_config** %6, align 8
  %99 = getelementptr inbounds %struct.lgdt3306a_config, %struct.lgdt3306a_config* %98, i32 0, i32 0
  %100 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %99, align 8
  store %struct.dvb_frontend* %97, %struct.dvb_frontend** %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = call i32 @dev_info(%struct.TYPE_13__* %102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %117

104:                                              ; preds = %82, %67
  %105 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %7, align 8
  %106 = call i32 @kfree(%struct.lgdt3306a_state* %105)
  br label %107

107:                                              ; preds = %104, %36
  %108 = load %struct.lgdt3306a_config*, %struct.lgdt3306a_config** %6, align 8
  %109 = bitcast %struct.lgdt3306a_config* %108 to %struct.lgdt3306a_state*
  %110 = call i32 @kfree(%struct.lgdt3306a_state* %109)
  br label %111

111:                                              ; preds = %107, %19
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @dev_warn(%struct.TYPE_13__* %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %111, %83
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.lgdt3306a_state* @kmemdup(i32, i32, i32) #1

declare dso_local %struct.dvb_frontend* @lgdt3306a_attach(%struct.lgdt3306a_state*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lgdt3306a_state*) #1

declare dso_local %struct.TYPE_12__* @i2c_mux_alloc(i32, %struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @kfree(%struct.lgdt3306a_state*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_13__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
