; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_config = type { i32 }
%struct.dvb_frontend = type { %struct.TYPE_19__, %struct.dib9000_state* }
%struct.TYPE_19__ = type { i64 }
%struct.dib9000_state = type { i32, i32, %struct.TYPE_20__, %struct.TYPE_20__, %struct.TYPE_12__, i32, %struct.TYPE_16__, %struct.dvb_frontend**, i64, i32, %struct.TYPE_14__, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32*, i32*, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.i2c_adapter*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_19__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.i2c_adapter = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DIB9000_GPIO_DEFAULT_DIRECTIONS = common dso_local global i32 0, align 4
@DIB9000_GPIO_DEFAULT_VALUES = common dso_local global i32 0, align 4
@DIB9000_GPIO_DEFAULT_PWM_POS = common dso_local global i32 0, align 4
@dib9000_ops = common dso_local global %struct.dib9000_config zeroinitializer, align 4
@OUTMODE_MPEG2_SERIAL = common dso_local global i64 0, align 8
@OUTMODE_MPEG2_PAR_GATED_CLK = common dso_local global i64 0, align 8
@OUTMODE_MPEG2_FIFO = common dso_local global i64 0, align 8
@DIB7000MC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DIB9000_FW TUNER ACCESS\00", align 1
@dib9000_tuner_algo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DIB9000_FW COMPONENT BUS ACCESS\00", align 1
@dib9000_component_bus_algo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @dib9000_attach(%struct.i2c_adapter* %0, i32 %1, %struct.dib9000_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib9000_config*, align 8
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca %struct.dib9000_state*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dib9000_config* %2, %struct.dib9000_config** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 152, i32 %10)
  %12 = bitcast i8* %11 to %struct.dib9000_state*
  store %struct.dib9000_state* %12, %struct.dib9000_state** %9, align 8
  %13 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %14 = icmp eq %struct.dib9000_state* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %216

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 16, i32 %17)
  %19 = bitcast i8* %18 to %struct.dvb_frontend*
  store %struct.dvb_frontend* %19, %struct.dvb_frontend** %8, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %21 = icmp eq %struct.dvb_frontend* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %24 = call i32 @kfree(%struct.dib9000_state* %23)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %216

25:                                               ; preds = %16
  %26 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %27 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.dib9000_config*, %struct.dib9000_config** %7, align 8
  %31 = call i32 @memcpy(%struct.TYPE_19__* %29, %struct.dib9000_config* %30, i32 4)
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %33 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %34 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store %struct.i2c_adapter* %32, %struct.i2c_adapter** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %38 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %41 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %44 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %47 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %50 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @DIB9000_GPIO_DEFAULT_DIRECTIONS, align 4
  %53 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %54 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %53, i32 0, i32 13
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @DIB9000_GPIO_DEFAULT_VALUES, align 4
  %56 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %57 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @DIB9000_GPIO_DEFAULT_PWM_POS, align 4
  %59 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %60 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 4
  %61 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %62 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %61, i32 0, i32 10
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %67 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %66, i32 0, i32 10
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = call i32 @mutex_init(i32* %69)
  %71 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %72 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %71, i32 0, i32 10
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = call i32 @mutex_init(i32* %74)
  %76 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %77 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = call i32 @mutex_init(i32* %79)
  %81 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %82 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %81, i32 0, i32 9
  %83 = call i32 @mutex_init(i32* %82)
  %84 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %85 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %84, i32 0, i32 8
  store i64 0, i64* %85, align 8
  %86 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %87 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %86, i32 0, i32 0
  store i32 -2, i32* %87, align 8
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %89 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %90 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %89, i32 0, i32 7
  %91 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %90, align 8
  %92 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %91, i64 0
  store %struct.dvb_frontend* %88, %struct.dvb_frontend** %92, align 8
  %93 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %94 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %95 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %94, i32 0, i32 1
  store %struct.dib9000_state* %93, %struct.dib9000_state** %95, align 8
  %96 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %97 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %96, i32 0, i32 7
  %98 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %97, align 8
  %99 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %98, i64 0
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %99, align 8
  %101 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %100, i32 0, i32 0
  %102 = call i32 @memcpy(%struct.TYPE_19__* %101, %struct.dib9000_config* @dib9000_ops, i32 4)
  %103 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %104 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @OUTMODE_MPEG2_SERIAL, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %25
  %112 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %113 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @OUTMODE_MPEG2_PAR_GATED_CLK, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %111
  %121 = load i64, i64* @OUTMODE_MPEG2_FIFO, align 8
  %122 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %123 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  store i64 %121, i64* %126, align 8
  br label %127

127:                                              ; preds = %120, %111, %25
  %128 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %129 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %128, i32 0, i32 4
  %130 = call i64 @dib9000_identify(%struct.TYPE_12__* %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %213

133:                                              ; preds = %127
  %134 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %135 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %134, i32 0, i32 5
  %136 = load i32, i32* @DIB7000MC, align 4
  %137 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %138 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %139, align 8
  %141 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %142 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dibx000_init_i2c_master(i32* %135, i32 %136, %struct.i2c_adapter* %140, i32 %144)
  %146 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %147 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %151 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %155 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @strscpy(i32 %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 4)
  %159 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %160 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  store i32* @dib9000_tuner_algo, i32** %161, align 8
  %162 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %163 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  store i32* null, i32** %164, align 8
  %165 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %166 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %165, i32 0, i32 2
  %167 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %168 = call i32 @i2c_set_adapdata(%struct.TYPE_20__* %166, %struct.dib9000_state* %167)
  %169 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %170 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %169, i32 0, i32 2
  %171 = call i64 @i2c_add_adapter(%struct.TYPE_20__* %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %133
  br label %213

174:                                              ; preds = %133
  %175 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %176 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %180 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  store i32 %178, i32* %182, align 4
  %183 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %184 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @strscpy(i32 %186, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %188 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %189 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  store i32* @dib9000_component_bus_algo, i32** %190, align 8
  %191 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %192 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  store i32* null, i32** %193, align 8
  %194 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %195 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %194, i32 0, i32 1
  store i32 340, i32* %195, align 4
  %196 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %197 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %196, i32 0, i32 3
  %198 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %199 = call i32 @i2c_set_adapdata(%struct.TYPE_20__* %197, %struct.dib9000_state* %198)
  %200 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %201 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %200, i32 0, i32 3
  %202 = call i64 @i2c_add_adapter(%struct.TYPE_20__* %201)
  %203 = icmp slt i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %174
  br label %209

205:                                              ; preds = %174
  %206 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %207 = call i32 @dib9000_fw_reset(%struct.dvb_frontend* %206)
  %208 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  store %struct.dvb_frontend* %208, %struct.dvb_frontend** %4, align 8
  br label %216

209:                                              ; preds = %204
  %210 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %211 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %210, i32 0, i32 2
  %212 = call i32 @i2c_del_adapter(%struct.TYPE_20__* %211)
  br label %213

213:                                              ; preds = %209, %173, %132
  %214 = load %struct.dib9000_state*, %struct.dib9000_state** %9, align 8
  %215 = call i32 @kfree(%struct.dib9000_state* %214)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %216

216:                                              ; preds = %213, %205, %22, %15
  %217 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %217
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.dib9000_state*) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.dib9000_config*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @dib9000_identify(%struct.TYPE_12__*) #1

declare dso_local i32 @dibx000_init_i2c_master(i32*, i32, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_20__*, %struct.dib9000_state*) #1

declare dso_local i64 @i2c_add_adapter(%struct.TYPE_20__*) #1

declare dso_local i32 @dib9000_fw_reset(%struct.dvb_frontend*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
