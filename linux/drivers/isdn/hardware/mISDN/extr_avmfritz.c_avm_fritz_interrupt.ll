; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_avm_fritz_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_avm_fritz_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"%s: irq stat0 %x\0A\00", align 1
@AVM_STATUS0_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AVM_STATUS0_IRQ_ISAC = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@AVM_STATUS0_IRQ_HDLC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @avm_fritz_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avm_fritz_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fritzcard*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fritzcard*
  store %struct.fritzcard* %10, %struct.fritzcard** %6, align 8
  %11 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %12 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %15 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 2
  %18 = call i32 @inb(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %20 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @AVM_STATUS0_IRQ_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @AVM_STATUS0_IRQ_MASK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %31 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %2
  %35 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %36 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @AVM_STATUS0_IRQ_ISAC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %34
  %44 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %45 = load i32, i32* @ISAC_ISTA, align 4
  %46 = call i32 @ReadISAC_V1(%struct.fritzcard* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %48 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %47, i32 0, i32 1
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mISDNisac_irq(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %34
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @AVM_STATUS0_IRQ_HDLC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %58 = call i32 @HDLC_irq_main(%struct.fritzcard* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %61 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %29
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ReadISAC_V1(%struct.fritzcard*, i32) #1

declare dso_local i32 @mISDNisac_irq(i32*, i32) #1

declare dso_local i32 @HDLC_irq_main(%struct.fritzcard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
