; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_rotator.c_rotator_src_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_rotator.c_rotator_src_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rot_context = type { i32 }

@ROT_CONTROL = common dso_local global i32 0, align 4
@ROT_CONTROL_FMT_MASK = common dso_local global i32 0, align 4
@ROT_CONTROL_FMT_YCBCR420_2P = common dso_local global i32 0, align 4
@ROT_CONTROL_FMT_RGB888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rot_context*, i32)* @rotator_src_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotator_src_set_fmt(%struct.rot_context* %0, i32 %1) #0 {
  %3 = alloca %struct.rot_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rot_context* %0, %struct.rot_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ROT_CONTROL, align 4
  %7 = call i32 @rot_read(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @ROT_CONTROL_FMT_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %21 [
    i32 129, label %13
    i32 128, label %17
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @ROT_CONTROL_FMT_YCBCR420_2P, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ROT_CONTROL_FMT_RGB888, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %2, %17, %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ROT_CONTROL, align 4
  %24 = call i32 @rot_write(i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @rot_read(i32) #1

declare dso_local i32 @rot_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
