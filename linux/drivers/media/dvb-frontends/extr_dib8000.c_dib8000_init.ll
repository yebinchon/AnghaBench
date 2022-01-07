; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_config = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.dvb_frontend = type { %struct.TYPE_11__, %struct.dib8000_state* }
%struct.TYPE_11__ = type { i64 }
%struct.dib8000_state = type { i32, %struct.TYPE_12__, %struct.TYPE_13__, i32, i32, %struct.dvb_frontend**, %struct.TYPE_11__, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.i2c_adapter*, i32, i32*, i32, i32 }
%struct.i2c_adapter = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"dib8000_init\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@OUTMODE_MPEG2_SERIAL = common dso_local global i64 0, align 8
@OUTMODE_MPEG2_PAR_GATED_CLK = common dso_local global i64 0, align 8
@OUTMODE_MPEG2_FIFO = common dso_local global i64 0, align 8
@dib8000_ops = common dso_local global %struct.dib8000_config zeroinitializer, align 8
@DIB8000 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"DiB8096P tuner interface\00", align 1
@dib8096p_tuner_xfer_algo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dvb_frontend* (%struct.i2c_adapter*, i32, %struct.dib8000_config*)* @dib8000_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dvb_frontend* @dib8000_init(%struct.i2c_adapter* %0, i32 %1, %struct.dib8000_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib8000_config*, align 8
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca %struct.dib8000_state*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dib8000_config* %2, %struct.dib8000_config** %7, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 120, i32 %11)
  %13 = bitcast i8* %12 to %struct.dib8000_state*
  store %struct.dib8000_state* %13, %struct.dib8000_state** %9, align 8
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %15 = icmp eq %struct.dib8000_state* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %169

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 16, i32 %18)
  %20 = bitcast i8* %19 to %struct.dvb_frontend*
  store %struct.dvb_frontend* %20, %struct.dvb_frontend** %8, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %22 = icmp eq %struct.dvb_frontend* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %166

24:                                               ; preds = %17
  %25 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %26 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %25, i32 0, i32 6
  %27 = load %struct.dib8000_config*, %struct.dib8000_config** %7, align 8
  %28 = call i32 @memcpy(%struct.TYPE_11__* %26, %struct.dib8000_config* %27, i32 16)
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %30 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %31 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store %struct.i2c_adapter* %29, %struct.i2c_adapter** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %35 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %38 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %41 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 4
  %43 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %44 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %47 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %50 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %49, i32 0, i32 9
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %53 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %52, i32 0, i32 9
  %54 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %55 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  store i32* %53, i32** %56, align 8
  %57 = load %struct.dib8000_config*, %struct.dib8000_config** %7, align 8
  %58 = getelementptr inbounds %struct.dib8000_config, %struct.dib8000_config* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %61 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 4
  %62 = load %struct.dib8000_config*, %struct.dib8000_config** %7, align 8
  %63 = getelementptr inbounds %struct.dib8000_config, %struct.dib8000_config* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %66 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %68 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @OUTMODE_MPEG2_SERIAL, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %24
  %74 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %75 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @OUTMODE_MPEG2_PAR_GATED_CLK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i64, i64* @OUTMODE_MPEG2_FIFO, align 8
  %82 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %83 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %73, %24
  %86 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %87 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %88 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %87, i32 0, i32 5
  %89 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %88, align 8
  %90 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %89, i64 0
  store %struct.dvb_frontend* %86, %struct.dvb_frontend** %90, align 8
  %91 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %93 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %92, i32 0, i32 1
  store %struct.dib8000_state* %91, %struct.dib8000_state** %93, align 8
  %94 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %95 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %94, i32 0, i32 5
  %96 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %95, align 8
  %97 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %96, i64 0
  %98 = load %struct.dvb_frontend*, %struct.dvb_frontend** %97, align 8
  %99 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %98, i32 0, i32 0
  %100 = call i32 @memcpy(%struct.TYPE_11__* %99, %struct.dib8000_config* @dib8000_ops, i32 4)
  %101 = load %struct.dib8000_config*, %struct.dib8000_config** %7, align 8
  %102 = getelementptr inbounds %struct.dib8000_config, %struct.dib8000_config* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %107 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %109 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %108, i32 0, i32 2
  %110 = call i64 @dib8000_identify(%struct.TYPE_13__* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %85
  br label %166

113:                                              ; preds = %85
  %114 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %115 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %114, i32 0, i32 3
  %116 = load i32, i32* @DIB8000, align 4
  %117 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %118 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load %struct.i2c_adapter*, %struct.i2c_adapter** %119, align 8
  %121 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %122 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @dibx000_init_i2c_master(i32* %115, i32 %116, %struct.i2c_adapter* %120, i32 %124)
  %126 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %127 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @strscpy(i32 %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %131 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %132 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  store i32* @dib8096p_tuner_xfer_algo, i32** %133, align 8
  %134 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %135 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  store i32* null, i32** %136, align 8
  %137 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %138 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %139, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %145 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  store i32 %143, i32* %147, align 8
  %148 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %149 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %148, i32 0, i32 1
  %150 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %151 = call i32 @i2c_set_adapdata(%struct.TYPE_12__* %149, %struct.dib8000_state* %150)
  %152 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %153 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %152, i32 0, i32 1
  %154 = call i32 @i2c_add_adapter(%struct.TYPE_12__* %153)
  %155 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %156 = call i32 @dib8000_reset(%struct.dvb_frontend* %155)
  %157 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %158 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %159 = call i32 @dib8000_read_word(%struct.dib8000_state* %158, i32 285)
  %160 = and i32 %159, -97
  %161 = or i32 %160, 96
  %162 = call i32 @dib8000_write_word(%struct.dib8000_state* %157, i32 285, i32 %161)
  %163 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %164 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %163, i32 0, i32 0
  store i32 6000, i32* %164, align 8
  %165 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  store %struct.dvb_frontend* %165, %struct.dvb_frontend** %4, align 8
  br label %169

166:                                              ; preds = %112, %23
  %167 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  %168 = call i32 @kfree(%struct.dib8000_state* %167)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %169

169:                                              ; preds = %166, %113, %16
  %170 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %170
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.dib8000_config*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @dib8000_identify(%struct.TYPE_13__*) #1

declare dso_local i32 @dibx000_init_i2c_master(i32*, i32, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_12__*, %struct.dib8000_state*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_12__*) #1

declare dso_local i32 @dib8000_reset(%struct.dvb_frontend*) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @kfree(%struct.dib8000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
