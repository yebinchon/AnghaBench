; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_envelope-detector.c_envelope_detector_setup_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_envelope-detector.c_envelope_detector_setup_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envelope = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.envelope*)* @envelope_detector_setup_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envelope_detector_setup_compare(%struct.envelope* %0) #0 {
  %2 = alloca %struct.envelope*, align 8
  %3 = alloca i32, align 4
  store %struct.envelope* %0, %struct.envelope** %2, align 8
  %4 = load %struct.envelope*, %struct.envelope** %2, align 8
  %5 = getelementptr inbounds %struct.envelope, %struct.envelope* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.envelope*, %struct.envelope** %2, align 8
  %8 = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %6, %9
  %11 = load %struct.envelope*, %struct.envelope** %2, align 8
  %12 = getelementptr inbounds %struct.envelope, %struct.envelope* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = add nsw i32 %10, %16
  %18 = sdiv i32 %17, 2
  %19 = load %struct.envelope*, %struct.envelope** %2, align 8
  %20 = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.envelope*, %struct.envelope** %2, align 8
  %22 = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.envelope*, %struct.envelope** %2, align 8
  %25 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.envelope*, %struct.envelope** %2, align 8
  %31 = getelementptr inbounds %struct.envelope, %struct.envelope* %30, i32 0, i32 4
  %32 = call i32 @complete(i32* %31)
  br label %80

33:                                               ; preds = %1
  %34 = load %struct.envelope*, %struct.envelope** %2, align 8
  %35 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.envelope*, %struct.envelope** %2, align 8
  %38 = getelementptr inbounds %struct.envelope, %struct.envelope* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.envelope*, %struct.envelope** %2, align 8
  %44 = getelementptr inbounds %struct.envelope, %struct.envelope* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = phi i32 [ 0, %41 ], [ %45, %42 ]
  %48 = call i32 @iio_write_channel_raw(i32 %36, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %73

52:                                               ; preds = %46
  %53 = load %struct.envelope*, %struct.envelope** %2, align 8
  %54 = call i32 @envelope_detector_comp_latch(%struct.envelope* %53)
  %55 = load %struct.envelope*, %struct.envelope** %2, align 8
  %56 = getelementptr inbounds %struct.envelope, %struct.envelope* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.envelope*, %struct.envelope** %2, align 8
  %59 = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @iio_write_channel_raw(i32 %57, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %73

65:                                               ; preds = %52
  %66 = load %struct.envelope*, %struct.envelope** %2, align 8
  %67 = getelementptr inbounds %struct.envelope, %struct.envelope* %66, i32 0, i32 6
  %68 = load %struct.envelope*, %struct.envelope** %2, align 8
  %69 = getelementptr inbounds %struct.envelope, %struct.envelope* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @msecs_to_jiffies(i32 %70)
  %72 = call i32 @schedule_delayed_work(i32* %67, i32 %71)
  br label %80

73:                                               ; preds = %64, %51
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.envelope*, %struct.envelope** %2, align 8
  %76 = getelementptr inbounds %struct.envelope, %struct.envelope* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.envelope*, %struct.envelope** %2, align 8
  %78 = getelementptr inbounds %struct.envelope, %struct.envelope* %77, i32 0, i32 4
  %79 = call i32 @complete(i32* %78)
  br label %80

80:                                               ; preds = %73, %65, %29
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @iio_write_channel_raw(i32, i32) #1

declare dso_local i32 @envelope_detector_comp_latch(%struct.envelope*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
