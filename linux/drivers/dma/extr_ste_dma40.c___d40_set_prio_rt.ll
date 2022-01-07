; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c___d40_set_prio_rt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c___d40_set_prio_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.d40_gen_dmac }
%struct.d40_gen_dmac = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d40_chan*, i32, i32)* @__d40_set_prio_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__d40_set_prio_rt(%struct.d40_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.d40_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.d40_gen_dmac*, align 8
  store %struct.d40_chan* %0, %struct.d40_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %16 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %20 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @D40_TYPE_TO_EVENT(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @D40_TYPE_TO_GROUP(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @BIT(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %30 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store %struct.d40_gen_dmac* %32, %struct.d40_gen_dmac** %14, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load %struct.d40_gen_dmac*, %struct.d40_gen_dmac** %14, align 8
  %37 = getelementptr inbounds %struct.d40_gen_dmac, %struct.d40_gen_dmac* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %43

39:                                               ; preds = %3
  %40 = load %struct.d40_gen_dmac*, %struct.d40_gen_dmac** %14, align 8
  %41 = getelementptr inbounds %struct.d40_gen_dmac, %struct.d40_gen_dmac* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %38, %35 ], [ %42, %39 ]
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %49 = call i64 @chan_is_logical(%struct.d40_chan* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %47, %43
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.d40_gen_dmac*, %struct.d40_gen_dmac** %14, align 8
  %57 = getelementptr inbounds %struct.d40_gen_dmac, %struct.d40_gen_dmac* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  br label %63

59:                                               ; preds = %52
  %60 = load %struct.d40_gen_dmac*, %struct.d40_gen_dmac** %14, align 8
  %61 = getelementptr inbounds %struct.d40_gen_dmac, %struct.d40_gen_dmac* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i32 [ %58, %55 ], [ %62, %59 ]
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = shl i32 %68, 16
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %73 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %79, 4
  %81 = add nsw i32 %78, %80
  %82 = call i32 @writel(i32 %71, i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %85 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 %91, 4
  %93 = add nsw i32 %90, %92
  %94 = call i32 @writel(i32 %83, i32 %93)
  ret void
}

declare dso_local i32 @D40_TYPE_TO_EVENT(i32) #1

declare dso_local i32 @D40_TYPE_TO_GROUP(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @chan_is_logical(%struct.d40_chan*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
