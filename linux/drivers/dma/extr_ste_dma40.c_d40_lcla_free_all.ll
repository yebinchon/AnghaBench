; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_lcla_free_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_lcla_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.d40_desc** }
%struct.TYPE_4__ = type { i32 }
%struct.d40_desc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@D40_LCLA_LINK_PER_EVENT_GRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d40_chan*, %struct.d40_desc*)* @d40_lcla_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_lcla_free_all(%struct.d40_chan* %0, %struct.d40_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d40_chan*, align 8
  %5 = alloca %struct.d40_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %4, align 8
  store %struct.d40_desc* %1, %struct.d40_desc** %5, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %13 = call i64 @chan_is_physical(%struct.d40_chan* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

16:                                               ; preds = %2
  %17 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %18 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %72, %16
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @D40_LCLA_LINK_PER_EVENT_GRP, align 4
  %27 = sdiv i32 %26, 2
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %75

29:                                               ; preds = %24
  %30 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %31 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @D40_LCLA_LINK_PER_EVENT_GRP, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %40 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.d40_desc**, %struct.d40_desc*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.d40_desc*, %struct.d40_desc** %44, i64 %46
  %48 = load %struct.d40_desc*, %struct.d40_desc** %47, align 8
  %49 = load %struct.d40_desc*, %struct.d40_desc** %5, align 8
  %50 = icmp eq %struct.d40_desc* %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %29
  %52 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %53 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.d40_desc**, %struct.d40_desc*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.d40_desc*, %struct.d40_desc** %57, i64 %59
  store %struct.d40_desc* null, %struct.d40_desc** %60, align 8
  %61 = load %struct.d40_desc*, %struct.d40_desc** %5, align 8
  %62 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.d40_desc*, %struct.d40_desc** %5, align 8
  %66 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %75

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %29
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %24

75:                                               ; preds = %69, %24
  %76 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %77 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %75, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @chan_is_physical(%struct.d40_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
