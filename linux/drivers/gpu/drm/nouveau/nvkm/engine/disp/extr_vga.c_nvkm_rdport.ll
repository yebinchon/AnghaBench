; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_vga.c_nvkm_rdport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_vga.c_nvkm_rdport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@NV_40 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_rdport(%struct.nvkm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %9 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NV_50, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 6295552, %15
  %17 = call i32 @nvkm_rd08(%struct.nvkm_device* %14, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %78

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 960
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 961
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 962
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 986
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 980
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 981
  br i1 %35, label %36, label %44

36:                                               ; preds = %33, %30, %27, %24, %21, %18
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 8192
  %40 = add nsw i32 6295552, %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @nvkm_rd08(%struct.nvkm_device* %37, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %78

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 962
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 972
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 964
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 965
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 974
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 975
  br i1 %61, label %62, label %77

62:                                               ; preds = %59, %56, %53, %50, %47, %44
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %64 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NV_40, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 8192
  %73 = add nsw i32 786432, %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @nvkm_rd08(%struct.nvkm_device* %70, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %69, %36, %13
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @nvkm_rd08(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
