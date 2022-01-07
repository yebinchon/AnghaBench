; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_aux = type { %struct.ddc* }
%struct.ddc = type { i32 }

@GPIO_MODE_HARDWARE = common dso_local global i32 0, align 4
@GPIO_DDC_CONFIG_TYPE_MODE_AUX = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_aux*, %struct.ddc*)* @acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire(%struct.dce_aux* %0, %struct.ddc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dce_aux*, align 8
  %5 = alloca %struct.ddc*, align 8
  %6 = alloca i32, align 4
  store %struct.dce_aux* %0, %struct.dce_aux** %4, align 8
  store %struct.ddc* %1, %struct.ddc** %5, align 8
  %7 = load %struct.dce_aux*, %struct.dce_aux** %4, align 8
  %8 = call i32 @is_engine_available(%struct.dce_aux* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.ddc*, %struct.ddc** %5, align 8
  %13 = load i32, i32* @GPIO_MODE_HARDWARE, align 4
  %14 = load i32, i32* @GPIO_DDC_CONFIG_TYPE_MODE_AUX, align 4
  %15 = call i32 @dal_ddc_open(%struct.ddc* %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GPIO_RESULT_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %31

20:                                               ; preds = %11
  %21 = load %struct.dce_aux*, %struct.dce_aux** %4, align 8
  %22 = call i32 @acquire_engine(%struct.dce_aux* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load %struct.ddc*, %struct.ddc** %5, align 8
  %26 = call i32 @dal_ddc_close(%struct.ddc* %25)
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %20
  %28 = load %struct.ddc*, %struct.ddc** %5, align 8
  %29 = load %struct.dce_aux*, %struct.dce_aux** %4, align 8
  %30 = getelementptr inbounds %struct.dce_aux, %struct.dce_aux* %29, i32 0, i32 0
  store %struct.ddc* %28, %struct.ddc** %30, align 8
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %24, %19, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @is_engine_available(%struct.dce_aux*) #1

declare dso_local i32 @dal_ddc_open(%struct.ddc*, i32, i32) #1

declare dso_local i32 @acquire_engine(%struct.dce_aux*) #1

declare dso_local i32 @dal_ddc_close(%struct.ddc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
