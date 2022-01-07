; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_slider_cal_abs_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_slider_cal_abs_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ad714x_slider_drv* }
%struct.ad714x_slider_drv = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ad714x_slider_plat* }
%struct.ad714x_slider_plat = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"slider %d absolute position:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*, i32)* @ad714x_slider_cal_abs_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad714x_slider_cal_abs_pos(%struct.ad714x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.ad714x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_slider_plat*, align 8
  %6 = alloca %struct.ad714x_slider_drv*, align 8
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %8 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ad714x_slider_plat*, %struct.ad714x_slider_plat** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ad714x_slider_plat, %struct.ad714x_slider_plat* %11, i64 %13
  store %struct.ad714x_slider_plat* %14, %struct.ad714x_slider_plat** %5, align 8
  %15 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %16 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %19, i64 %21
  store %struct.ad714x_slider_drv* %22, %struct.ad714x_slider_drv** %6, align 8
  %23 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %24 = load %struct.ad714x_slider_plat*, %struct.ad714x_slider_plat** %5, align 8
  %25 = getelementptr inbounds %struct.ad714x_slider_plat, %struct.ad714x_slider_plat* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ad714x_slider_plat*, %struct.ad714x_slider_plat** %5, align 8
  %28 = getelementptr inbounds %struct.ad714x_slider_plat, %struct.ad714x_slider_plat* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %31 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ad714x_slider_plat*, %struct.ad714x_slider_plat** %5, align 8
  %34 = getelementptr inbounds %struct.ad714x_slider_plat, %struct.ad714x_slider_plat* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ad714x_cal_abs_pos(%struct.ad714x_chip* %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %38 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %40 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.ad714x_slider_drv*, %struct.ad714x_slider_drv** %6, align 8
  %44 = getelementptr inbounds %struct.ad714x_slider_drv, %struct.ad714x_slider_drv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  ret void
}

declare dso_local i32 @ad714x_cal_abs_pos(%struct.ad714x_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
