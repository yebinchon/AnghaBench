; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/extr_base.c_nvkm_iccsense_validate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/extr_base.c_nvkm_iccsense_validate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32)* @nvkm_iccsense_validate_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_iccsense_validate_device(%struct.i2c_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %28 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %15
  ]

9:                                                ; preds = %3, %3
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @nv_rd16i2cr(%struct.i2c_adapter* %10, i32 %11, i32 0)
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @nv_rd16i2cr(%struct.i2c_adapter* %16, i32 %17, i32 255)
  %19 = icmp eq i32 %18, 12832
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @nv_rd16i2cr(%struct.i2c_adapter* %21, i32 %22, i32 254)
  %24 = icmp eq i32 %23, 21577
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %25, %9
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @nv_rd16i2cr(%struct.i2c_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
