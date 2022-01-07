; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.bcm3510_state* }
%struct.bcm3510_state = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bcm3510_hab_cmd_set_agc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"JDEC: %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"attempting to download firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"firmware is loaded\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CMD_AUTO_PARAM = common dso_local global i32 0, align 4
@MSGID_SET_RF_AGC_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @bcm3510_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.bcm3510_state*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.bcm3510_hab_cmd_set_agc, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.bcm3510_state*, %struct.bcm3510_state** %9, align 8
  store %struct.bcm3510_state* %10, %struct.bcm3510_state** %4, align 8
  %11 = load %struct.bcm3510_state*, %struct.bcm3510_state** %4, align 8
  %12 = call i32 @bcm3510_readB(%struct.bcm3510_state* %11, i32 202, %struct.TYPE_5__* %5)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %35 [
    i32 128, label %23
    i32 129, label %31
  ]

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.bcm3510_state*, %struct.bcm3510_state** %4, align 8
  %26 = call i32 @bcm3510_init_cold(%struct.bcm3510_state* %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %46

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %16, %30
  %32 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.bcm3510_state*, %struct.bcm3510_state** %4, align 8
  %34 = call i32 @bcm3510_check_firmware_version(%struct.bcm3510_state* %33)
  br label %38

35:                                               ; preds = %16
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %46

38:                                               ; preds = %31
  %39 = call i32 @memset(%struct.bcm3510_hab_cmd_set_agc* %6, i32 0, i32 1)
  %40 = getelementptr inbounds %struct.bcm3510_hab_cmd_set_agc, %struct.bcm3510_hab_cmd_set_agc* %6, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.bcm3510_state*, %struct.bcm3510_state** %4, align 8
  %42 = load i32, i32* @CMD_AUTO_PARAM, align 4
  %43 = load i32, i32* @MSGID_SET_RF_AGC_SEL, align 4
  %44 = bitcast %struct.bcm3510_hab_cmd_set_agc* %6 to i32*
  %45 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %41, i32 %42, i32 %43, i32* %44, i32 4, i32* null, i32 0)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %38, %35, %28, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @bcm3510_readB(%struct.bcm3510_state*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @bcm3510_init_cold(%struct.bcm3510_state*) #1

declare dso_local i32 @bcm3510_check_firmware_version(%struct.bcm3510_state*) #1

declare dso_local i32 @memset(%struct.bcm3510_hab_cmd_set_agc*, i32, i32) #1

declare dso_local i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state*, i32, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
