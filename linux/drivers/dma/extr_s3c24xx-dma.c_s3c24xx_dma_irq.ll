; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_dma_phy = type { i32, %struct.TYPE_7__*, %struct.s3c24xx_dma_chan* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.s3c24xx_dma_chan = type { %struct.TYPE_8__, %struct.s3c24xx_txd* }
%struct.TYPE_8__ = type { i32 }
%struct.s3c24xx_txd = type { %struct.TYPE_10__, %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@.str = private unnamed_addr constant [25 x i8] c"interrupt on channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"interrupt on unused channel %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c24xx_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_dma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s3c24xx_dma_phy*, align 8
  %7 = alloca %struct.s3c24xx_dma_chan*, align 8
  %8 = alloca %struct.s3c24xx_txd*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.s3c24xx_dma_phy*
  store %struct.s3c24xx_dma_phy* %10, %struct.s3c24xx_dma_phy** %6, align 8
  %11 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %6, align 8
  %12 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %11, i32 0, i32 2
  %13 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %12, align 8
  store %struct.s3c24xx_dma_chan* %13, %struct.s3c24xx_dma_chan** %7, align 8
  %14 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %6, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %6, align 8
  %21 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %7, align 8
  %25 = icmp ne %struct.s3c24xx_dma_chan* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  %31 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %6, align 8
  %32 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %6, align 8
  %38 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %6, align 8
  %42 = call i32 @s3c24xx_dma_terminate_phy(%struct.s3c24xx_dma_phy* %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %125

44:                                               ; preds = %2
  %45 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %7, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %7, align 8
  %50 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %49, i32 0, i32 1
  %51 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %50, align 8
  store %struct.s3c24xx_txd* %51, %struct.s3c24xx_txd** %8, align 8
  %52 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %53 = icmp ne %struct.s3c24xx_txd* %52, null
  br i1 %53, label %54, label %119

54:                                               ; preds = %44
  %55 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %56 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %58, i32 0, i32 0
  %60 = call i32 @list_is_last(%struct.TYPE_9__* %57, %struct.TYPE_10__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %54
  %63 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %64 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %69 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %68, i32 0, i32 1
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %69, align 8
  %70 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %71 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %76 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %75, i32 0, i32 2
  %77 = call i32 @vchan_cyclic_callback(i32* %76)
  br label %78

78:                                               ; preds = %74, %62
  %79 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %7, align 8
  %80 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %81 = call i32 @s3c24xx_dma_start_next_sg(%struct.s3c24xx_dma_chan* %79, %struct.s3c24xx_txd* %80)
  br label %118

82:                                               ; preds = %54
  %83 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %84 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %82
  %88 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %7, align 8
  %89 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %88, i32 0, i32 1
  store %struct.s3c24xx_txd* null, %struct.s3c24xx_txd** %89, align 8
  %90 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %91 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %90, i32 0, i32 2
  %92 = call i32 @vchan_cookie_complete(i32* %91)
  %93 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %7, align 8
  %94 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %93, i32 0, i32 0
  %95 = call i64 @vchan_next_desc(%struct.TYPE_8__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %7, align 8
  %99 = call i32 @s3c24xx_dma_start_next_txd(%struct.s3c24xx_dma_chan* %98)
  br label %103

100:                                              ; preds = %87
  %101 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %7, align 8
  %102 = call i32 @s3c24xx_dma_phy_free(%struct.s3c24xx_dma_chan* %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %117

104:                                              ; preds = %82
  %105 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %106 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %105, i32 0, i32 2
  %107 = call i32 @vchan_cyclic_callback(i32* %106)
  %108 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %109 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %113 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %112, i32 0, i32 1
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %113, align 8
  %114 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %7, align 8
  %115 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %8, align 8
  %116 = call i32 @s3c24xx_dma_start_next_sg(%struct.s3c24xx_dma_chan* %114, %struct.s3c24xx_txd* %115)
  br label %117

117:                                              ; preds = %104, %103
  br label %118

118:                                              ; preds = %117, %78
  br label %119

119:                                              ; preds = %118, %44
  %120 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %7, align 8
  %121 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock(i32* %122)
  %124 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %119, %30
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @s3c24xx_dma_terminate_phy(%struct.s3c24xx_dma_phy*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_is_last(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @vchan_cyclic_callback(i32*) #1

declare dso_local i32 @s3c24xx_dma_start_next_sg(%struct.s3c24xx_dma_chan*, %struct.s3c24xx_txd*) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i64 @vchan_next_desc(%struct.TYPE_8__*) #1

declare dso_local i32 @s3c24xx_dma_start_next_txd(%struct.s3c24xx_dma_chan*) #1

declare dso_local i32 @s3c24xx_dma_phy_free(%struct.s3c24xx_dma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
