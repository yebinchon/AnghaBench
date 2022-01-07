; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_int_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxad_device = type { %struct.pxad_phy*, i64 }
%struct.pxad_phy = type { i32 }

@DINT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxad_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxad_int_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pxad_device*, align 8
  %6 = alloca %struct.pxad_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.pxad_device*
  store %struct.pxad_device* %11, %struct.pxad_device** %5, align 8
  %12 = load %struct.pxad_device*, %struct.pxad_device** %5, align 8
  %13 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DINT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %42, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @__ffs(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.pxad_device*, %struct.pxad_device** %5, align 8
  %30 = getelementptr inbounds %struct.pxad_device, %struct.pxad_device* %29, i32 0, i32 0
  %31 = load %struct.pxad_phy*, %struct.pxad_phy** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pxad_phy, %struct.pxad_phy* %31, i64 %33
  store %struct.pxad_phy* %34, %struct.pxad_phy** %6, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.pxad_phy*, %struct.pxad_phy** %6, align 8
  %37 = call i32 @pxad_chan_handler(i32 %35, %struct.pxad_phy* %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %22
  br label %19

43:                                               ; preds = %19
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @pxad_chan_handler(i32, %struct.pxad_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
