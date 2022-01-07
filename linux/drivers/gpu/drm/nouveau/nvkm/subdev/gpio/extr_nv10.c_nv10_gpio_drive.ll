; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_nv10.c_nv10_gpio_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_nv10.c_nv10_gpio_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gpio*, i32, i32, i32)* @nv10_gpio_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_gpio_drive(%struct.nvkm_gpio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_gpio* %0, %struct.nvkm_gpio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %21, 16
  store i32 %22, i32* %7, align 4
  store i32 6293528, i32* %11, align 4
  store i32 17, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %13, align 4
  br label %54

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 2
  %33 = mul nsw i32 %32, 4
  store i32 %33, i32* %7, align 4
  store i32 6293532, i32* %11, align 4
  store i32 3, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %34, 1
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %13, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 14
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 10
  %44 = mul nsw i32 %43, 4
  store i32 %44, i32* %7, align 4
  store i32 6293584, i32* %11, align 4
  store i32 3, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 1
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %13, align 4
  br label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %64

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %30
  br label %54

54:                                               ; preds = %53, %20
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 %60, %61
  %63 = call i32 @nvkm_mask(%struct.nvkm_device* %55, i32 %56, i32 %59, i32 %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %54, %49
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
