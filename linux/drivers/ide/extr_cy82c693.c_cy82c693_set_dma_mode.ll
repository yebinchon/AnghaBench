; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_cy82c693.c_cy82c693_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_cy82c693.c_cy82c693_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@CY82_INDEX_CHANNEL1 = common dso_local global i32 0, align 4
@CY82_INDEX_CHANNEL0 = common dso_local global i32 0, align 4
@CY82_INDEX_PORT = common dso_local global i32 0, align 4
@CY82_DATA_PORT = common dso_local global i32 0, align 4
@BUSMASTER_TIMEOUT = common dso_local global i32 0, align 4
@CY82_INDEX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @cy82c693_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cy82c693_set_dma_mode(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 16
  %14 = ashr i32 %13, 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @CY82_INDEX_CHANNEL1, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @CY82_INDEX_CHANNEL0, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 3
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 2
  %29 = or i32 %26, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CY82_INDEX_PORT, align 4
  %32 = call i32 @outb(i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CY82_DATA_PORT, align 4
  %35 = call i32 @outb(i32 %33, i32 %34)
  %36 = load i32, i32* @BUSMASTER_TIMEOUT, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @CY82_INDEX_TIMEOUT, align 4
  %38 = load i32, i32* @CY82_INDEX_PORT, align 4
  %39 = call i32 @outb(i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @CY82_DATA_PORT, align 4
  %42 = call i32 @outb(i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
