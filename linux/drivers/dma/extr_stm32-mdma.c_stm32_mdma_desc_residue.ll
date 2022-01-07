; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_desc_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_desc_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_mdma_chan = type { i32, i32, i32 }
%struct.stm32_mdma_desc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_mdma_hwdesc* }
%struct.stm32_mdma_hwdesc = type { i32 }
%struct.stm32_mdma_device = type { i32 }

@STM32_MDMA_CBNDTR_BNDT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stm32_mdma_chan*, %struct.stm32_mdma_desc*, i32)* @stm32_mdma_desc_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stm32_mdma_desc_residue(%struct.stm32_mdma_chan* %0, %struct.stm32_mdma_desc* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.stm32_mdma_chan*, align 8
  %6 = alloca %struct.stm32_mdma_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stm32_mdma_device*, align 8
  %9 = alloca %struct.stm32_mdma_hwdesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stm32_mdma_chan* %0, %struct.stm32_mdma_chan** %5, align 8
  store %struct.stm32_mdma_desc* %1, %struct.stm32_mdma_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %5, align 8
  %16 = call %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan* %15)
  store %struct.stm32_mdma_device* %16, %struct.stm32_mdma_device** %8, align 8
  %17 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %6, align 8
  %18 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %21, align 8
  store %struct.stm32_mdma_hwdesc* %22, %struct.stm32_mdma_hwdesc** %9, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %48, %3
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %6, align 8
  %28 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.stm32_mdma_desc*, %struct.stm32_mdma_desc** %6, align 8
  %33 = getelementptr inbounds %struct.stm32_mdma_desc, %struct.stm32_mdma_desc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %38, align 8
  store %struct.stm32_mdma_hwdesc* %39, %struct.stm32_mdma_hwdesc** %9, align 8
  %40 = load %struct.stm32_mdma_hwdesc*, %struct.stm32_mdma_hwdesc** %9, align 8
  %41 = getelementptr inbounds %struct.stm32_mdma_hwdesc, %struct.stm32_mdma_hwdesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @STM32_MDMA_CBNDTR_BNDT(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %25

51:                                               ; preds = %25
  %52 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %8, align 8
  %53 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %5, align 8
  %54 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @STM32_MDMA_CBNDTR(i32 %55)
  %57 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %52, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @STM32_MDMA_CBNDTR_BNDT_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %5, align 8
  %64 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %4, align 8
  br label %92

70:                                               ; preds = %51
  %71 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %5, align 8
  %72 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %5, align 8
  %75 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %13, align 4
  %80 = srem i32 %78, %79
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %70
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %83, %70
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %89, %67
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan*) #1

declare dso_local i64 @STM32_MDMA_CBNDTR_BNDT(i32) #1

declare dso_local i32 @stm32_mdma_read(%struct.stm32_mdma_device*, i32) #1

declare dso_local i32 @STM32_MDMA_CBNDTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
