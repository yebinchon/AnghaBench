; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_nbpfaxi.c_nbpf_err_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_nbpfaxi.c_nbpf_err_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbpf_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nbpf_channel = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"DMA error IRQ %u\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nbpf_err_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbpf_err_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nbpf_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nbpf_channel*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nbpf_device*
  store %struct.nbpf_device* %10, %struct.nbpf_device** %6, align 8
  %11 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %12 = call i64 @nbpf_error_get(%struct.nbpf_device* %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %14 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_warn(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %34, %23
  %25 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call %struct.nbpf_channel* @nbpf_error_get_channel(%struct.nbpf_device* %25, i64 %26)
  store %struct.nbpf_channel* %27, %struct.nbpf_channel** %8, align 8
  %28 = load %struct.nbpf_channel*, %struct.nbpf_channel** %8, align 8
  %29 = call i32 @nbpf_error_clear(%struct.nbpf_channel* %28)
  %30 = load %struct.nbpf_channel*, %struct.nbpf_channel** %8, align 8
  %31 = call i32 @nbpf_chan_idle(%struct.nbpf_channel* %30)
  %32 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %33 = call i64 @nbpf_error_get(%struct.nbpf_device* %32)
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %24, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @nbpf_error_get(%struct.nbpf_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local %struct.nbpf_channel* @nbpf_error_get_channel(%struct.nbpf_device*, i64) #1

declare dso_local i32 @nbpf_error_clear(%struct.nbpf_channel*) #1

declare dso_local i32 @nbpf_chan_idle(%struct.nbpf_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
