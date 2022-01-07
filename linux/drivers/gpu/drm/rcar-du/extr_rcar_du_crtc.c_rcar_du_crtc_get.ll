; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_du_crtc*)* @rcar_du_crtc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_crtc_get(%struct.rcar_du_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_du_crtc*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %3, align 8
  %5 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %6 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %10
  %20 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_prepare_enable(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %45

27:                                               ; preds = %19
  %28 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rcar_du_group_get(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %37 = call i32 @rcar_du_crtc_setup(%struct.rcar_du_crtc* %36)
  %38 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %39 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  store i32 0, i32* %2, align 4
  br label %51

40:                                               ; preds = %34
  %41 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  br label %45

45:                                               ; preds = %40, %26
  %46 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %3, align 8
  %47 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %35, %17, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @rcar_du_group_get(i32) #1

declare dso_local i32 @rcar_du_crtc_setup(%struct.rcar_du_crtc*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
