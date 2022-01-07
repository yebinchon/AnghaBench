; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_chan_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_chan_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdc_chan = type { %struct.TYPE_2__, %struct.mdc_tx_desc*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mdc_tx_desc = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"IRQ on channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"IRQ with no active descriptor on channel %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mdc_chan_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc_chan_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mdc_chan*, align 8
  %6 = alloca %struct.mdc_tx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mdc_chan*
  store %struct.mdc_chan* %10, %struct.mdc_chan** %5, align 8
  %11 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %12 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %16 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mdma2dev(i32 %17)
  %19 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %20 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %24 = call i32 @mdc_get_new_events(%struct.mdc_chan* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %108

28:                                               ; preds = %2
  %29 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %30 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %29, i32 0, i32 1
  %31 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %30, align 8
  store %struct.mdc_tx_desc* %31, %struct.mdc_tx_desc** %6, align 8
  %32 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %33 = icmp ne %struct.mdc_tx_desc* %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %36 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mdma2dev(i32 %37)
  %39 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %40 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %108

43:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %104, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %107

48:                                               ; preds = %44
  %49 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %50 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %55 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %104

56:                                               ; preds = %48
  %57 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %58 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %62 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %56
  %66 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %67 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %70 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %74 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %77 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = srem i32 %75, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %65
  %82 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %83 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %82, i32 0, i32 4
  %84 = call i32 @vchan_cyclic_callback(i32* %83)
  br label %85

85:                                               ; preds = %81, %65
  br label %103

86:                                               ; preds = %56
  %87 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %88 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %91 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %86
  %95 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %96 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %95, i32 0, i32 1
  store %struct.mdc_tx_desc* null, %struct.mdc_tx_desc** %96, align 8
  %97 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %6, align 8
  %98 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %97, i32 0, i32 4
  %99 = call i32 @vchan_cookie_complete(i32* %98)
  %100 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %101 = call i32 @mdc_issue_desc(%struct.mdc_chan* %100)
  br label %107

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %85
  br label %104

104:                                              ; preds = %103, %53
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %44

107:                                              ; preds = %94, %44
  br label %108

108:                                              ; preds = %107, %34, %27
  %109 = load %struct.mdc_chan*, %struct.mdc_chan** %5, align 8
  %110 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %113
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mdma2dev(i32) #1

declare dso_local i32 @mdc_get_new_events(%struct.mdc_chan*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @vchan_cyclic_callback(i32*) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i32 @mdc_issue_desc(%struct.mdc_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
