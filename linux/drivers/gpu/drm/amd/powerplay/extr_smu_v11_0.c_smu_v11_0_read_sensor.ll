; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU_UCLK = common dso_local global i32 0, align 4
@SMU_GFXCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i8*, i32*)* @smu_v11_0_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_read_sensor(%struct.smu_context* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %58

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %45 [
    i32 131, label %21
    i32 130, label %28
    i32 128, label %35
    i32 129, label %41
  ]

21:                                               ; preds = %19
  %22 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %23 = load i32, i32* @SMU_UCLK, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %22, i32 %23, i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 4, i32* %27, align 4
  br label %51

28:                                               ; preds = %19
  %29 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %30 = load i32, i32* @SMU_GFXCLK, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %29, i32 %30, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 4, i32* %34, align 4
  br label %51

35:                                               ; preds = %19
  %36 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = call i32 @smu_v11_0_get_gfx_vdd(%struct.smu_context* %36, i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 4, i32* %40, align 4
  br label %51

41:                                               ; preds = %19
  %42 = load i8*, i8** %8, align 8
  %43 = bitcast i8* %42 to i32*
  store i32 0, i32* %43, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 4, i32* %44, align 4
  br label %51

45:                                               ; preds = %19
  %46 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @smu_common_read_sensor(%struct.smu_context* %46, i32 %47, i8* %48, i32* %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %45, %41, %35, %28, %21
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32*, i32** %9, align 8
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %16
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @smu_get_current_clk_freq(%struct.smu_context*, i32, i32*) #1

declare dso_local i32 @smu_v11_0_get_gfx_vdd(%struct.smu_context*, i32*) #1

declare dso_local i32 @smu_common_read_sensor(%struct.smu_context*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
