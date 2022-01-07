; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_memx.c_memx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_memx.c_memx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_memx*, i64, i64, i64*)* @memx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memx_cmd(%struct.nvkm_memx* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.nvkm_memx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.nvkm_memx* %0, %struct.nvkm_memx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %10 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @ARRAY_SIZE(i32* %18)
  %20 = icmp sge i64 %14, %19
  br i1 %20, label %34, label %21

21:                                               ; preds = %4
  %22 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %29 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %4
  %35 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %36 = call i32 @memx_out(%struct.nvkm_memx* %35)
  br label %37

37:                                               ; preds = %34, %27, %21
  %38 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %39 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %43 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = mul i64 %48, 8
  %50 = call i32 @memcpy(i32* %46, i64* %47, i64 %49)
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %53 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %51
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.nvkm_memx*, %struct.nvkm_memx** %5, align 8
  %59 = getelementptr inbounds %struct.nvkm_memx, %struct.nvkm_memx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memx_out(%struct.nvkm_memx*) #1

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
