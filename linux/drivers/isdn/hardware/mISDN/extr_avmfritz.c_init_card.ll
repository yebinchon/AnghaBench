; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@AVM_FRITZ_PCIV2 = common dso_local global i64 0, align 8
@avm_fritzv2_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@avm_fritz_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: couldn't get interrupt %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: ISAC init failed with %d\0A\00", align 1
@ISACX_MASK = common dso_local global i32 0, align 4
@ISACX_CMDRD = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@ISAC_CMDR = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: IRQ %d count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: IRQ(%d) getting no IRQs during init %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fritzcard*)* @init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_card(%struct.fritzcard* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fritzcard*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fritzcard* %0, %struct.fritzcard** %3, align 8
  store i32 3, i32* %5, align 4
  %7 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %8 = call i32 @reset_avm(%struct.fritzcard* %7)
  %9 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %10 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AVM_FRITZ_PCIV2, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %16 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @avm_fritzv2_interrupt, align 4
  %19 = load i32, i32* @IRQF_SHARED, align 4
  %20 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %21 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %24 = call i32 @request_irq(i32 %17, i32 %18, i32 %19, i32 %22, %struct.fritzcard* %23)
  store i32 %24, i32* %4, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %27 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @avm_fritz_interrupt, align 4
  %30 = load i32, i32* @IRQF_SHARED, align 4
  %31 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %32 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %35 = call i32 @request_irq(i32 %28, i32 %29, i32 %30, i32 %33, %struct.fritzcard* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %25, %14
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %41 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %44 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %151

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %142, %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %143

53:                                               ; preds = %49
  %54 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %55 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %54, i32 0, i32 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @spin_lock_irqsave(i32* %55, i32 %56)
  %58 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %59 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %60, align 8
  %62 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %63 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %62, i32 0, i32 5
  %64 = call i32 %61(%struct.TYPE_2__* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %53
  %68 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %69 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %68, i32 0, i32 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i32 %70)
  %72 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %73 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  br label %143

77:                                               ; preds = %53
  %78 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %79 = call i32 @clear_pending_hdlc_ints(%struct.fritzcard* %78)
  %80 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %81 = call i32 @inithdlc(%struct.fritzcard* %80)
  %82 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %83 = call i32 @enable_hwirq(%struct.fritzcard* %82)
  %84 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %85 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AVM_FRITZ_PCIV2, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %91 = load i32, i32* @ISACX_MASK, align 4
  %92 = call i32 @WriteISAC_V2(%struct.fritzcard* %90, i32 %91, i32 0)
  %93 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %94 = load i32, i32* @ISACX_CMDRD, align 4
  %95 = call i32 @WriteISAC_V2(%struct.fritzcard* %93, i32 %94, i32 65)
  br label %103

96:                                               ; preds = %77
  %97 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %98 = load i32, i32* @ISAC_MASK, align 4
  %99 = call i32 @WriteISAC_V1(%struct.fritzcard* %97, i32 %98, i32 0)
  %100 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %101 = load i32, i32* @ISAC_CMDR, align 4
  %102 = call i32 @WriteISAC_V1(%struct.fritzcard* %100, i32 %101, i32 65)
  br label %103

103:                                              ; preds = %96, %89
  %104 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %105 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %104, i32 0, i32 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i32 %106)
  %108 = call i32 @msleep_interruptible(i32 10)
  %109 = load i32, i32* @debug, align 4
  %110 = load i32, i32* @DEBUG_HW, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %103
  %114 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %115 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %118 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %121 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %113, %103
  %125 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %126 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %124
  %130 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %131 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %134 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sub nsw i32 3, %136
  %138 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %135, i32 %137)
  %139 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %140 = call i32 @reset_avm(%struct.fritzcard* %139)
  br label %142

141:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %151

142:                                              ; preds = %129
  br label %49

143:                                              ; preds = %67, %49
  %144 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %145 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %148 = call i32 @free_irq(i32 %146, %struct.fritzcard* %147)
  %149 = load i32, i32* @EIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %143, %141, %39
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @reset_avm(%struct.fritzcard*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.fritzcard*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @clear_pending_hdlc_ints(%struct.fritzcard*) #1

declare dso_local i32 @inithdlc(%struct.fritzcard*) #1

declare dso_local i32 @enable_hwirq(%struct.fritzcard*) #1

declare dso_local i32 @WriteISAC_V2(%struct.fritzcard*, i32, i32) #1

declare dso_local i32 @WriteISAC_V1(%struct.fritzcard*, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.fritzcard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
