; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_caam_jr_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_caam_jr_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.caam_drv_private_jr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@JRINT_JR_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"job ring error: irqstate: %08x\0A\00", align 1
@JRCFG_IMSK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @caam_jr_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_jr_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.caam_drv_private_jr*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.device*
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.caam_drv_private_jr* @dev_get_drvdata(%struct.device* %11)
  store %struct.caam_drv_private_jr* %12, %struct.caam_drv_private_jr** %7, align 8
  %13 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %7, align 8
  %14 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @rd_reg32(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @JRINT_JR_ERROR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 (...) @BUG()
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %7, align 8
  %34 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* @JRCFG_IMSK, align 4
  %38 = call i32 @clrsetbits_32(i32* %36, i32 0, i32 %37)
  %39 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %7, align 8
  %40 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @wr_reg32(i32* %42, i32 %43)
  %45 = call i32 (...) @preempt_disable()
  %46 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %7, align 8
  %47 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %46, i32 0, i32 0
  %48 = call i32 @tasklet_schedule(i32* %47)
  %49 = call i32 (...) @preempt_enable()
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %32, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.caam_drv_private_jr* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rd_reg32(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @clrsetbits_32(i32*, i32, i32) #1

declare dso_local i32 @wr_reg32(i32*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
