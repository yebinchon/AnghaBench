; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_aes_dev*)* @atmel_aes_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_aes_unmap(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca %struct.atmel_aes_dev*, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %2, align 8
  %3 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %4 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %8 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %6, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %14 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %17 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %21 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %25 = call i32 @dma_unmap_sg(i32 %15, i32* %19, i32 %23, i32 %24)
  %26 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %27 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %31 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %30, i32 0, i32 3
  %32 = icmp ne i32* %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %12
  %34 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %35 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %34, i32 0, i32 5
  %36 = call i32 @atmel_aes_restore_sg(%struct.TYPE_2__* %35)
  br label %37

37:                                               ; preds = %33, %12
  br label %89

38:                                               ; preds = %1
  %39 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %40 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %43 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %47 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = call i32 @dma_unmap_sg(i32 %41, i32* %45, i32 %49, i32 %50)
  %52 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %53 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %57 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %56, i32 0, i32 3
  %58 = icmp ne i32* %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %38
  %60 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %61 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %60, i32 0, i32 4
  %62 = call i32 @atmel_aes_restore_sg(%struct.TYPE_2__* %61)
  br label %63

63:                                               ; preds = %59, %38
  %64 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %65 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %68 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %72 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DMA_TO_DEVICE, align 4
  %76 = call i32 @dma_unmap_sg(i32 %66, i32* %70, i32 %74, i32 %75)
  %77 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %78 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %82 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %81, i32 0, i32 3
  %83 = icmp ne i32* %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %63
  %85 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %86 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %85, i32 0, i32 5
  %87 = call i32 @atmel_aes_restore_sg(%struct.TYPE_2__* %86)
  br label %88

88:                                               ; preds = %84, %63
  br label %89

89:                                               ; preds = %88, %37
  %90 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %91 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %95 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %94, i32 0, i32 3
  %96 = icmp eq i32* %93, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %89
  %98 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %99 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %102 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @sg_nents(i32 %103)
  %105 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %106 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %2, align 8
  %109 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @sg_copy_from_buffer(i32 %100, i32 %104, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %97, %89
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @atmel_aes_restore_sg(%struct.TYPE_2__*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
