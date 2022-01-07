; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32 }

@GSC_RESET_TIMEOUT = common dso_local global i32 0, align 4
@GSC_SW_RESET_SRESET = common dso_local global i32 0, align 4
@GSC_SW_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to reset gsc h/w.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GSC_IN_BASE_ADDR_Y_MASK = common dso_local global i32 0, align 4
@GSC_IN_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@GSC_IN_BASE_ADDR_CB_MASK = common dso_local global i32 0, align 4
@GSC_IN_BASE_ADDR_CR_MASK = common dso_local global i32 0, align 4
@GSC_OUT_BASE_ADDR_Y_MASK = common dso_local global i32 0, align 4
@GSC_OUT_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@GSC_OUT_BASE_ADDR_CB_MASK = common dso_local global i32 0, align 4
@GSC_OUT_BASE_ADDR_CR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsc_context*)* @gsc_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_sw_reset(%struct.gsc_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %3, align 8
  %6 = load i32, i32* @GSC_RESET_TIMEOUT, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @GSC_SW_RESET_SRESET, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @GSC_SW_RESET, align 4
  %10 = call i32 @gsc_write(i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %21, %1
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, i32* @GSC_SW_RESET, align 4
  %17 = call i32 @gsc_read(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %23

21:                                               ; preds = %15
  %22 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %11

23:                                               ; preds = %20, %11
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %28 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DRM_DEV_ERROR(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %66

33:                                               ; preds = %23
  %34 = load i32, i32* @GSC_IN_BASE_ADDR_Y_MASK, align 4
  %35 = call i32 @gsc_read(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @GSC_IN_BASE_ADDR_MASK, align 4
  %37 = call i32 @GSC_IN_BASE_ADDR_PINGPONG(i32 0)
  %38 = or i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @GSC_IN_BASE_ADDR_Y_MASK, align 4
  %43 = call i32 @gsc_write(i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @GSC_IN_BASE_ADDR_CB_MASK, align 4
  %46 = call i32 @gsc_write(i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @GSC_IN_BASE_ADDR_CR_MASK, align 4
  %49 = call i32 @gsc_write(i32 %47, i32 %48)
  %50 = load i32, i32* @GSC_OUT_BASE_ADDR_Y_MASK, align 4
  %51 = call i32 @gsc_read(i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @GSC_OUT_BASE_ADDR_MASK, align 4
  %53 = call i32 @GSC_OUT_BASE_ADDR_PINGPONG(i32 0)
  %54 = or i32 %52, %53
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @GSC_OUT_BASE_ADDR_Y_MASK, align 4
  %59 = call i32 @gsc_write(i32 %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @GSC_OUT_BASE_ADDR_CB_MASK, align 4
  %62 = call i32 @gsc_write(i32 %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @GSC_OUT_BASE_ADDR_CR_MASK, align 4
  %65 = call i32 @gsc_write(i32 %63, i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %33, %26
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @gsc_write(i32, i32) #1

declare dso_local i32 @gsc_read(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @GSC_IN_BASE_ADDR_PINGPONG(i32) #1

declare dso_local i32 @GSC_OUT_BASE_ADDR_PINGPONG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
