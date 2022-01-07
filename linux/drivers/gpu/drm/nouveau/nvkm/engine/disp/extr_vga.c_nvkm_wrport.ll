; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_vga.c_nvkm_wrport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_vga.c_nvkm_wrport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@NV_40 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_wrport(%struct.nvkm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NV_50, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 6295552, %16
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @nvkm_wr08(%struct.nvkm_device* %15, i32 %17, i32 %18)
  br label %83

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 960
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 961
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 962
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 986
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 980
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 981
  br i1 %37, label %38, label %47

38:                                               ; preds = %35, %32, %29, %26, %23, %20
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %40, 8192
  %42 = add nsw i32 6295552, %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @nvkm_wr08(%struct.nvkm_device* %39, i32 %44, i32 %45)
  br label %82

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 962
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 972
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 964
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 965
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 974
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 975
  br i1 %64, label %65, label %81

65:                                               ; preds = %62, %59, %56, %53, %50, %47
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %67 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NV_40, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %65
  %73 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %74, 8192
  %76 = add nsw i32 786432, %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @nvkm_wr08(%struct.nvkm_device* %73, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %72, %62
  br label %82

82:                                               ; preds = %81, %38
  br label %83

83:                                               ; preds = %82, %14
  ret void
}

declare dso_local i32 @nvkm_wr08(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
