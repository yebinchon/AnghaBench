; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_embedded_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_embedded_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@nouveau_bios_embedded_edid.edid_sig = internal constant [8 x i32] [i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0], align 16
@NV_PROM_SIZE = common dso_local global i32 0, align 4
@EDID1_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Found EDID in BIOS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nouveau_bios_embedded_edid(%struct.drm_device* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %4, align 8
  %11 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %11, i32 0, i32 0
  store %struct.nvbios* %12, %struct.nvbios** %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load i32, i32* @NV_PROM_SIZE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %15 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %21 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %2, align 8
  br label %71

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %30 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @findstr(i32* %33, i32 %34, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @nouveau_bios_embedded_edid.edid_sig, i64 0, i64 0), i32 8)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  store i32* null, i32** %2, align 8
  br label %71

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %44 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* @EDID1_LEN, align 4
  %49 = call i32 @nv_cksum(i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %60

52:                                               ; preds = %39
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %25

60:                                               ; preds = %51, %25
  %61 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %62 = call i32 @NV_INFO(%struct.nouveau_drm* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %64 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %69 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* %67, i32** %70, align 8
  store i32* %67, i32** %2, align 8
  br label %71

71:                                               ; preds = %60, %38, %19
  %72 = load i32*, i32** %2, align 8
  ret i32* %72
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @findstr(i32*, i32, i32*, i32) #1

declare dso_local i32 @nv_cksum(i32*, i32) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
