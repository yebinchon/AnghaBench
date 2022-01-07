; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pll.c_pll_map_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pll.c_pll_map_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.pll_mapping = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_bios*, i32, i32*, i32*, i32*)* @pll_map_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_map_reg(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pll_mapping*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @pll_limits_table(%struct.nvkm_bios* %17, i32* %18, i32* %13, i32* %14, i32* %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %5
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %50, %27
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %14, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 3
  %39 = call i64 @nvbios_rd32(%struct.nvkm_bios* %36, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 0
  %47 = call i32 @nvbios_rd08(%struct.nvkm_bios* %44, i32 %46)
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %6, align 4
  br label %127

50:                                               ; preds = %35
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %15, align 4
  br label %31

55:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %127

56:                                               ; preds = %23, %5
  %57 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %58 = call %struct.pll_mapping* @pll_map(%struct.nvkm_bios* %57)
  store %struct.pll_mapping* %58, %struct.pll_mapping** %12, align 8
  br label %59

59:                                               ; preds = %123, %56
  %60 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %61 = icmp ne %struct.pll_mapping* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %64 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %62, %59
  %68 = phi i1 [ false, %59 ], [ %66, %62 ]
  br i1 %68, label %69, label %126

69:                                               ; preds = %67
  %70 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %71 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %109

75:                                               ; preds = %69
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %77, 32
  br i1 %78, label %79, label %109

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %15, align 4
  store i32 %82, i32* %16, align 4
  %83 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %84 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %102, %79
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %14, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i64 @nvbios_rd32(%struct.nvkm_bios* %92, i32 %93)
  %95 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %96 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp eq i64 %94, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %6, align 4
  br label %127

102:                                              ; preds = %91
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %15, align 4
  br label %87

107:                                              ; preds = %87
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %6, align 4
  br label %127

109:                                              ; preds = %75, %69
  %110 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %111 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %117 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %127

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %125 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %124, i32 1
  store %struct.pll_mapping* %125, %struct.pll_mapping** %12, align 8
  br label %59

126:                                              ; preds = %67
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %126, %115, %107, %100, %55, %43
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @pll_limits_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local %struct.pll_mapping* @pll_map(%struct.nvkm_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
