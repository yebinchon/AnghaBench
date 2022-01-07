; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_pin = type { i32, i32*, i64, i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CEC_NUM_PIN_EVENTS = common dso_local global i32 0, align 4
@CEC_PIN_EVENT_FL_DROPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_pin*, i32, i32)* @cec_pin_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_pin_update(%struct.cec_pin* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cec_pin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cec_pin* %0, %struct.cec_pin** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %13 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %12, i32 0, i32 7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %82

19:                                               ; preds = %10, %3
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %22 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %21, i32 0, i32 7
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %26 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %25, i32 0, i32 5
  %27 = call i32 @atomic_read(i32* %26)
  %28 = load i32, i32* @CEC_NUM_PIN_EVENTS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %33 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %38 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* @CEC_PIN_EVENT_FL_DROPPED, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %45 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %48 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %43, i32* %50, align 4
  %51 = call i32 (...) @ktime_get()
  %52 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %53 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %56 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %51, i32* %58, align 4
  %59 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %60 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  %63 = load i32, i32* @CEC_NUM_PIN_EVENTS, align 4
  %64 = sext i32 %63 to i64
  %65 = urem i64 %62, %64
  %66 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %67 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %69 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %68, i32 0, i32 5
  %70 = call i32 @atomic_inc(i32* %69)
  br label %78

71:                                               ; preds = %19
  %72 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %73 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %75 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %42
  %79 = load %struct.cec_pin*, %struct.cec_pin** %4, align 8
  %80 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %79, i32 0, i32 3
  %81 = call i32 @wake_up_interruptible(i32* %80)
  br label %82

82:                                               ; preds = %78, %18
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
