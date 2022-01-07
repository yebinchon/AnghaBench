; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_ep93xx_dma_slave_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_ep93xx_dma_slave_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i8*, i8* }
%struct.ep93xx_dma_chan = type { i32, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M2M_CONTROL_PW_16 = common dso_local global i8* null, align 8
@M2M_CONTROL_PW_32 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_slave_config*)* @ep93xx_dma_slave_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_dma_slave_config_write(%struct.dma_chan* %0, i32 %1, %struct.dma_slave_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_slave_config*, align 8
  %8 = alloca %struct.ep93xx_dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_slave_config* %2, %struct.dma_slave_config** %7, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.ep93xx_dma_chan* @to_ep93xx_dma_chan(%struct.dma_chan* %13)
  store %struct.ep93xx_dma_chan* %14, %struct.ep93xx_dma_chan** %8, align 8
  %15 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %8, align 8
  %16 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %68

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %40 [
    i32 132, label %26
    i32 131, label %33
  ]

26:                                               ; preds = %24
  %27 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %28 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %31 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %11, align 8
  br label %43

33:                                               ; preds = %24
  %34 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %35 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %38 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  br label %43

40:                                               ; preds = %24
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %68

43:                                               ; preds = %33, %26
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %50 [
    i32 130, label %45
    i32 129, label %46
    i32 128, label %48
  ]

45:                                               ; preds = %43
  store i8* null, i8** %12, align 8
  br label %53

46:                                               ; preds = %43
  %47 = load i8*, i8** @M2M_CONTROL_PW_16, align 8
  store i8* %47, i8** %12, align 8
  br label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** @M2M_CONTROL_PW_32, align 8
  store i8* %49, i8** %12, align 8
  br label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %68

53:                                               ; preds = %48, %46, %45
  %54 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %8, align 8
  %55 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %54, i32 0, i32 0
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %8, align 8
  %60 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %8, align 8
  %63 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %8, align 8
  %65 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %64, i32 0, i32 0
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %53, %50, %40, %21
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.ep93xx_dma_chan* @to_ep93xx_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
