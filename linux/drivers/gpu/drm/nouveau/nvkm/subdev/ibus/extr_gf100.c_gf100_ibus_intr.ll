; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ibus/extr_gf100.c_gf100_ibus_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ibus/extr_gf100.c_gf100_ibus_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_ibus_intr(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca %struct.nvkm_subdev*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %2, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %3, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 1186904)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 1186908)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 1186928)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 1186932)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 1186936)
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %52, %1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 65280
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %55

36:                                               ; preds = %34
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 256, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @gf100_ibus_intr_hub(%struct.nvkm_subdev* %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %26

55:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %82, %55
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, -65536
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br i1 %65, label %66, label %85

66:                                               ; preds = %64
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 65536, %67
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @gf100_ibus_intr_rop(%struct.nvkm_subdev* %74, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %73, %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %56

85:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %111, %85
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %90, %91
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i1 [ false, %86 ], [ %92, %89 ]
  br i1 %94, label %95, label %114

95:                                               ; preds = %93
  %96 = load i32, i32* %9, align 4
  %97 = shl i32 1, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %12, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @gf100_ibus_intr_gpc(%struct.nvkm_subdev* %103, i32 %104)
  %106 = load i32, i32* %12, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %102, %95
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %86

114:                                              ; preds = %93
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @gf100_ibus_intr_hub(%struct.nvkm_subdev*, i32) #1

declare dso_local i32 @gf100_ibus_intr_rop(%struct.nvkm_subdev*, i32) #1

declare dso_local i32 @gf100_ibus_intr_gpc(%struct.nvkm_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
