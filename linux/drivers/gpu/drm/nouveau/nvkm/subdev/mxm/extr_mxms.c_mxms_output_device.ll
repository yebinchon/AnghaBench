; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_mxms.c_mxms_output_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_mxms.c_mxms_output_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mxm = type { i32 }
%struct.mxms_odev = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mxms_output_device(%struct.nvkm_mxm* %0, i32* %1, %struct.mxms_odev* %2) #0 {
  %4 = alloca %struct.nvkm_mxm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mxms_odev*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_mxm* %0, %struct.nvkm_mxm** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.mxms_odev* %2, %struct.mxms_odev** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ROM32(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %13 = call i32 @mxms_version(%struct.nvkm_mxm* %12)
  %14 = icmp sge i32 %13, 768
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ROM16(i32 %18)
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 32
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %15, %3
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 240
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load %struct.mxms_odev*, %struct.mxms_odev** %6, align 8
  %31 = getelementptr inbounds %struct.mxms_odev, %struct.mxms_odev* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, 3840
  %35 = lshr i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.mxms_odev*, %struct.mxms_odev** %6, align 8
  %38 = getelementptr inbounds %struct.mxms_odev, %struct.mxms_odev* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, 126976
  %42 = lshr i64 %41, 12
  %43 = trunc i64 %42 to i32
  %44 = load %struct.mxms_odev*, %struct.mxms_odev** %6, align 8
  %45 = getelementptr inbounds %struct.mxms_odev, %struct.mxms_odev* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = and i64 %47, 7864320
  %49 = lshr i64 %48, 19
  %50 = trunc i64 %49 to i32
  %51 = load %struct.mxms_odev*, %struct.mxms_odev** %6, align 8
  %52 = getelementptr inbounds %struct.mxms_odev, %struct.mxms_odev* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local i32 @ROM32(i32) #1

declare dso_local i32 @mxms_version(%struct.nvkm_mxm*) #1

declare dso_local i64 @ROM16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
