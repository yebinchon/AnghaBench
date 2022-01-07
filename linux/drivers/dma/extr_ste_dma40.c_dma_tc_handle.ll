; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_dma_tc_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_dma_tc_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.d40_desc = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d40_chan*)* @dma_tc_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_tc_handle(%struct.d40_chan* %0) #0 {
  %2 = alloca %struct.d40_chan*, align 8
  %3 = alloca %struct.d40_desc*, align 8
  store %struct.d40_chan* %0, %struct.d40_chan** %2, align 8
  %4 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %5 = call %struct.d40_desc* @d40_first_active_get(%struct.d40_chan* %4)
  store %struct.d40_desc* %5, %struct.d40_desc** %3, align 8
  %6 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %7 = icmp eq %struct.d40_desc* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %101

9:                                                ; preds = %1
  %10 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %11 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %9
  %15 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %16 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %19 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %14
  %23 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %24 = call i32 @d40_tx_is_linked(%struct.d40_chan* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %22
  %27 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %28 = call i32 @d40_residue(%struct.d40_chan* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %32 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %33 = call i32 @d40_lcla_free_all(%struct.d40_chan* %31, %struct.d40_desc* %32)
  %34 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %35 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %36 = call i32 @d40_desc_load(%struct.d40_chan* %34, %struct.d40_desc* %35)
  %37 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %38 = call i32 @d40_start(%struct.d40_chan* %37)
  %39 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %40 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %43 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %48 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %30
  br label %50

50:                                               ; preds = %49, %26, %22, %14
  br label %93

51:                                               ; preds = %9
  %52 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %53 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %54 = call i32 @d40_lcla_free_all(%struct.d40_chan* %52, %struct.d40_desc* %53)
  %55 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %56 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %59 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %64 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %65 = call i32 @d40_desc_load(%struct.d40_chan* %63, %struct.d40_desc* %64)
  %66 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %67 = call i32 @d40_start(%struct.d40_chan* %66)
  br label %101

68:                                               ; preds = %51
  %69 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %70 = call i32* @d40_queue_start(%struct.d40_chan* %69)
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %74 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %76 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pm_runtime_mark_last_busy(i32 %79)
  %81 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %82 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pm_runtime_put_autosuspend(i32 %85)
  br label %87

87:                                               ; preds = %72, %68
  %88 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %89 = call i32 @d40_desc_remove(%struct.d40_desc* %88)
  %90 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %91 = load %struct.d40_desc*, %struct.d40_desc** %3, align 8
  %92 = call i32 @d40_desc_done(%struct.d40_chan* %90, %struct.d40_desc* %91)
  br label %93

93:                                               ; preds = %87, %50
  %94 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %95 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %99 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %98, i32 0, i32 1
  %100 = call i32 @tasklet_schedule(i32* %99)
  br label %101

101:                                              ; preds = %93, %62, %8
  ret void
}

declare dso_local %struct.d40_desc* @d40_first_active_get(%struct.d40_chan*) #1

declare dso_local i32 @d40_tx_is_linked(%struct.d40_chan*) #1

declare dso_local i32 @d40_residue(%struct.d40_chan*) #1

declare dso_local i32 @d40_lcla_free_all(%struct.d40_chan*, %struct.d40_desc*) #1

declare dso_local i32 @d40_desc_load(%struct.d40_chan*, %struct.d40_desc*) #1

declare dso_local i32 @d40_start(%struct.d40_chan*) #1

declare dso_local i32* @d40_queue_start(%struct.d40_chan*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @d40_desc_remove(%struct.d40_desc*) #1

declare dso_local i32 @d40_desc_done(%struct.d40_chan*, %struct.d40_desc*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
