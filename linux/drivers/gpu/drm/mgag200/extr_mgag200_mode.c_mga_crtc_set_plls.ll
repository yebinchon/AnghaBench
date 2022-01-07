; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_set_plls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_set_plls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mga_device*, i64)* @mga_crtc_set_plls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_crtc_set_plls(%struct.mga_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mga_device*, align 8
  %5 = alloca i64, align 8
  store %struct.mga_device* %0, %struct.mga_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %7 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %13
    i32 131, label %13
    i32 132, label %17
    i32 135, label %21
    i32 134, label %21
    i32 133, label %25
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @mga_g200se_set_plls(%struct.mga_device* %10, i64 %11)
  store i32 %12, i32* %3, align 4
  br label %30

13:                                               ; preds = %2, %2
  %14 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @mga_g200wb_set_plls(%struct.mga_device* %14, i64 %15)
  store i32 %16, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @mga_g200ev_set_plls(%struct.mga_device* %18, i64 %19)
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %2, %2
  %22 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @mga_g200eh_set_plls(%struct.mga_device* %22, i64 %23)
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @mga_g200er_set_plls(%struct.mga_device* %26, i64 %27)
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %25, %21, %17, %13, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @mga_g200se_set_plls(%struct.mga_device*, i64) #1

declare dso_local i32 @mga_g200wb_set_plls(%struct.mga_device*, i64) #1

declare dso_local i32 @mga_g200ev_set_plls(%struct.mga_device*, i64) #1

declare dso_local i32 @mga_g200eh_set_plls(%struct.mga_device*, i64) #1

declare dso_local i32 @mga_g200er_set_plls(%struct.mga_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
