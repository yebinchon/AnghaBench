; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_completion_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_completion_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_chan = type { %struct.TYPE_6__, i32, %struct.edma_desc* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.edma_desc = type { i64, i64, i64, i64, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"Transfer completed on channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Sub transfer completed on channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edma_chan*)* @edma_completion_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_completion_handler(%struct.edma_chan* %0) #0 {
  %2 = alloca %struct.edma_chan*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.edma_desc*, align 8
  store %struct.edma_chan* %0, %struct.edma_chan** %2, align 8
  %5 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %3, align 8
  %12 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %16, i32 0, i32 2
  %18 = load %struct.edma_desc*, %struct.edma_desc** %17, align 8
  store %struct.edma_desc* %18, %struct.edma_desc** %4, align 8
  %19 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %20 = icmp ne %struct.edma_desc* %19, null
  br i1 %20, label %21, label %86

21:                                               ; preds = %1
  %22 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %23 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %28 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %27, i32 0, i32 6
  %29 = call i32 @vchan_cyclic_callback(i32* %28)
  %30 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  br label %91

34:                                               ; preds = %21
  %35 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %36 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %39 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %44 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %46 = call i32 @edma_stop(%struct.edma_chan* %45)
  %47 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %48 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %47, i32 0, i32 6
  %49 = call i32 @vchan_cookie_complete(i32* %48)
  %50 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %51 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %50, i32 0, i32 2
  store %struct.edma_desc* null, %struct.edma_desc** %51, align 8
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %54 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %82

57:                                               ; preds = %34
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %60 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %64 = call i32 @edma_pause(%struct.edma_chan* %63)
  %65 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %66 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %69 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %73 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %76 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %78 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.edma_desc*, %struct.edma_desc** %4, align 8
  %81 = getelementptr inbounds %struct.edma_desc, %struct.edma_desc* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %57, %42
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %85 = call i32 @edma_execute(%struct.edma_chan* %84)
  br label %86

86:                                               ; preds = %83, %1
  %87 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %88 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  br label %91

91:                                               ; preds = %86, %26
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vchan_cyclic_callback(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @edma_stop(%struct.edma_chan*) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @edma_pause(%struct.edma_chan*) #1

declare dso_local i32 @edma_execute(%struct.edma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
