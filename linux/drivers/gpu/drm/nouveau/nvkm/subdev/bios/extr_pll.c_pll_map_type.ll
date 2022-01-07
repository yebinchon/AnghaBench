; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pll.c_pll_map_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pll.c_pll_map_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.pll_mapping = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_bios*, i32, i32*, i32*, i32*)* @pll_map_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_map_type(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
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
  br i1 %22, label %23, label %63

23:                                               ; preds = %5
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %57, %27
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %14, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 0
  %39 = call i32 @nvbios_rd08(%struct.nvkm_bios* %36, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 80
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 3
  %50 = call i64 @nvbios_rd32(%struct.nvkm_bios* %47, i32 %49)
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %55

53:                                               ; preds = %42
  %54 = load i32*, i32** %9, align 8
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %6, align 4
  br label %134

57:                                               ; preds = %35
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %15, align 4
  br label %31

62:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %134

63:                                               ; preds = %23, %5
  %64 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %65 = call %struct.pll_mapping* @pll_map(%struct.nvkm_bios* %64)
  store %struct.pll_mapping* %65, %struct.pll_mapping** %12, align 8
  br label %66

66:                                               ; preds = %130, %63
  %67 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %68 = icmp ne %struct.pll_mapping* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %71 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi i1 [ false, %66 ], [ %73, %69 ]
  br i1 %75, label %76, label %133

76:                                               ; preds = %74
  %77 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %78 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %76
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 32
  br i1 %85, label %86, label %116

86:                                               ; preds = %82
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %15, align 4
  store i32 %89, i32* %16, align 4
  %90 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %91 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %109, %86
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %14, align 4
  %97 = icmp ne i32 %95, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i64 @nvbios_rd32(%struct.nvkm_bios* %99, i32 %100)
  %102 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %103 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp eq i64 %101, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %6, align 4
  br label %134

109:                                              ; preds = %98
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %15, align 4
  br label %94

114:                                              ; preds = %94
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %6, align 4
  br label %134

116:                                              ; preds = %82, %76
  %117 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %118 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %124 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %9, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %134

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.pll_mapping*, %struct.pll_mapping** %12, align 8
  %132 = getelementptr inbounds %struct.pll_mapping, %struct.pll_mapping* %131, i32 1
  store %struct.pll_mapping* %132, %struct.pll_mapping** %12, align 8
  br label %66

133:                                              ; preds = %74
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %122, %114, %107, %62, %55
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @pll_limits_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i64 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local %struct.pll_mapping* @pll_map(%struct.nvkm_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
