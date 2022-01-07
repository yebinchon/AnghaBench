; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_mcp77.c_mcp77_clk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_mcp77.c_mcp77_clk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.mcp77_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unknown clock source %d %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, i32)* @mcp77_clk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp77_clk_read(%struct.nvkm_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mcp77_clk*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %12 = call %struct.mcp77_clk* @mcp77_clk(%struct.nvkm_clk* %11)
  store %struct.mcp77_clk* %12, %struct.mcp77_clk** %6, align 8
  %13 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %14 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %7, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %8, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %19, i32 49236)
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %165 [
    i32 135, label %22
    i32 131, label %26
    i32 133, label %27
    i32 134, label %32
    i32 132, label %38
    i32 136, label %55
    i32 137, label %81
    i32 129, label %113
    i32 130, label %148
    i32 128, label %149
  ]

22:                                               ; preds = %2
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %171

26:                                               ; preds = %2
  store i32 100000, i32* %3, align 4
  br label %171

27:                                               ; preds = %2
  %28 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %29 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %28, i32 0, i32 0
  %30 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %29, i32 131)
  %31 = mul nsw i32 %30, 4
  store i32 %31, i32* %3, align 4
  br label %171

32:                                               ; preds = %2
  %33 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %34 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %33, i32 0, i32 0
  %35 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %34, i32 131)
  %36 = mul nsw i32 %35, 2
  %37 = sdiv i32 %36, 3
  store i32 %37, i32* %3, align 4
  br label %171

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 786432
  switch i32 %40, label %54 [
    i32 0, label %41
    i32 262144, label %45
    i32 524288, label %46
    i32 786432, label %50
  ]

41:                                               ; preds = %38
  %42 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %43 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %42, i32 0, i32 0
  %44 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %43, i32 134)
  store i32 %44, i32* %3, align 4
  br label %171

45:                                               ; preds = %38
  br label %54

46:                                               ; preds = %38
  %47 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %48 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %47, i32 0, i32 0
  %49 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %48, i32 133)
  store i32 %49, i32* %3, align 4
  br label %171

50:                                               ; preds = %38
  %51 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %52 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %51, i32 0, i32 0
  %53 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %52, i32 137)
  store i32 %53, i32* %3, align 4
  br label %171

54:                                               ; preds = %38, %45
  br label %166

55:                                               ; preds = %2
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %57 = call i32 @nvkm_rd32(%struct.nvkm_device* %56, i32 16424)
  %58 = and i32 %57, 458752
  %59 = ashr i32 %58, 16
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 3
  switch i32 %61, label %80 [
    i32 0, label %62
    i32 1, label %68
    i32 2, label %69
    i32 3, label %75
  ]

62:                                               ; preds = %55
  %63 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %64 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %63, i32 0, i32 0
  %65 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %64, i32 135)
  %66 = load i32, i32* %10, align 4
  %67 = ashr i32 %65, %66
  store i32 %67, i32* %3, align 4
  br label %171

68:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %171

69:                                               ; preds = %55
  %70 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %71 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %70, i32 0, i32 0
  %72 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %71, i32 133)
  %73 = load i32, i32* %10, align 4
  %74 = ashr i32 %72, %73
  store i32 %74, i32* %3, align 4
  br label %171

75:                                               ; preds = %55
  %76 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %77 = call i32 @read_pll(%struct.mcp77_clk* %76, i32 16424)
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %3, align 4
  br label %171

80:                                               ; preds = %55
  br label %166

81:                                               ; preds = %2
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, 50331648
  %84 = icmp ne i32 %83, 50331648
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %87 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %86, i32 0, i32 0
  %88 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %87, i32 136)
  store i32 %88, i32* %3, align 4
  br label %171

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 512
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %95 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %94, i32 0, i32 0
  %96 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %95, i32 136)
  store i32 %96, i32* %3, align 4
  br label %171

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 3072
  switch i32 %99, label %112 [
    i32 0, label %100
    i32 1024, label %104
    i32 2048, label %108
  ]

100:                                              ; preds = %97
  %101 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %102 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %101, i32 0, i32 0
  %103 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %102, i32 131)
  store i32 %103, i32* %3, align 4
  br label %171

104:                                              ; preds = %97
  %105 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %106 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %105, i32 0, i32 0
  %107 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %106, i32 133)
  store i32 %107, i32* %3, align 4
  br label %171

108:                                              ; preds = %97
  %109 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %110 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %109, i32 0, i32 0
  %111 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %110, i32 134)
  store i32 %111, i32* %3, align 4
  br label %171

112:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %171

113:                                              ; preds = %2
  %114 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %115 = call i32 @nvkm_rd32(%struct.nvkm_device* %114, i32 16416)
  %116 = and i32 %115, 458752
  %117 = ashr i32 %116, 16
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, 48
  switch i32 %119, label %147 [
    i32 0, label %120
    i32 16, label %136
    i32 32, label %137
    i32 48, label %142
  ]

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 64
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %126 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %125, i32 0, i32 0
  %127 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %126, i32 131)
  %128 = load i32, i32* %10, align 4
  %129 = ashr i32 %127, %128
  store i32 %129, i32* %3, align 4
  br label %171

130:                                              ; preds = %120
  %131 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %132 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %131, i32 0, i32 0
  %133 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %132, i32 135)
  %134 = load i32, i32* %10, align 4
  %135 = ashr i32 %133, %134
  store i32 %135, i32* %3, align 4
  br label %171

136:                                              ; preds = %113
  br label %147

137:                                              ; preds = %113
  %138 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %139 = call i32 @read_pll(%struct.mcp77_clk* %138, i32 16424)
  %140 = load i32, i32* %10, align 4
  %141 = ashr i32 %139, %140
  store i32 %141, i32* %3, align 4
  br label %171

142:                                              ; preds = %113
  %143 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %144 = call i32 @read_pll(%struct.mcp77_clk* %143, i32 16416)
  %145 = load i32, i32* %10, align 4
  %146 = ashr i32 %144, %145
  store i32 %146, i32* %3, align 4
  br label %171

147:                                              ; preds = %113, %136
  br label %166

148:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %171

149:                                              ; preds = %2
  %150 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %151 = call i32 @read_div(%struct.mcp77_clk* %150)
  %152 = and i32 %151, 1792
  %153 = ashr i32 %152, 8
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, 4194304
  switch i32 %155, label %162 [
    i32 4194304, label %156
  ]

156:                                              ; preds = %149
  %157 = load %struct.mcp77_clk*, %struct.mcp77_clk** %6, align 8
  %158 = getelementptr inbounds %struct.mcp77_clk, %struct.mcp77_clk* %157, i32 0, i32 0
  %159 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %158, i32 136)
  %160 = load i32, i32* %10, align 4
  %161 = ashr i32 %159, %160
  store i32 %161, i32* %3, align 4
  br label %171

162:                                              ; preds = %149
  %163 = load i32, i32* %10, align 4
  %164 = ashr i32 500000, %163
  store i32 %164, i32* %3, align 4
  br label %171

165:                                              ; preds = %2
  br label %166

166:                                              ; preds = %165, %147, %80, %54
  %167 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @nvkm_debug(%struct.nvkm_subdev* %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %168, i32 %169)
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %166, %162, %156, %148, %142, %137, %130, %124, %112, %108, %104, %100, %93, %85, %75, %69, %68, %62, %50, %46, %41, %32, %27, %26, %22
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.mcp77_clk* @mcp77_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_clk_read(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @read_pll(%struct.mcp77_clk*, i32) #1

declare dso_local i32 @read_div(%struct.mcp77_clk*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
