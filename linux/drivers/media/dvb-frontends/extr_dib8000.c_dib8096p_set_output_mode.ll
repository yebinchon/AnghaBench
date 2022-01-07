; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_set_output_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_set_output_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [55 x i8] c"dib8096P setting output mode TS_SERIAL using Mpeg Mux\0A\00", align 1
@MPEG_ON_HOSTBUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"dib8096P setting output mode TS_SERIAL using Smooth bloc\0A\00", align 1
@DEMOUT_ON_HOSTBUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"dib8096P setting output mode TS_PARALLEL_GATED using Mpeg Mux\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"dib8096P setting output mode TS_PARALLEL_GATED using Smooth block\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"dib8096P setting output mode TS_PARALLEL_CONT using Smooth block\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"dib8096P setting output mode TS_FIFO using Smooth block\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"dib8096P setting output mode MODE_DIVERSITY\0A\00", align 1
@DIV_ON_DIBTX = common dso_local global i32 0, align 4
@DIBTX_ON_HOSTBUS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"dib8096P setting output mode MODE_ANALOG_ADC\0A\00", align 1
@ADC_ON_DIBTX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"output_mpeg2_in_188_bytes = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dib8096p_set_output_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8096p_set_output_mode(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %12, align 8
  store %struct.dib8000_state* %13, %struct.dib8000_state** %5, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %16 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %18 = call i32 @dib8096p_host_bus_drive(%struct.dib8000_state* %17, i32 1)
  store i32 1792, i32* %8, align 4
  %19 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %20 = call i32 @dib8000_read_word(%struct.dib8000_state* %19, i32 299)
  %21 = and i32 %20, 80
  %22 = or i32 %21, 2
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %24 = call i32 @dib8000_read_word(%struct.dib8000_state* %23, i32 1286)
  %25 = and i32 %24, -1475
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %95 [
    i32 132, label %27
    i32 128, label %28
    i32 129, label %46
    i32 130, label %63
    i32 131, label %70
    i32 133, label %79
    i32 134, label %87
  ]

27:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %95

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %34 = call i32 @dib8096p_configMpegMux(%struct.dib8000_state* %33, i32 3, i32 1, i32 1)
  %35 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %36 = load i32, i32* @MPEG_ON_HOSTBUS, align 4
  %37 = call i32 @dib8096p_setHostBusMux(%struct.dib8000_state* %35, i32 %36)
  br label %45

38:                                               ; preds = %28
  %39 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %41 = load i32, i32* @DEMOUT_ON_HOSTBUS, align 4
  %42 = call i32 @dib8096p_setHostBusMux(%struct.dib8000_state* %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, 128
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %38, %31
  br label %95

46:                                               ; preds = %2
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %52 = call i32 @dib8096p_configMpegMux(%struct.dib8000_state* %51, i32 2, i32 0, i32 0)
  %53 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %54 = load i32, i32* @MPEG_ON_HOSTBUS, align 4
  %55 = call i32 @dib8096p_setHostBusMux(%struct.dib8000_state* %53, i32 %54)
  br label %62

56:                                               ; preds = %46
  %57 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %59 = load i32, i32* @DEMOUT_ON_HOSTBUS, align 4
  %60 = call i32 @dib8096p_setHostBusMux(%struct.dib8000_state* %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %56, %49
  br label %95

63:                                               ; preds = %2
  %64 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %66 = load i32, i32* @DEMOUT_ON_HOSTBUS, align 4
  %67 = call i32 @dib8096p_setHostBusMux(%struct.dib8000_state* %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, 64
  store i32 %69, i32* %6, align 4
  br label %95

70:                                               ; preds = %2
  %71 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %72 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %73 = load i32, i32* @DEMOUT_ON_HOSTBUS, align 4
  %74 = call i32 @dib8096p_setHostBusMux(%struct.dib8000_state* %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, 320
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, 6
  store i32 %78, i32* %7, align 4
  store i32 512, i32* %8, align 4
  br label %95

79:                                               ; preds = %2
  %80 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %81 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %82 = load i32, i32* @DIV_ON_DIBTX, align 4
  %83 = call i32 @dib8096p_setDibTxMux(%struct.dib8000_state* %81, i32 %82)
  %84 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %85 = load i32, i32* @DIBTX_ON_HOSTBUS, align 4
  %86 = call i32 @dib8096p_setHostBusMux(%struct.dib8000_state* %84, i32 %85)
  br label %95

87:                                               ; preds = %2
  %88 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %89 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %90 = load i32, i32* @ADC_ON_DIBTX, align 4
  %91 = call i32 @dib8096p_setDibTxMux(%struct.dib8000_state* %89, i32 %90)
  %92 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %93 = load i32, i32* @DIBTX_ON_HOSTBUS, align 4
  %94 = call i32 @dib8096p_setHostBusMux(%struct.dib8000_state* %92, i32 %93)
  br label %95

95:                                               ; preds = %2, %87, %79, %70, %63, %62, %45, %27
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 132
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, 1024
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %103 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %105)
  %107 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %108 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, 32
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %112, %101
  %116 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @dib8000_write_word(%struct.dib8000_state* %116, i32 299, i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @dib8000_write_word(%struct.dib8000_state* %121, i32 300, i32 %122)
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %10, align 4
  %126 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @dib8000_write_word(%struct.dib8000_state* %126, i32 1286, i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  ret i32 %131
}

declare dso_local i32 @dib8096p_host_bus_drive(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @dib8096p_configMpegMux(%struct.dib8000_state*, i32, i32, i32) #1

declare dso_local i32 @dib8096p_setHostBusMux(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8096p_setDibTxMux(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
