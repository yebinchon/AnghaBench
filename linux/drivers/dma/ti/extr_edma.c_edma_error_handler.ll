; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_error_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_chan = type { i32, %struct.TYPE_6__, i32*, i32, %struct.edma_cc* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.edma_cc = type { i32 }
%struct.edmacc_param = type { i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"Error on null slot, setting miss\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Missed event, TRIGGERING\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edma_chan*)* @edma_error_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_error_handler(%struct.edma_chan* %0) #0 {
  %2 = alloca %struct.edma_chan*, align 8
  %3 = alloca %struct.edma_cc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.edmacc_param, align 8
  %6 = alloca i32, align 4
  store %struct.edma_chan* %0, %struct.edma_chan** %2, align 8
  %7 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %7, i32 0, i32 4
  %9 = load %struct.edma_cc*, %struct.edma_cc** %8, align 8
  store %struct.edma_cc* %9, %struct.edma_cc** %3, align 8
  %10 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %65

22:                                               ; preds = %1
  %23 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.edma_cc*, %struct.edma_cc** %3, align 8
  %28 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @edma_read_slot(%struct.edma_cc* %27, i32 %32, %struct.edmacc_param* %5)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.edmacc_param, %struct.edmacc_param* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.edmacc_param, %struct.edmacc_param* %5, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %22
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %48 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %60

49:                                               ; preds = %40, %36
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %53 = call i32 @edma_clean_channel(%struct.edma_chan* %52)
  %54 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %55 = call i32 @edma_stop(%struct.edma_chan* %54)
  %56 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %57 = call i32 @edma_start(%struct.edma_chan* %56)
  %58 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %59 = call i32 @edma_trigger_channel(%struct.edma_chan* %58)
  br label %60

60:                                               ; preds = %49, %44
  %61 = load %struct.edma_chan*, %struct.edma_chan** %2, align 8
  %62 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  br label %65

65:                                               ; preds = %60, %21
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @edma_read_slot(%struct.edma_cc*, i32, %struct.edmacc_param*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @edma_clean_channel(%struct.edma_chan*) #1

declare dso_local i32 @edma_stop(%struct.edma_chan*) #1

declare dso_local i32 @edma_start(%struct.edma_chan*) #1

declare dso_local i32 @edma_trigger_channel(%struct.edma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
