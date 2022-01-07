; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_irq.c_v3d_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_irq.c_v3d_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.v3d_fence = type { i32, i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@V3D_CTL_INT_STS = common dso_local global i32 0, align 4
@V3D_CTL_INT_CLR = common dso_local global i32 0, align 4
@V3D_INT_OUTOMEM = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i64 0, align 8
@V3D_INT_FLDONE = common dso_local global i32 0, align 4
@V3D_INT_FRDONE = common dso_local global i32 0, align 4
@V3D_INT_CSDDONE = common dso_local global i32 0, align 4
@V3D_INT_GMPV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"GMP violation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @v3d_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @v3d_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v3d_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.v3d_fence*, align 8
  %10 = alloca %struct.v3d_fence*, align 8
  %11 = alloca %struct.v3d_fence*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.v3d_dev*
  store %struct.v3d_dev* %13, %struct.v3d_dev** %6, align 8
  %14 = load i64, i64* @IRQ_NONE, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* @V3D_CTL_INT_STS, align 4
  %16 = call i32 @V3D_CORE_READ(i32 0, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @V3D_CTL_INT_CLR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @V3D_CORE_WRITE(i32 0, i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @V3D_INT_OUTOMEM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %26 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %25, i32 0, i32 6
  %27 = call i32 @schedule_work(i32* %26)
  %28 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @V3D_INT_FLDONE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %36 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %35, i32 0, i32 5
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.v3d_fence* @to_v3d_fence(i32 %40)
  store %struct.v3d_fence* %41, %struct.v3d_fence** %9, align 8
  %42 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %43 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %42, i32 0, i32 2
  %44 = load %struct.v3d_fence*, %struct.v3d_fence** %9, align 8
  %45 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @trace_v3d_bcl_irq(i32* %43, i32 %46)
  %48 = load %struct.v3d_fence*, %struct.v3d_fence** %9, align 8
  %49 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %48, i32 0, i32 0
  %50 = call i32 @dma_fence_signal(i32* %49)
  %51 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %34, %29
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @V3D_INT_FRDONE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %59 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %58, i32 0, i32 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.v3d_fence* @to_v3d_fence(i32 %63)
  store %struct.v3d_fence* %64, %struct.v3d_fence** %10, align 8
  %65 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %66 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %65, i32 0, i32 2
  %67 = load %struct.v3d_fence*, %struct.v3d_fence** %10, align 8
  %68 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @trace_v3d_rcl_irq(i32* %66, i32 %69)
  %71 = load %struct.v3d_fence*, %struct.v3d_fence** %10, align 8
  %72 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %71, i32 0, i32 0
  %73 = call i32 @dma_fence_signal(i32* %72)
  %74 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %57, %52
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @V3D_INT_CSDDONE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %82 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %81, i32 0, i32 3
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.v3d_fence* @to_v3d_fence(i32 %86)
  store %struct.v3d_fence* %87, %struct.v3d_fence** %11, align 8
  %88 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %89 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %88, i32 0, i32 2
  %90 = load %struct.v3d_fence*, %struct.v3d_fence** %11, align 8
  %91 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @trace_v3d_csd_irq(i32* %89, i32 %92)
  %94 = load %struct.v3d_fence*, %struct.v3d_fence** %11, align 8
  %95 = getelementptr inbounds %struct.v3d_fence, %struct.v3d_fence* %94, i32 0, i32 0
  %96 = call i32 @dma_fence_signal(i32* %95)
  %97 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %80, %75
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @V3D_INT_GMPV, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %105 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.v3d_dev*, %struct.v3d_dev** %6, align 8
  %110 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* @IRQ_NONE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %4, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = call i64 @v3d_hub_irq(i32 %118, i8* %119)
  store i64 %120, i64* %3, align 8
  br label %123

121:                                              ; preds = %113, %108
  %122 = load i64, i64* %8, align 8
  store i64 %122, i64* %3, align 8
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i64, i64* %3, align 8
  ret i64 %124
}

declare dso_local i32 @V3D_CORE_READ(i32, i32) #1

declare dso_local i32 @V3D_CORE_WRITE(i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local %struct.v3d_fence* @to_v3d_fence(i32) #1

declare dso_local i32 @trace_v3d_bcl_irq(i32*, i32) #1

declare dso_local i32 @dma_fence_signal(i32*) #1

declare dso_local i32 @trace_v3d_rcl_irq(i32*, i32) #1

declare dso_local i32 @trace_v3d_csd_irq(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @v3d_hub_irq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
