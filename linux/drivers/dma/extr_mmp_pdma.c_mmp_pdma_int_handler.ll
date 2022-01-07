; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_int_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_pdma_device = type { i32, %struct.mmp_pdma_phy*, i64 }
%struct.mmp_pdma_phy = type { i32 }

@DINT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mmp_pdma_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_pdma_int_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mmp_pdma_device*, align 8
  %7 = alloca %struct.mmp_pdma_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mmp_pdma_device*
  store %struct.mmp_pdma_device* %13, %struct.mmp_pdma_device** %6, align 8
  %14 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %6, align 8
  %15 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DINT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %52, %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @__ffs(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %6, align 8
  %28 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %53

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %6, align 8
  %38 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %37, i32 0, i32 1
  %39 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %39, i64 %41
  store %struct.mmp_pdma_phy* %42, %struct.mmp_pdma_phy** %7, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %7, align 8
  %45 = call i32 @mmp_pdma_chan_handler(i32 %43, %struct.mmp_pdma_phy* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %32
  br label %20

53:                                               ; preds = %31, %20
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @IRQ_NONE, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @mmp_pdma_chan_handler(i32, %struct.mmp_pdma_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
