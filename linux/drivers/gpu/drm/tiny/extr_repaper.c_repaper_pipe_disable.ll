; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_pipe_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_pipe_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.repaper_epd = type { i32, i32, i64, %struct.spi_device* }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@REPAPER_COMPENSATE = common dso_local global i32 0, align 4
@REPAPER_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*)* @repaper_pipe_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repaper_pipe_disable(%struct.drm_simple_display_pipe* %0) #0 {
  %2 = alloca %struct.drm_simple_display_pipe*, align 8
  %3 = alloca %struct.repaper_epd*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %2, align 8
  %6 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %7 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.repaper_epd* @drm_to_epd(i32 %9)
  store %struct.repaper_epd* %10, %struct.repaper_epd** %3, align 8
  %11 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %12 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %11, i32 0, i32 3
  %13 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  store %struct.spi_device* %13, %struct.spi_device** %4, align 8
  %14 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %15 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %79

19:                                               ; preds = %1
  %20 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %22 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %33, %19
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %26 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %31 = load i32, i32* @REPAPER_COMPENSATE, align 4
  %32 = call i32 @repaper_one_line(%struct.repaper_epd* %30, i32 32767, i32* null, i32 0, i32* null, i32 %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %38 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %43 = load i32, i32* @REPAPER_COMPENSATE, align 4
  %44 = call i32 @repaper_one_line(%struct.repaper_epd* %42, i32 32767, i32* null, i32 0, i32* null, i32 %43)
  %45 = call i32 @msleep(i32 25)
  %46 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %47 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @gpiod_set_value_cansleep(i64 %48, i32 0)
  %50 = call i32 @msleep(i32 200)
  %51 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %52 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @gpiod_set_value_cansleep(i64 %53, i32 1)
  br label %60

55:                                               ; preds = %36
  %56 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %57 = load i32, i32* @REPAPER_NORMAL, align 4
  %58 = call i32 @repaper_one_line(%struct.repaper_epd* %56, i32 32767, i32* null, i32 0, i32* null, i32 %57)
  %59 = call i32 @msleep(i32 200)
  br label %60

60:                                               ; preds = %55, %41
  %61 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %62 = call i32 @repaper_write_val(%struct.spi_device* %61, i32 11, i32 0)
  %63 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %64 = call i32 @repaper_write_val(%struct.spi_device* %63, i32 3, i32 1)
  %65 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %66 = call i32 @repaper_write_val(%struct.spi_device* %65, i32 5, i32 3)
  %67 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %68 = call i32 @repaper_write_val(%struct.spi_device* %67, i32 5, i32 1)
  %69 = call i32 @msleep(i32 120)
  %70 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %71 = call i32 @repaper_write_val(%struct.spi_device* %70, i32 4, i32 128)
  %72 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %73 = call i32 @repaper_write_val(%struct.spi_device* %72, i32 5, i32 0)
  %74 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %75 = call i32 @repaper_write_val(%struct.spi_device* %74, i32 7, i32 1)
  %76 = call i32 @msleep(i32 50)
  %77 = load %struct.repaper_epd*, %struct.repaper_epd** %3, align 8
  %78 = call i32 @power_off(%struct.repaper_epd* %77)
  br label %79

79:                                               ; preds = %60, %18
  ret void
}

declare dso_local %struct.repaper_epd* @drm_to_epd(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @repaper_one_line(%struct.repaper_epd*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @repaper_write_val(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @power_off(%struct.repaper_epd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
