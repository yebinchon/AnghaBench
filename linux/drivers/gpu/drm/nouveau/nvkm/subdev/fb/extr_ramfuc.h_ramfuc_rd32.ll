; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramfuc.h_ramfuc_rd32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramfuc.h_ramfuc_rd32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ramfuc = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.ramfuc_reg = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ramfuc*, %struct.ramfuc_reg*)* @ramfuc_rd32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfuc_rd32(%struct.ramfuc* %0, %struct.ramfuc_reg* %1) #0 {
  %3 = alloca %struct.ramfuc*, align 8
  %4 = alloca %struct.ramfuc_reg*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  store %struct.ramfuc* %0, %struct.ramfuc** %3, align 8
  store %struct.ramfuc_reg* %1, %struct.ramfuc_reg** %4, align 8
  %6 = load %struct.ramfuc*, %struct.ramfuc** %3, align 8
  %7 = getelementptr inbounds %struct.ramfuc, %struct.ramfuc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %5, align 8
  %12 = load %struct.ramfuc_reg*, %struct.ramfuc_reg** %4, align 8
  %13 = getelementptr inbounds %struct.ramfuc_reg, %struct.ramfuc_reg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ramfuc*, %struct.ramfuc** %3, align 8
  %16 = getelementptr inbounds %struct.ramfuc, %struct.ramfuc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %21 = load %struct.ramfuc_reg*, %struct.ramfuc_reg** %4, align 8
  %22 = getelementptr inbounds %struct.ramfuc_reg, %struct.ramfuc_reg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 %23)
  %25 = load %struct.ramfuc_reg*, %struct.ramfuc_reg** %4, align 8
  %26 = getelementptr inbounds %struct.ramfuc_reg, %struct.ramfuc_reg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.ramfuc_reg*, %struct.ramfuc_reg** %4, align 8
  %29 = getelementptr inbounds %struct.ramfuc_reg, %struct.ramfuc_reg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  ret i32 %30
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
