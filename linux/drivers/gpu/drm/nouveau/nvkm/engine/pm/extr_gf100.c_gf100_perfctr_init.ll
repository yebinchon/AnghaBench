; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_gf100.c_gf100_perfctr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_gf100.c_gf100_perfctr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_perfdom = type { i32, i64 }
%struct.nvkm_perfctr = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_pm*, %struct.nvkm_perfdom*, %struct.nvkm_perfctr*)* @gf100_perfctr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_perfctr_init(%struct.nvkm_pm* %0, %struct.nvkm_perfdom* %1, %struct.nvkm_perfctr* %2) #0 {
  %4 = alloca %struct.nvkm_pm*, align 8
  %5 = alloca %struct.nvkm_perfdom*, align 8
  %6 = alloca %struct.nvkm_perfctr*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_pm* %0, %struct.nvkm_pm** %4, align 8
  store %struct.nvkm_perfdom* %1, %struct.nvkm_perfdom** %5, align 8
  store %struct.nvkm_perfctr* %2, %struct.nvkm_perfctr** %6, align 8
  %11 = load %struct.nvkm_pm*, %struct.nvkm_pm** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_pm, %struct.nvkm_pm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %7, align 8
  %16 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %35, %3
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = mul nsw i32 %30, 8
  %32 = shl i32 %29, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %40 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %41 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 156
  %44 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %45 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %46, 3
  %48 = or i32 262146, %47
  %49 = call i32 @nvkm_wr32(%struct.nvkm_device* %39, i64 %43, i32 %48)
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %51 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %52 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 256
  %55 = call i32 @nvkm_wr32(%struct.nvkm_device* %50, i64 %54, i32 0)
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %57 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %58 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 64
  %61 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %6, align 8
  %62 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %60, %65
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @nvkm_wr32(%struct.nvkm_device* %56, i64 %66, i32 %67)
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %70 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %5, align 8
  %71 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 68
  %74 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %6, align 8
  %75 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, 8
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %73, %78
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @nvkm_wr32(%struct.nvkm_device* %69, i64 %79, i32 %80)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
