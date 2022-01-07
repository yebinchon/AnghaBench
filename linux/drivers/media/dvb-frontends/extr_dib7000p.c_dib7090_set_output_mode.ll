; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7090_set_output_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7090_set_output_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"setting output mode TS_SERIAL using Mpeg Mux\0A\00", align 1
@MPEG_ON_HOSTBUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"setting output mode TS_SERIAL using Smooth bloc\0A\00", align 1
@DEMOUT_ON_HOSTBUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"setting output mode TS_PARALLEL_GATED using Mpeg Mux\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"setting output mode TS_PARALLEL_GATED using Smooth block\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"setting output mode TS_PARALLEL_CONT using Smooth block\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"setting output mode TS_FIFO using Smooth block\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"setting output mode MODE_DIVERSITY\0A\00", align 1
@DIV_ON_DIBTX = common dso_local global i32 0, align 4
@DIBTX_ON_HOSTBUS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"setting output mode MODE_ANALOG_ADC\0A\00", align 1
@ADC_ON_DIBTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dib7090_set_output_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7090_set_output_mode(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib7000p_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.dib7000p_state*, %struct.dib7000p_state** %12, align 8
  store %struct.dib7000p_state* %13, %struct.dib7000p_state** %5, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %15 = call i32 @dib7090_host_bus_drive(%struct.dib7000p_state* %14, i32 1)
  store i32 1792, i32* %8, align 4
  %16 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %17 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %16, i32 235)
  %18 = and i32 %17, 80
  %19 = or i32 %18, 2
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %21 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %20, i32 1286)
  %22 = and i32 %21, -1475
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %92 [
    i32 132, label %24
    i32 128, label %25
    i32 129, label %43
    i32 130, label %60
    i32 131, label %67
    i32 133, label %76
    i32 134, label %84
  ]

24:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %92

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %31 = call i32 @dib7090_configMpegMux(%struct.dib7000p_state* %30, i32 3, i32 1, i32 1)
  %32 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %33 = load i32, i32* @MPEG_ON_HOSTBUS, align 4
  %34 = call i32 @dib7090_setHostBusMux(%struct.dib7000p_state* %32, i32 %33)
  br label %42

35:                                               ; preds = %25
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %38 = load i32, i32* @DEMOUT_ON_HOSTBUS, align 4
  %39 = call i32 @dib7090_setHostBusMux(%struct.dib7000p_state* %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, 128
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %35, %28
  br label %92

43:                                               ; preds = %2
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %49 = call i32 @dib7090_configMpegMux(%struct.dib7000p_state* %48, i32 2, i32 0, i32 0)
  %50 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %51 = load i32, i32* @MPEG_ON_HOSTBUS, align 4
  %52 = call i32 @dib7090_setHostBusMux(%struct.dib7000p_state* %50, i32 %51)
  br label %59

53:                                               ; preds = %43
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %56 = load i32, i32* @DEMOUT_ON_HOSTBUS, align 4
  %57 = call i32 @dib7090_setHostBusMux(%struct.dib7000p_state* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %46
  br label %92

60:                                               ; preds = %2
  %61 = call i32 @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %63 = load i32, i32* @DEMOUT_ON_HOSTBUS, align 4
  %64 = call i32 @dib7090_setHostBusMux(%struct.dib7000p_state* %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, 64
  store i32 %66, i32* %6, align 4
  br label %92

67:                                               ; preds = %2
  %68 = call i32 @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %69 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %70 = load i32, i32* @DEMOUT_ON_HOSTBUS, align 4
  %71 = call i32 @dib7090_setHostBusMux(%struct.dib7000p_state* %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, 320
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, 6
  store i32 %75, i32* %7, align 4
  store i32 512, i32* %8, align 4
  br label %92

76:                                               ; preds = %2
  %77 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %78 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %79 = load i32, i32* @DIV_ON_DIBTX, align 4
  %80 = call i32 @dib7090_setDibTxMux(%struct.dib7000p_state* %78, i32 %79)
  %81 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %82 = load i32, i32* @DIBTX_ON_HOSTBUS, align 4
  %83 = call i32 @dib7090_setHostBusMux(%struct.dib7000p_state* %81, i32 %82)
  br label %92

84:                                               ; preds = %2
  %85 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %86 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %87 = load i32, i32* @ADC_ON_DIBTX, align 4
  %88 = call i32 @dib7090_setDibTxMux(%struct.dib7000p_state* %86, i32 %87)
  %89 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %90 = load i32, i32* @DIBTX_ON_HOSTBUS, align 4
  %91 = call i32 @dib7090_setHostBusMux(%struct.dib7000p_state* %89, i32 %90)
  br label %92

92:                                               ; preds = %2, %84, %76, %67, %60, %59, %42, %24
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 132
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, 1024
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %100 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, 32
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %104, %98
  %108 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %108, i32 235, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %113, i32 236, i32 %114)
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %118, i32 1286, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local i32 @dib7090_host_bus_drive(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib7090_configMpegMux(%struct.dib7000p_state*, i32, i32, i32) #1

declare dso_local i32 @dib7090_setHostBusMux(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7090_setDibTxMux(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
