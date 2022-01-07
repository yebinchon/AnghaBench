; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mc/extr_gp100.c_gp100_mc_intr_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mc/extr_gp100.c_gp100_mc_intr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp100_mc = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gp100_mc*)* @gp100_mc_intr_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp100_mc_intr_update(%struct.gp100_mc* %0) #0 {
  %2 = alloca %struct.gp100_mc*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gp100_mc* %0, %struct.gp100_mc** %2, align 8
  %6 = load %struct.gp100_mc*, %struct.gp100_mc** %2, align 8
  %7 = getelementptr inbounds %struct.gp100_mc, %struct.gp100_mc* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  %11 = load %struct.gp100_mc*, %struct.gp100_mc** %2, align 8
  %12 = getelementptr inbounds %struct.gp100_mc, %struct.gp100_mc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.gp100_mc*, %struct.gp100_mc** %2, align 8
  %17 = getelementptr inbounds %struct.gp100_mc, %struct.gp100_mc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %39, %20
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 4
  %29 = add nsw i32 384, %28
  %30 = load i32, i32* %4, align 4
  %31 = xor i32 %30, -1
  %32 = call i32 @nvkm_wr32(%struct.nvkm_device* %26, i32 %29, i32 %31)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 4
  %36 = add nsw i32 352, %35
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %22

42:                                               ; preds = %22
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
