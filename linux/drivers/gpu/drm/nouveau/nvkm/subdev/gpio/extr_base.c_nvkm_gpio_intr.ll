; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_base.c_nvkm_gpio_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_base.c_nvkm_gpio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_gpio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 (%struct.nvkm_gpio*, i64*, i64*)* }
%struct.nvkm_gpio_ntfy_rep = type { i32 }

@NVKM_GPIO_HI = common dso_local global i32 0, align 4
@NVKM_GPIO_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_subdev*)* @nvkm_gpio_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_gpio_intr(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca %struct.nvkm_subdev*, align 8
  %3 = alloca %struct.nvkm_gpio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_gpio_ntfy_rep, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %2, align 8
  %8 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %9 = call %struct.nvkm_gpio* @nvkm_gpio(%struct.nvkm_subdev* %8)
  store %struct.nvkm_gpio* %9, %struct.nvkm_gpio** %3, align 8
  %10 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.nvkm_gpio*, i64*, i64*)*, i32 (%struct.nvkm_gpio*, i64*, i64*)** %13, align 8
  %15 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %16 = call i32 %14(%struct.nvkm_gpio* %15, i64* %4, i64* %5)
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %65, %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = or i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %23, %28
  br label %30

30:                                               ; preds = %22, %17
  %31 = phi i1 [ false, %17 ], [ %29, %22 ]
  br i1 %31, label %32, label %68

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.nvkm_gpio_ntfy_rep, %struct.nvkm_gpio_ntfy_rep* %7, i32 0, i32 0
  %34 = load i32, i32* @NVKM_GPIO_HI, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 1, %37
  %39 = sext i32 %38 to i64
  %40 = and i64 %35, %39
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = mul nsw i32 %34, %44
  %46 = load i32, i32* @NVKM_GPIO_LO, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = sext i32 %50 to i64
  %52 = and i64 %47, %51
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = mul nsw i32 %46, %56
  %58 = or i32 %45, %57
  store i32 %58, i32* %33, align 4
  %59 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %60 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.nvkm_gpio_ntfy_rep, %struct.nvkm_gpio_ntfy_rep* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @nvkm_event_send(i32* %60, i32 %62, i64 %63, %struct.nvkm_gpio_ntfy_rep* %7, i32 4)
  br label %65

65:                                               ; preds = %32
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %6, align 8
  br label %17

68:                                               ; preds = %30
  ret void
}

declare dso_local %struct.nvkm_gpio* @nvkm_gpio(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_event_send(i32*, i32, i64, %struct.nvkm_gpio_ntfy_rep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
