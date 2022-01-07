; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_dma_trigger_omap2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_dma_trigger_omap2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_aes_dev = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_aes_dev*, i32)* @omap_aes_dma_trigger_omap2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_aes_dma_trigger_omap2(%struct.omap_aes_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_aes_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_aes_dev* %0, %struct.omap_aes_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %8 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %13 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %18 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %26 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %31 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %39 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %44 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %42, %47
  %49 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %50 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %48, %53
  store i32 %54, i32* %5, align 4
  %55 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %56 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %57 = call i32 @AES_REG_MASK(%struct.omap_aes_dev* %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @omap_aes_write_mask(%struct.omap_aes_dev* %55, i32 %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @omap_aes_write_mask(%struct.omap_aes_dev*, i32, i32, i32) #1

declare dso_local i32 @AES_REG_MASK(%struct.omap_aes_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
