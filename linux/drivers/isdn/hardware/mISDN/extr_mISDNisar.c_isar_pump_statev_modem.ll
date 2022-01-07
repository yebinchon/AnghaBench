; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_isar_pump_statev_modem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_isar_pump_statev_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_ch = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s: pump stev TIMER\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: pump stev CONNECT\0A\00", align 1
@HW_MOD_CONNECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: pump stev NO CONNECT\0A\00", align 1
@ISAR_HIS_PSTREQ = common dso_local global i32 0, align 4
@HW_MOD_NOCARR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: pump stev V24 OFF\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s: pump stev CTS ON\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s pump stev CTS OFF\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: pump stev CARRIER ON\0A\00", align 1
@ISAR_RATE_REQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"%s: pump stev CARRIER OFF\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%s: pump stev DSR ON\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"%s: pump stev DSR_OFF\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"%s: pump stev REMOTE RETRAIN\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"%s: pump stev REMOTE RENEGOTIATE\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"%s: pump stev GSTN CLEAR\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"u%s: unknown pump stev %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isar_ch*, i32)* @isar_pump_statev_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isar_pump_statev_modem(%struct.isar_ch* %0, i32 %1) #0 {
  %3 = alloca %struct.isar_ch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isar_ch* %0, %struct.isar_ch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %7 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @SET_DPS(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %128 [
    i32 140, label %11
    i32 138, label %18
    i32 139, label %28
    i32 128, label %45
    i32 136, label %52
    i32 137, label %59
    i32 134, label %66
    i32 135, label %86
    i32 132, label %93
    i32 133, label %100
    i32 129, label %107
    i32 130, label %114
    i32 131, label %121
  ]

11:                                               ; preds = %2
  %12 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %13 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %136

18:                                               ; preds = %2
  %19 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %20 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %26 = load i32, i32* @HW_MOD_CONNECT, align 4
  %27 = call i32 @deliver_status(%struct.isar_ch* %25, i32 %26)
  br label %136

28:                                               ; preds = %2
  %29 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %30 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %36 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ISAR_HIS_PSTREQ, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @send_mbox(%struct.TYPE_2__* %37, i32 %40, i32 0, i32 0, i32* null)
  %42 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %43 = load i32, i32* @HW_MOD_NOCARR, align 4
  %44 = call i32 @deliver_status(%struct.isar_ch* %42, i32 %43)
  br label %136

45:                                               ; preds = %2
  %46 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %47 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %136

52:                                               ; preds = %2
  %53 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %54 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %136

59:                                               ; preds = %2
  %60 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %61 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  br label %136

66:                                               ; preds = %2
  %67 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %68 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ISAR_RATE_REQ, align 4
  %74 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %75 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = call i32 @test_and_set_bit(i32 %73, i32* %77)
  %79 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %80 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @ISAR_HIS_PSTREQ, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @send_mbox(%struct.TYPE_2__* %81, i32 %84, i32 0, i32 0, i32* null)
  br label %136

86:                                               ; preds = %2
  %87 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %88 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  br label %136

93:                                               ; preds = %2
  %94 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %95 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  br label %136

100:                                              ; preds = %2
  %101 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %102 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  br label %136

107:                                              ; preds = %2
  %108 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %109 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %112)
  br label %136

114:                                              ; preds = %2
  %115 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %116 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  br label %136

121:                                              ; preds = %2
  %122 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %123 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %126)
  br label %136

128:                                              ; preds = %2
  %129 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %130 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %128, %121, %114, %107, %100, %93, %86, %66, %59, %52, %45, %28, %18, %11
  ret void
}

declare dso_local i32 @SET_DPS(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @deliver_status(%struct.isar_ch*, i32) #1

declare dso_local i32 @send_mbox(%struct.TYPE_2__*, i32, i32, i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
