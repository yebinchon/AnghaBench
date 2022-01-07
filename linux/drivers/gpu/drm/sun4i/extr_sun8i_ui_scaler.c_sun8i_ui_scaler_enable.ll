; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_scaler.c_sun8i_ui_scaler_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_ui_scaler.c_sun8i_ui_scaler_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_mixer = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SUN8I_SCALER_GSU_CTRL_EN = common dso_local global i32 0, align 4
@SUN8I_SCALER_GSU_CTRL_COEFF_RDY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun8i_ui_scaler_enable(%struct.sun8i_mixer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sun8i_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sun8i_mixer* %0, %struct.sun8i_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %4, align 8
  %11 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %9, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sun8i_ui_scaler_base(%struct.sun8i_mixer* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @SUN8I_SCALER_GSU_CTRL_EN, align 4
  %28 = load i32, i32* @SUN8I_SCALER_GSU_CTRL_COEFF_RDY, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %7, align 4
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %4, align 8
  %33 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @SUN8I_SCALER_GSU_CTRL(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @regmap_write(i32 %35, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %19
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @sun8i_ui_scaler_base(%struct.sun8i_mixer*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN8I_SCALER_GSU_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
