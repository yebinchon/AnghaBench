; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_rel_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_rel_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_rel_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_rel_dma(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %3 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %4 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @dma_release_channel(i32* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %16 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %22 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dma_release_channel(i32* %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %28 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %31 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
