; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_release_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_release_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context = type { i64, i64, i64, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { %struct.pio_buf }
%struct.pio_buf = type { i32, i32 (i32, i32)*, i32 }

@CR_COUNTER_SMASK = common dso_local global i64 0, align 8
@CR_COUNTER_SHIFT = common dso_local global i64 0, align 8
@CR_COUNTER_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_release_update(%struct.send_context* %0) #0 {
  %2 = alloca %struct.send_context*, align 8
  %3 = alloca %struct.pio_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.send_context* %0, %struct.send_context** %2, align 8
  %12 = load %struct.send_context*, %struct.send_context** %2, align 8
  %13 = icmp ne %struct.send_context* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %114

15:                                               ; preds = %1
  %16 = load %struct.send_context*, %struct.send_context** %2, align 8
  %17 = getelementptr inbounds %struct.send_context, %struct.send_context* %16, i32 0, i32 3
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.send_context*, %struct.send_context** %2, align 8
  %21 = getelementptr inbounds %struct.send_context, %struct.send_context* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le64_to_cpu(i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load %struct.send_context*, %struct.send_context** %2, align 8
  %26 = getelementptr inbounds %struct.send_context, %struct.send_context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @CR_COUNTER_SMASK, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* @CR_COUNTER_SHIFT, align 8
  %32 = lshr i64 %30, %31
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @CR_COUNTER_MASK, align 8
  %35 = and i64 %33, %34
  %36 = sub i64 %32, %35
  %37 = load i64, i64* @CR_COUNTER_MASK, align 8
  %38 = and i64 %36, %37
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %8, align 8
  %42 = load %struct.send_context*, %struct.send_context** %2, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @trace_hfi1_piofree(%struct.send_context* %42, i64 %43)
  store i32 -1, i32* %11, align 4
  %45 = load %struct.send_context*, %struct.send_context** %2, align 8
  %46 = getelementptr inbounds %struct.send_context, %struct.send_context* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @READ_ONCE(i32 %47)
  store i64 %48, i64* %5, align 8
  %49 = load %struct.send_context*, %struct.send_context** %2, align 8
  %50 = getelementptr inbounds %struct.send_context, %struct.send_context* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %99, %15
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %100

56:                                               ; preds = %52
  %57 = load %struct.send_context*, %struct.send_context** %2, align 8
  %58 = getelementptr inbounds %struct.send_context, %struct.send_context* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.pio_buf* %62, %struct.pio_buf** %3, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.pio_buf*, %struct.pio_buf** %3, align 8
  %65 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @sent_before(i64 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %100

70:                                               ; preds = %56
  %71 = load %struct.pio_buf*, %struct.pio_buf** %3, align 8
  %72 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %71, i32 0, i32 1
  %73 = load i32 (i32, i32)*, i32 (i32, i32)** %72, align 8
  %74 = icmp ne i32 (i32, i32)* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @fill_code(i64 %79)
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.pio_buf*, %struct.pio_buf** %3, align 8
  %83 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %82, i32 0, i32 1
  %84 = load i32 (i32, i32)*, i32 (i32, i32)** %83, align 8
  %85 = load %struct.pio_buf*, %struct.pio_buf** %3, align 8
  %86 = getelementptr inbounds %struct.pio_buf, %struct.pio_buf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 %84(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %70
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.send_context*, %struct.send_context** %2, align 8
  %95 = getelementptr inbounds %struct.send_context, %struct.send_context* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp uge i64 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store i64 0, i64* %6, align 8
  br label %99

99:                                               ; preds = %98, %90
  br label %52

100:                                              ; preds = %69, %52
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.send_context*, %struct.send_context** %2, align 8
  %103 = getelementptr inbounds %struct.send_context, %struct.send_context* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = call i32 (...) @smp_wmb()
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.send_context*, %struct.send_context** %2, align 8
  %107 = getelementptr inbounds %struct.send_context, %struct.send_context* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.send_context*, %struct.send_context** %2, align 8
  %109 = getelementptr inbounds %struct.send_context, %struct.send_context* %108, i32 0, i32 3
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.send_context*, %struct.send_context** %2, align 8
  %113 = call i32 @sc_piobufavail(%struct.send_context* %112)
  br label %114

114:                                              ; preds = %100, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @trace_hfi1_piofree(%struct.send_context*, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @sent_before(i64, i32) #1

declare dso_local i32 @fill_code(i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sc_piobufavail(%struct.send_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
