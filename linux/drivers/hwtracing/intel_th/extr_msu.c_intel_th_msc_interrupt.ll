; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i32 }
%struct.msc = type { i32, %struct.TYPE_2__*, i32, %struct.msc_window*, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.msc_window = type { i32 }

@REG_MSU_MSUSTS = common dso_local global i64 0, align 8
@MSUSTS_MSC1BLAST = common dso_local global i32 0, align 4
@MSUSTS_MSC0BLAST = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@WIN_READY = common dso_local global i32 0, align 4
@WIN_INUSE = common dso_local global i32 0, align 4
@WIN_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_th_device*)* @intel_th_msc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_msc_interrupt(%struct.intel_th_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_th_device*, align 8
  %4 = alloca %struct.msc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msc_window*, align 8
  %8 = alloca %struct.msc_window*, align 8
  store %struct.intel_th_device* %0, %struct.intel_th_device** %3, align 8
  %9 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %10 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %9, i32 0, i32 0
  %11 = call %struct.msc* @dev_get_drvdata(i32* %10)
  store %struct.msc* %11, %struct.msc** %4, align 8
  %12 = load %struct.msc*, %struct.msc** %4, align 8
  %13 = getelementptr inbounds %struct.msc, %struct.msc* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_MSU_MSUSTS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ioread32(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.msc*, %struct.msc** %4, align 8
  %19 = getelementptr inbounds %struct.msc, %struct.msc* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @MSUSTS_MSC1BLAST, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @MSUSTS_MSC0BLAST, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %6, align 4
  %28 = load %struct.msc*, %struct.msc** %4, align 8
  %29 = getelementptr inbounds %struct.msc, %struct.msc* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.msc*, %struct.msc** %4, align 8
  %34 = getelementptr inbounds %struct.msc, %struct.msc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32, %26
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %2, align 4
  br label %131

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %39
  %46 = load %struct.msc*, %struct.msc** %4, align 8
  %47 = getelementptr inbounds %struct.msc, %struct.msc* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @IRQ_NONE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %2, align 4
  br label %131

56:                                               ; preds = %39
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.msc*, %struct.msc** %4, align 8
  %59 = getelementptr inbounds %struct.msc, %struct.msc* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @REG_MSU_MSUSTS, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @iowrite32(i32 %57, i64 %62)
  %64 = load %struct.msc*, %struct.msc** %4, align 8
  %65 = getelementptr inbounds %struct.msc, %struct.msc* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* @IRQ_NONE, align 4
  store i32 %69, i32* %2, align 4
  br label %131

70:                                               ; preds = %56
  %71 = load %struct.msc*, %struct.msc** %4, align 8
  %72 = getelementptr inbounds %struct.msc, %struct.msc* %71, i32 0, i32 3
  %73 = load %struct.msc_window*, %struct.msc_window** %72, align 8
  store %struct.msc_window* %73, %struct.msc_window** %7, align 8
  %74 = load %struct.msc_window*, %struct.msc_window** %7, align 8
  %75 = icmp ne %struct.msc_window* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %77, i32* %2, align 4
  br label %131

78:                                               ; preds = %70
  %79 = load %struct.msc_window*, %struct.msc_window** %7, align 8
  %80 = call %struct.msc_window* @msc_next_window(%struct.msc_window* %79)
  store %struct.msc_window* %80, %struct.msc_window** %8, align 8
  %81 = load %struct.msc_window*, %struct.msc_window** %8, align 8
  %82 = icmp ne %struct.msc_window* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %84, i32* %2, align 4
  br label %131

85:                                               ; preds = %78
  %86 = load %struct.msc_window*, %struct.msc_window** %8, align 8
  %87 = load i32, i32* @WIN_READY, align 4
  %88 = load i32, i32* @WIN_INUSE, align 4
  %89 = call i64 @msc_win_set_lockout(%struct.msc_window* %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.msc*, %struct.msc** %4, align 8
  %93 = getelementptr inbounds %struct.msc, %struct.msc* %92, i32 0, i32 2
  %94 = call i32 @schedule_work(i32* %93)
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %2, align 4
  br label %131

96:                                               ; preds = %85
  %97 = load %struct.msc_window*, %struct.msc_window** %7, align 8
  %98 = load i32, i32* @WIN_INUSE, align 4
  %99 = load i32, i32* @WIN_LOCKED, align 4
  %100 = call i64 @msc_win_set_lockout(%struct.msc_window* %97, i32 %98, i32 %99)
  %101 = load %struct.msc*, %struct.msc** %4, align 8
  %102 = call i32 @msc_win_switch(%struct.msc* %101)
  %103 = load %struct.msc*, %struct.msc** %4, align 8
  %104 = getelementptr inbounds %struct.msc, %struct.msc* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = icmp ne %struct.TYPE_2__* %105, null
  br i1 %106, label %107, label %129

107:                                              ; preds = %96
  %108 = load %struct.msc*, %struct.msc** %4, align 8
  %109 = getelementptr inbounds %struct.msc, %struct.msc* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %111, align 8
  %113 = icmp ne i32 (i32, i32, i32)* %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %107
  %115 = load %struct.msc*, %struct.msc** %4, align 8
  %116 = getelementptr inbounds %struct.msc, %struct.msc* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %118, align 8
  %120 = load %struct.msc*, %struct.msc** %4, align 8
  %121 = getelementptr inbounds %struct.msc, %struct.msc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.msc_window*, %struct.msc_window** %7, align 8
  %124 = getelementptr inbounds %struct.msc_window, %struct.msc_window* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.msc_window*, %struct.msc_window** %7, align 8
  %127 = call i32 @msc_win_total_sz(%struct.msc_window* %126)
  %128 = call i32 %119(i32 %122, i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %114, %107, %96
  %130 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %91, %83, %76, %68, %54, %37
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.msc* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local %struct.msc_window* @msc_next_window(%struct.msc_window*) #1

declare dso_local i64 @msc_win_set_lockout(%struct.msc_window*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @msc_win_switch(%struct.msc*) #1

declare dso_local i32 @msc_win_total_sz(%struct.msc_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
