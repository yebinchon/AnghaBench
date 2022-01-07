; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun4i_backend = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"allwinner,sun8i-a33-display-backend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @sun4i_backend_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_backend_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sun4i_backend*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.sun4i_backend* @dev_get_drvdata(%struct.device* %8)
  store %struct.sun4i_backend* %9, %struct.sun4i_backend** %7, align 8
  %10 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %11 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @list_del(i32* %12)
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @of_device_is_compatible(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @sun4i_backend_free_sat(%struct.device* %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %24 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_disable_unprepare(i32 %25)
  %27 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %28 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_disable_unprepare(i32 %29)
  %31 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %32 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_disable_unprepare(i32 %33)
  %35 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %36 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @reset_control_assert(i32 %37)
  ret void
}

declare dso_local %struct.sun4i_backend* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @sun4i_backend_free_sat(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
