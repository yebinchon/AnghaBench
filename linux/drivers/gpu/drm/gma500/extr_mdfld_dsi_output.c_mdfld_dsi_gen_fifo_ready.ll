; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_gen_fifo_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_gen_fifo_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@GEN_FB_TIME_OUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"mdfld_dsi_gen_fifo_ready, Timeout. gen_fifo_stat_reg = 0x%x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdfld_dsi_gen_fifo_ready(%struct.drm_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @GEN_FB_TIME_OUT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @REG_READ(i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = and i64 %14, %15
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %25

20:                                               ; preds = %12
  %21 = call i32 @udelay(i32 100)
  br label %22

22:                                               ; preds = %20
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %7, align 8
  br label %8

25:                                               ; preds = %19, %8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @GEN_FB_TIME_OUT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %29, %25
  ret void
}

declare dso_local i64 @REG_READ(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
