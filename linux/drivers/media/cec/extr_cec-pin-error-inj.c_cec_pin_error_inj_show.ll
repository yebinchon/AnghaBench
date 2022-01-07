; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin-error-inj.c_cec_pin_error_inj_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin-error-inj.c_cec_pin_error_inj_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.cec_adapter = type { %struct.cec_pin* }
%struct.cec_pin = type { i32*, i64**, i64, i64, i64, i64 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"# Clear error injections:\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"#   clear          clear all rx and tx error injections\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"#   rx-clear       clear all rx error injections\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"#   tx-clear       clear all tx error injections\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"#   <op> clear     clear all rx and tx error injections for <op>\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"#   <op> rx-clear  clear all rx error injections for <op>\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"#   <op> tx-clear  clear all tx error injections for <op>\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"# RX error injection:\0A\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"#   <op>[,<mode>] rx-nack              NACK the message instead of sending an ACK\0A\00", align 1
@.str.10 = private unnamed_addr constant [89 x i8] c"#   <op>[,<mode>] rx-low-drive <bit>   force a low-drive condition at this bit position\0A\00", align 1
@.str.11 = private unnamed_addr constant [88 x i8] c"#   <op>[,<mode>] rx-add-byte          add a spurious byte to the received CEC message\0A\00", align 1
@.str.12 = private unnamed_addr constant [91 x i8] c"#   <op>[,<mode>] rx-remove-byte       remove the last byte from the received CEC message\0A\00", align 1
@.str.13 = private unnamed_addr constant [95 x i8] c"#   <op>[,<mode>] rx-arb-lost <poll>   generate a POLL message to trigger an arbitration lost\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"# TX error injection settings:\0A\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"#   tx-ignore-nack-until-eom           ignore early NACKs until EOM\0A\00", align 1
@.str.16 = private unnamed_addr constant [83 x i8] c"#   tx-custom-low-usecs <usecs>        define the 'low' time for the custom pulse\0A\00", align 1
@.str.17 = private unnamed_addr constant [84 x i8] c"#   tx-custom-high-usecs <usecs>       define the 'high' time for the custom pulse\0A\00", align 1
@.str.18 = private unnamed_addr constant [87 x i8] c"#   tx-custom-pulse                    transmit the custom pulse once the bus is idle\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"# TX error injection:\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"#   <op>[,<mode>] tx-no-eom            don't set the EOM bit\0A\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"#   <op>[,<mode>] tx-early-eom         set the EOM bit one byte too soon\0A\00", align 1
@.str.22 = private unnamed_addr constant [91 x i8] c"#   <op>[,<mode>] tx-add-bytes <num>   append <num> (1-255) spurious bytes to the message\0A\00", align 1
@.str.23 = private unnamed_addr constant [76 x i8] c"#   <op>[,<mode>] tx-remove-byte       drop the last byte from the message\0A\00", align 1
@.str.24 = private unnamed_addr constant [75 x i8] c"#   <op>[,<mode>] tx-short-bit <bit>   make this bit shorter than allowed\0A\00", align 1
@.str.25 = private unnamed_addr constant [74 x i8] c"#   <op>[,<mode>] tx-long-bit <bit>    make this bit longer than allowed\0A\00", align 1
@.str.26 = private unnamed_addr constant [82 x i8] c"#   <op>[,<mode>] tx-custom-bit <bit>  send the custom pulse instead of this bit\0A\00", align 1
@.str.27 = private unnamed_addr constant [76 x i8] c"#   <op>[,<mode>] tx-short-start       send a start pulse that's too short\0A\00", align 1
@.str.28 = private unnamed_addr constant [75 x i8] c"#   <op>[,<mode>] tx-long-start        send a start pulse that's too long\0A\00", align 1
@.str.29 = private unnamed_addr constant [89 x i8] c"#   <op>[,<mode>] tx-custom-start      send the custom pulse instead of the start pulse\0A\00", align 1
@.str.30 = private unnamed_addr constant [68 x i8] c"#   <op>[,<mode>] tx-last-bit <bit>    stop sending after this bit\0A\00", align 1
@.str.31 = private unnamed_addr constant [89 x i8] c"#   <op>[,<mode>] tx-low-drive <bit>   force a low-drive condition at this bit position\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"# <op>       CEC message opcode (0-255) or 'any'\0A\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"# <mode>     'once' (default), 'always', 'toggle' or 'off'\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"# <bit>      CEC message bit (0-159)\0A\00", align 1
@.str.35 = private unnamed_addr constant [73 x i8] c"#            10 bits per 'byte': bits 0-7: data, bit 8: EOM, bit 9: ACK\0A\00", align 1
@.str.36 = private unnamed_addr constant [87 x i8] c"# <poll>     CEC poll message used to test arbitration lost (0x00-0xff, default 0x0f)\0A\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"# <usecs>    microseconds (0-10000000, default 1000)\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"\0Aclear\0A\00", align 1
@cec_error_inj_cmds = common dso_local global %struct.TYPE_2__* null, align 8
@CEC_ERROR_INJ_MODE_MASK = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"tx-ignore-nack-until-eom\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"tx-custom-pulse\0A\00", align 1
@CEC_TIM_CUSTOM_DEFAULT = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [24 x i8] c"tx-custom-low-usecs %u\0A\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"tx-custom-high-usecs %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cec_pin_error_inj_show(%struct.cec_adapter* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.cec_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %13 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %13, i32 0, i32 0
  %15 = load %struct.cec_pin*, %struct.cec_pin** %14, align 8
  store %struct.cec_pin* %15, %struct.cec_pin** %5, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = call i32 @seq_puts(%struct.seq_file* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = call i32 @seq_puts(%struct.seq_file* %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = call i32 @seq_puts(%struct.seq_file* %24, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = call i32 @seq_puts(%struct.seq_file* %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = call i32 @seq_puts(%struct.seq_file* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = call i32 @seq_puts(%struct.seq_file* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = call i32 @seq_puts(%struct.seq_file* %34, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0))
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = call i32 @seq_puts(%struct.seq_file* %36, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.10, i64 0, i64 0))
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = call i32 @seq_puts(%struct.seq_file* %38, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.11, i64 0, i64 0))
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = call i32 @seq_puts(%struct.seq_file* %40, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.12, i64 0, i64 0))
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = call i32 @seq_puts(%struct.seq_file* %42, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.13, i64 0, i64 0))
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = call i32 @seq_puts(%struct.seq_file* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = call i32 @seq_puts(%struct.seq_file* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = call i32 @seq_puts(%struct.seq_file* %48, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.15, i64 0, i64 0))
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = call i32 @seq_puts(%struct.seq_file* %50, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.16, i64 0, i64 0))
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = call i32 @seq_puts(%struct.seq_file* %52, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0))
  %54 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %55 = call i32 @seq_puts(%struct.seq_file* %54, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.18, i64 0, i64 0))
  %56 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %57 = call i32 @seq_puts(%struct.seq_file* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = call i32 @seq_puts(%struct.seq_file* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = call i32 @seq_puts(%struct.seq_file* %60, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0))
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = call i32 @seq_puts(%struct.seq_file* %62, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.21, i64 0, i64 0))
  %64 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %65 = call i32 @seq_puts(%struct.seq_file* %64, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.22, i64 0, i64 0))
  %66 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %67 = call i32 @seq_puts(%struct.seq_file* %66, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.23, i64 0, i64 0))
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = call i32 @seq_puts(%struct.seq_file* %68, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0))
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = call i32 @seq_puts(%struct.seq_file* %70, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.25, i64 0, i64 0))
  %72 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %73 = call i32 @seq_puts(%struct.seq_file* %72, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.26, i64 0, i64 0))
  %74 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %75 = call i32 @seq_puts(%struct.seq_file* %74, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.27, i64 0, i64 0))
  %76 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %77 = call i32 @seq_puts(%struct.seq_file* %76, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.28, i64 0, i64 0))
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = call i32 @seq_puts(%struct.seq_file* %78, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.29, i64 0, i64 0))
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = call i32 @seq_puts(%struct.seq_file* %80, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.30, i64 0, i64 0))
  %82 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %83 = call i32 @seq_puts(%struct.seq_file* %82, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.31, i64 0, i64 0))
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = call i32 @seq_puts(%struct.seq_file* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %86 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %87 = call i32 @seq_puts(%struct.seq_file* %86, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0))
  %88 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %89 = call i32 @seq_puts(%struct.seq_file* %88, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.33, i64 0, i64 0))
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = call i32 @seq_puts(%struct.seq_file* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i64 0, i64 0))
  %92 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %93 = call i32 @seq_puts(%struct.seq_file* %92, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.35, i64 0, i64 0))
  %94 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %95 = call i32 @seq_puts(%struct.seq_file* %94, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.36, i64 0, i64 0))
  %96 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %97 = call i32 @seq_puts(%struct.seq_file* %96, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.37, i64 0, i64 0))
  %98 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %99 = call i32 @seq_puts(%struct.seq_file* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %181, %2
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %103 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @ARRAY_SIZE(i32* %104)
  %106 = icmp ult i32 %101, %105
  br i1 %106, label %107, label %184

107:                                              ; preds = %100
  %108 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %109 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %177, %107
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cec_error_inj_cmds, align 8
  %117 = load i32, i32* %7, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %180

123:                                              ; preds = %115
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cec_error_inj_cmds, align 8
  %125 = load i32, i32* %7, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %9, align 8
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cec_error_inj_cmds, align 8
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %11, align 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cec_error_inj_cmds, align 8
  %137 = load i32, i32* %7, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %11, align 4
  %144 = lshr i32 %142, %143
  %145 = load i32, i32* @CEC_ERROR_INJ_MODE_MASK, align 4
  %146 = and i32 %144, %145
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %123
  br label %177

150:                                              ; preds = %123
  %151 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @cec_pin_show_cmd(%struct.seq_file* %151, i32 %152, i32 %153)
  %155 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = call i32 @seq_puts(%struct.seq_file* %155, i8* %156)
  %158 = load i32, i32* %12, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %150
  %161 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %162 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %163 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %162, i32 0, i32 1
  %164 = load i64**, i64*** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i64*, i64** %164, i64 %166
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @seq_printf(%struct.seq_file* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 %172)
  br label %174

174:                                              ; preds = %160, %150
  %175 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %176 = call i32 @seq_puts(%struct.seq_file* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %149
  %178 = load i32, i32* %7, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %115

180:                                              ; preds = %115
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %6, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %100

184:                                              ; preds = %100
  %185 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %186 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %191 = call i32 @seq_puts(%struct.seq_file* %190, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %184
  %193 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %194 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %199 = call i32 @seq_puts(%struct.seq_file* %198, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %192
  %201 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %202 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @CEC_TIM_CUSTOM_DEFAULT, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %200
  %207 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %208 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %209 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @seq_printf(%struct.seq_file* %207, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0), i64 %210)
  br label %212

212:                                              ; preds = %206, %200
  %213 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %214 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @CEC_TIM_CUSTOM_DEFAULT, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %212
  %219 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %220 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %221 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @seq_printf(%struct.seq_file* %219, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i64 %222)
  br label %224

224:                                              ; preds = %218, %212
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cec_pin_show_cmd(%struct.seq_file*, i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
