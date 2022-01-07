; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32 }

@MXR_STATUS = common dso_local global i32 0, align 4
@MXR_STATUS_REG_RUN = common dso_local global i32 0, align 4
@MXR_STATUS_REG_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_context*)* @mixer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_stop(%struct.mixer_context* %0) #0 {
  %2 = alloca %struct.mixer_context*, align 8
  %3 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %2, align 8
  store i32 20, i32* %3, align 4
  %4 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %5 = load i32, i32* @MXR_STATUS, align 4
  %6 = load i32, i32* @MXR_STATUS_REG_RUN, align 4
  %7 = call i32 @mixer_reg_writemask(%struct.mixer_context* %4, i32 %5, i32 0, i32 %6)
  br label %8

8:                                                ; preds = %21, %1
  %9 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %10 = load i32, i32* @MXR_STATUS, align 4
  %11 = call i32 @mixer_reg_read(%struct.mixer_context* %9, i32 %10)
  %12 = load i32, i32* @MXR_STATUS_REG_IDLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i1 [ false, %8 ], [ %18, %15 ]
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = call i32 @usleep_range(i32 10000, i32 12000)
  br label %8

23:                                               ; preds = %19
  ret void
}

declare dso_local i32 @mixer_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @mixer_reg_read(%struct.mixer_context*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
