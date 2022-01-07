; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_dma_irq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_dma_irq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_dma_dev = type { %struct.sprd_dma_chn*, i64 }
%struct.sprd_dma_chn = type { %struct.TYPE_4__, %struct.sprd_dma_desc*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.sprd_dma_desc = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SPRD_DMA_GLB_INT_MSK_STS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dma_irq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_irq_handle(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sprd_dma_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sprd_dma_chn*, align 8
  %9 = alloca %struct.sprd_dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.sprd_dma_dev*
  store %struct.sprd_dma_dev* %16, %struct.sprd_dma_dev** %6, align 8
  %17 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %6, align 8
  %18 = getelementptr inbounds %struct.sprd_dma_dev, %struct.sprd_dma_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPRD_DMA_GLB_INT_MSK_STS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %90, %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %95

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @__ffs(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %6, align 8
  %34 = getelementptr inbounds %struct.sprd_dma_dev, %struct.sprd_dma_dev* %33, i32 0, i32 0
  %35 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %35, i64 %37
  store %struct.sprd_dma_chn* %38, %struct.sprd_dma_chn** %8, align 8
  %39 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %40 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %44 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %43, i32 0, i32 1
  %45 = load %struct.sprd_dma_desc*, %struct.sprd_dma_desc** %44, align 8
  store %struct.sprd_dma_desc* %45, %struct.sprd_dma_desc** %9, align 8
  %46 = load %struct.sprd_dma_desc*, %struct.sprd_dma_desc** %9, align 8
  %47 = icmp ne %struct.sprd_dma_desc* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %26
  %49 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %50 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %97

54:                                               ; preds = %26
  %55 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %56 = call i32 @sprd_dma_get_int_type(%struct.sprd_dma_chn* %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %58 = call i32 @sprd_dma_get_req_type(%struct.sprd_dma_chn* %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %60 = call i32 @sprd_dma_clear_int(%struct.sprd_dma_chn* %59)
  %61 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %62 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %54
  %71 = load %struct.sprd_dma_desc*, %struct.sprd_dma_desc** %9, align 8
  %72 = getelementptr inbounds %struct.sprd_dma_desc, %struct.sprd_dma_desc* %71, i32 0, i32 0
  %73 = call i32 @vchan_cyclic_callback(i32* %72)
  br label %90

74:                                               ; preds = %54
  %75 = load %struct.sprd_dma_desc*, %struct.sprd_dma_desc** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @sprd_dma_check_trans_done(%struct.sprd_dma_desc* %75, i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.sprd_dma_desc*, %struct.sprd_dma_desc** %9, align 8
  %83 = getelementptr inbounds %struct.sprd_dma_desc, %struct.sprd_dma_desc* %82, i32 0, i32 0
  %84 = call i32 @vchan_cookie_complete(i32* %83)
  %85 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %86 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %85, i32 0, i32 1
  store %struct.sprd_dma_desc* null, %struct.sprd_dma_desc** %86, align 8
  %87 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %88 = call i32 @sprd_dma_start(%struct.sprd_dma_chn* %87)
  br label %89

89:                                               ; preds = %81, %74
  br label %90

90:                                               ; preds = %89, %70
  %91 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %8, align 8
  %92 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  br label %23

95:                                               ; preds = %23
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %48
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sprd_dma_get_int_type(%struct.sprd_dma_chn*) #1

declare dso_local i32 @sprd_dma_get_req_type(%struct.sprd_dma_chn*) #1

declare dso_local i32 @sprd_dma_clear_int(%struct.sprd_dma_chn*) #1

declare dso_local i32 @vchan_cyclic_callback(i32*) #1

declare dso_local i32 @sprd_dma_check_trans_done(%struct.sprd_dma_desc*, i32, i32) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i32 @sprd_dma_start(%struct.sprd_dma_chn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
