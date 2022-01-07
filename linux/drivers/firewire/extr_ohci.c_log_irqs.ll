; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_log_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_log_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32 }

@param_debug = common dso_local global i32 0, align 4
@OHCI_PARAM_DEBUG_IRQS = common dso_local global i32 0, align 4
@OHCI_PARAM_DEBUG_BUSRESETS = common dso_local global i32 0, align 4
@OHCI1394_busReset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"IRQ %08x%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", align 1
@OHCI1394_selfIDComplete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" selfID\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OHCI1394_RQPkt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" AR_req\00", align 1
@OHCI1394_RSPkt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c" AR_resp\00", align 1
@OHCI1394_reqTxComplete = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" AT_req\00", align 1
@OHCI1394_respTxComplete = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c" AT_resp\00", align 1
@OHCI1394_isochRx = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c" IR\00", align 1
@OHCI1394_isochTx = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c" IT\00", align 1
@OHCI1394_postedWriteErr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c" postedWriteErr\00", align 1
@OHCI1394_cycleTooLong = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c" cycleTooLong\00", align 1
@OHCI1394_cycle64Seconds = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c" cycle64Seconds\00", align 1
@OHCI1394_cycleInconsistent = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c" cycleInconsistent\00", align 1
@OHCI1394_regAccessFail = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c" regAccessFail\00", align 1
@OHCI1394_unrecoverableError = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c" unrecoverableError\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c" busReset\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_ohci*, i32)* @log_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_irqs(%struct.fw_ohci* %0, i32 %1) #0 {
  %3 = alloca %struct.fw_ohci*, align 8
  %4 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @param_debug, align 4
  %6 = load i32, i32* @OHCI_PARAM_DEBUG_IRQS, align 4
  %7 = load i32, i32* @OHCI_PARAM_DEBUG_BUSRESETS, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %146

16:                                               ; preds = %2
  %17 = load i32, i32* @param_debug, align 4
  %18 = load i32, i32* @OHCI_PARAM_DEBUG_IRQS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @OHCI1394_busReset, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %146

27:                                               ; preds = %21, %16
  %28 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @OHCI1394_selfIDComplete, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @OHCI1394_RQPkt, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @OHCI1394_RSPkt, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @OHCI1394_reqTxComplete, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @OHCI1394_respTxComplete, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @OHCI1394_isochRx, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @OHCI1394_isochTx, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @OHCI1394_cycleTooLong, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @OHCI1394_cycle64Seconds, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @OHCI1394_cycleInconsistent, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @OHCI1394_regAccessFail, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @OHCI1394_unrecoverableError, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @OHCI1394_busReset, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @OHCI1394_selfIDComplete, align 4
  %116 = load i32, i32* @OHCI1394_RQPkt, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @OHCI1394_RSPkt, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @OHCI1394_reqTxComplete, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @OHCI1394_respTxComplete, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @OHCI1394_isochRx, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @OHCI1394_isochTx, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @OHCI1394_cycleTooLong, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @OHCI1394_cycle64Seconds, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @OHCI1394_cycleInconsistent, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @OHCI1394_regAccessFail, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @OHCI1394_busReset, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = and i32 %114, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %145 = call i32 @ohci_notice(%struct.fw_ohci* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %35, i8* %41, i8* %47, i8* %53, i8* %59, i8* %65, i8* %71, i8* %77, i8* %83, i8* %89, i8* %95, i8* %101, i8* %107, i8* %113, i8* %144)
  br label %146

146:                                              ; preds = %27, %26, %15
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ohci_notice(%struct.fw_ohci*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
