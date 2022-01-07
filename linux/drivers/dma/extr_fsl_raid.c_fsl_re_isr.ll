; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl_raid.c_fsl_re_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl_raid.c_fsl_re_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_re_chan = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@FSL_RE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"chan error irqstate: %x, status: %x\0A\00", align 1
@FSL_RE_CLR_INTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_re_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_re_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsl_re_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.device*
  %11 = call %struct.fsl_re_chan* @dev_get_drvdata(%struct.device* %10)
  store %struct.fsl_re_chan* %11, %struct.fsl_re_chan** %6, align 8
  %12 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %6, align 8
  %13 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @in_be32(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @FSL_RE_ERROR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %6, align 8
  %28 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @in_be32(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %6, align 8
  %33 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %26, %21
  %39 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %6, align 8
  %40 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* @FSL_RE_CLR_INTR, align 4
  %44 = call i32 @out_be32(i32* %42, i32 %43)
  %45 = load %struct.fsl_re_chan*, %struct.fsl_re_chan** %6, align 8
  %46 = getelementptr inbounds %struct.fsl_re_chan, %struct.fsl_re_chan* %45, i32 0, i32 0
  %47 = call i32 @tasklet_schedule(i32* %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %38, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.fsl_re_chan* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
