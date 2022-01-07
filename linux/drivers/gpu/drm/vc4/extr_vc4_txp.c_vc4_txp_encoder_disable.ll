; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.vc4_txp = type { i32 }

@TXP_DST_CTRL = common dso_local global i32 0, align 4
@TXP_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TXP_ABORT = common dso_local global i32 0, align 4
@TXP_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @vc4_txp_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_txp_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.vc4_txp*, align 8
  %4 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.vc4_txp* @encoder_to_vc4_txp(%struct.drm_encoder* %5)
  store %struct.vc4_txp* %6, %struct.vc4_txp** %3, align 8
  %7 = load i32, i32* @TXP_DST_CTRL, align 4
  %8 = call i32 @TXP_READ(i32 %7)
  %9 = load i32, i32* @TXP_BUSY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load i64, i64* @jiffies, align 8
  %14 = call i64 @msecs_to_jiffies(i32 1000)
  %15 = add i64 %13, %14
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* @TXP_DST_CTRL, align 4
  %17 = load i32, i32* @TXP_ABORT, align 4
  %18 = call i32 @TXP_WRITE(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %32, %12
  %20 = load i32, i32* @TXP_DST_CTRL, align 4
  %21 = call i32 @TXP_READ(i32 %20)
  %22 = load i32, i32* @TXP_BUSY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @time_before(i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi i1 [ false, %19 ], [ %29, %25 ]
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %19

33:                                               ; preds = %30
  %34 = load i32, i32* @TXP_DST_CTRL, align 4
  %35 = call i32 @TXP_READ(i32 %34)
  %36 = load i32, i32* @TXP_BUSY, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @WARN_ON(i32 %37)
  br label %39

39:                                               ; preds = %33, %1
  %40 = load i32, i32* @TXP_DST_CTRL, align 4
  %41 = load i32, i32* @TXP_POWERDOWN, align 4
  %42 = call i32 @TXP_WRITE(i32 %40, i32 %41)
  ret void
}

declare dso_local %struct.vc4_txp* @encoder_to_vc4_txp(%struct.drm_encoder*) #1

declare dso_local i32 @TXP_READ(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @TXP_WRITE(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
