; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_wait_event_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_wait_event_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_wait_info = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.dpu_encoder_wait_info*)* @dpu_encoder_helper_wait_event_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_helper_wait_event_timeout(i32 %0, i32 %1, %struct.dpu_encoder_wait_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_encoder_wait_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.dpu_encoder_wait_info* %2, %struct.dpu_encoder_wait_info** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 (...) @ktime_get()
  %12 = call i64 @ktime_to_ms(i32 %11)
  %13 = load %struct.dpu_encoder_wait_info*, %struct.dpu_encoder_wait_info** %6, align 8
  %14 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  store i64 %16, i64* %8, align 8
  %17 = load %struct.dpu_encoder_wait_info*, %struct.dpu_encoder_wait_info** %6, align 8
  %18 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @msecs_to_jiffies(i64 %19)
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %59, %3
  %22 = load %struct.dpu_encoder_wait_info*, %struct.dpu_encoder_wait_info** %6, align 8
  %23 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dpu_encoder_wait_info*, %struct.dpu_encoder_wait_info** %6, align 8
  %27 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @atomic_read(i32 %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @wait_event_timeout(i32 %25, i32 %31, i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = call i32 (...) @ktime_get()
  %35 = call i64 @ktime_to_ms(i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.dpu_encoder_wait_info*, %struct.dpu_encoder_wait_info** %6, align 8
  %42 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @atomic_read(i32 %43)
  %45 = call i32 @trace_dpu_enc_wait_event_timeout(i32 %36, i32 %37, i32 %38, i64 %39, i64 %40, i64 %44)
  br label %46

46:                                               ; preds = %21
  %47 = load %struct.dpu_encoder_wait_info*, %struct.dpu_encoder_wait_info** %6, align 8
  %48 = getelementptr inbounds %struct.dpu_encoder_wait_info, %struct.dpu_encoder_wait_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @atomic_read(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp slt i64 %56, %57
  br label %59

59:                                               ; preds = %55, %52, %46
  %60 = phi i1 [ false, %52 ], [ false, %46 ], [ %58, %55 ]
  br i1 %60, label %21, label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i64 @ktime_to_ms(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i64 @atomic_read(i32) #1

declare dso_local i32 @trace_dpu_enc_wait_event_timeout(i32, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
