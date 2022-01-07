; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_config = type { i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_13__, %struct.dib7000p_state* }
%struct.TYPE_13__ = type { i64 }
%struct.dib7000p_state = type { i64, %struct.TYPE_13__, %struct.TYPE_14__, %struct.i2c_adapter*, i32, %struct.TYPE_15__, i32, %struct.dvb_frontend, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32*, i32*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.i2c_adapter = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@OUTMODE_MPEG2_SERIAL = common dso_local global i64 0, align 8
@OUTMODE_MPEG2_PAR_GATED_CLK = common dso_local global i64 0, align 8
@OUTMODE_MPEG2_FIFO = common dso_local global i64 0, align 8
@dib7000p_ops = common dso_local global %struct.dib7000p_config zeroinitializer, align 4
@DIB7000P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DiB7090 tuner interface\00", align 1
@dib7090_tuner_xfer_algo = common dso_local global i32 0, align 4
@SOC7090 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dvb_frontend* (%struct.i2c_adapter*, i32, %struct.dib7000p_config*)* @dib7000p_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dvb_frontend* @dib7000p_init(%struct.i2c_adapter* %0, i32 %1, %struct.dib7000p_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib7000p_config*, align 8
  %8 = alloca %struct.dvb_frontend*, align 8
  %9 = alloca %struct.dib7000p_state*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dib7000p_config* %2, %struct.dib7000p_config** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dib7000p_state* @kzalloc(i32 96, i32 %10)
  store %struct.dib7000p_state* %11, %struct.dib7000p_state** %9, align 8
  %12 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %13 = icmp eq %struct.dib7000p_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %148

15:                                               ; preds = %3
  %16 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %17 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %16, i32 0, i32 1
  %18 = load %struct.dib7000p_config*, %struct.dib7000p_config** %7, align 8
  %19 = call i32 @memcpy(%struct.TYPE_13__* %17, %struct.dib7000p_config* %18, i32 8)
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %22 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %21, i32 0, i32 3
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %25 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dib7000p_config*, %struct.dib7000p_config** %7, align 8
  %27 = getelementptr inbounds %struct.dib7000p_config, %struct.dib7000p_config* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %30 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dib7000p_config*, %struct.dib7000p_config** %7, align 8
  %32 = getelementptr inbounds %struct.dib7000p_config, %struct.dib7000p_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %35 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %37 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OUTMODE_MPEG2_SERIAL, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %15
  %43 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %44 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OUTMODE_MPEG2_PAR_GATED_CLK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i64, i64* @OUTMODE_MPEG2_FIFO, align 8
  %51 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %52 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %42, %15
  %55 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %56 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %55, i32 0, i32 7
  store %struct.dvb_frontend* %56, %struct.dvb_frontend** %8, align 8
  %57 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %59 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %58, i32 0, i32 1
  store %struct.dib7000p_state* %57, %struct.dib7000p_state** %59, align 8
  %60 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %61 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %61, i32 0, i32 0
  %63 = call i32 @memcpy(%struct.TYPE_13__* %62, %struct.dib7000p_config* @dib7000p_ops, i32 4)
  %64 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %65 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %64, i32 0, i32 6
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %68 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %67, i32 1287, i32 3)
  %69 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %70 = call i64 @dib7000p_identify(%struct.dib7000p_state* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  br label %145

73:                                               ; preds = %54
  %74 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %75 = call i64 @dib7000p_read_word(%struct.dib7000p_state* %74, i32 897)
  %76 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %77 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %79 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %83 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 4
  %87 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %88 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %87, i32 0, i32 5
  %89 = load i32, i32* @DIB7000P, align 4
  %90 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %91 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %90, i32 0, i32 3
  %92 = load %struct.i2c_adapter*, %struct.i2c_adapter** %91, align 8
  %93 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %94 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dibx000_init_i2c_master(%struct.TYPE_15__* %88, i32 %89, %struct.i2c_adapter* %92, i32 %95)
  %97 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %98 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strscpy(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 4)
  %102 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %103 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  store i32* @dib7090_tuner_xfer_algo, i32** %104, align 8
  %105 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %106 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  store i32* null, i32** %107, align 8
  %108 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %109 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %108, i32 0, i32 3
  %110 = load %struct.i2c_adapter*, %struct.i2c_adapter** %109, align 8
  %111 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %115 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 8
  %118 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %119 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %118, i32 0, i32 2
  %120 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %121 = call i32 @i2c_set_adapdata(%struct.TYPE_14__* %119, %struct.dib7000p_state* %120)
  %122 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %123 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %122, i32 0, i32 2
  %124 = call i32 @i2c_add_adapter(%struct.TYPE_14__* %123)
  %125 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %126 = call i32 @dib7000p_demod_reset(%struct.dib7000p_state* %125)
  %127 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %128 = call i32 @dib7000p_reset_stats(%struct.dvb_frontend* %127)
  %129 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %130 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SOC7090, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %73
  %135 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %136 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %137 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @dib7090_set_output_mode(%struct.dvb_frontend* %135, i64 %139)
  %141 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  %142 = call i32 @dib7090_set_diversity_in(%struct.dvb_frontend* %141, i32 0)
  br label %143

143:                                              ; preds = %134, %73
  %144 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  store %struct.dvb_frontend* %144, %struct.dvb_frontend** %4, align 8
  br label %148

145:                                              ; preds = %72
  %146 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  %147 = call i32 @kfree(%struct.dib7000p_state* %146)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %148

148:                                              ; preds = %145, %143, %14
  %149 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %149
}

declare dso_local %struct.dib7000p_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.dib7000p_config*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i64 @dib7000p_identify(%struct.dib7000p_state*) #1

declare dso_local i64 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dibx000_init_i2c_master(%struct.TYPE_15__*, i32, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_14__*, %struct.dib7000p_state*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_14__*) #1

declare dso_local i32 @dib7000p_demod_reset(%struct.dib7000p_state*) #1

declare dso_local i32 @dib7000p_reset_stats(%struct.dvb_frontend*) #1

declare dso_local i32 @dib7090_set_output_mode(%struct.dvb_frontend*, i64) #1

declare dso_local i32 @dib7090_set_diversity_in(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @kfree(%struct.dib7000p_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
