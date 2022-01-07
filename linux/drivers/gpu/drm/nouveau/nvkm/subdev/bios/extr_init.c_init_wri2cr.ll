; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_wri2cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_wri2cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32 }
%struct.i2c_adapter = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*, i32, i32, i32, i32)* @init_wri2cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_wri2cr(%struct.nvbios_init* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvbios_init*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_adapter*, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.nvbios_init*, %struct.nvbios_init** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.i2c_adapter* @init_i2c(%struct.nvbios_init* %13, i32 %14)
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %12, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %17 = icmp ne %struct.i2c_adapter* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load %struct.nvbios_init*, %struct.nvbios_init** %7, align 8
  %20 = call i64 @init_exec(%struct.nvbios_init* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %18, %5
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.i2c_adapter* @init_i2c(%struct.nvbios_init*, i32) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local i32 @nvkm_wri2cr(%struct.i2c_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
