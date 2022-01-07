; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_setPLL_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_setPLL_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvkm_pll_vals = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setPLL_single(%struct.nvkm_devinit* %0, i32 %1, %struct.nvkm_pll_vals* %2) #0 {
  %4 = alloca %struct.nvkm_devinit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_pll_vals*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_pll_vals* %2, %struct.nvkm_pll_vals** %6, align 8
  %15 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %4, align 8
  %16 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %7, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 255
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, -524288
  %35 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %36 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %34, %38
  %40 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %41 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @powerctrl_1_shift(i32 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %3
  br label %133

51:                                               ; preds = %3
  %52 = load i32, i32* %14, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %56 = call i32 @nvkm_rd32(%struct.nvkm_device* %55, i32 5508)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = shl i32 15, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %58, %61
  %63 = load i32, i32* %14, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  %66 = call i32 @nvkm_wr32(%struct.nvkm_device* %57, i32 5508, i32 %65)
  br label %67

67:                                               ; preds = %54, %51
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %67
  %71 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %72 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sdiv i32 %76, %77
  %79 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %80 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %83 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %81, %84
  %86 = icmp slt i32 %78, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %75
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %91 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 16
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, 65535
  %96 = or i32 %93, %95
  %97 = call i32 @nvkm_wr32(%struct.nvkm_device* %88, i32 %89, i32 %96)
  br label %108

98:                                               ; preds = %75, %70, %67
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %101, -65536
  %103 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %104 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %102, %105
  %107 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 %100, i32 %106)
  br label %108

108:                                              ; preds = %98, %87
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 23
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 26
  br i1 %113, label %114, label %119

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 17
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i32 @msleep(i32 64)
  br label %119

119:                                              ; preds = %117, %114, %111
  %120 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @nvkm_rd32(%struct.nvkm_device* %120, i32 %121)
  %123 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @nvkm_wr32(%struct.nvkm_device* %123, i32 %124, i32 %125)
  %127 = load i32, i32* %14, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @nvkm_wr32(%struct.nvkm_device* %130, i32 5508, i32 %131)
  br label %133

133:                                              ; preds = %50, %129, %119
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @powerctrl_1_shift(i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
