; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_read_pll_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_read_pll_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@nv_clk_src_crystal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ref: bad pll %06x\0A\00", align 1
@nv_clk_src_href = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_clk*, i32)* @read_pll_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pll_src(%struct.nv50_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nv50_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nv50_clk* %0, %struct.nv50_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %16 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %6, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %7, align 8
  %21 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %22 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %21, i32 0, i32 0
  %23 = load i32, i32* @nv_clk_src_crystal, align 4
  %24 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 57740)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %28 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %146 [
    i32 80, label %30
    i32 160, label %30
    i32 132, label %75
    i32 134, label %75
    i32 146, label %75
    i32 148, label %87
    i32 150, label %87
    i32 152, label %87
  ]

30:                                               ; preds = %2, %2
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %47 [
    i32 16416, label %32
    i32 16424, label %32
    i32 16392, label %39
    i32 16432, label %46
  ]

32:                                               ; preds = %30, %30
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %14, align 4
  br label %51

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %14, align 4
  br label %51

46:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %51

47:                                               ; preds = %30
  %48 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @nvkm_error(%struct.nvkm_subdev* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 0, i32* %3, align 4
  br label %160

51:                                               ; preds = %46, %39, %32
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %53 = load i32, i32* %14, align 4
  %54 = mul nsw i32 %53, 12
  %55 = add nsw i32 59420, %54
  %56 = call i32 @nvkm_rd32(%struct.nvkm_device* %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 16777216
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 2, i32 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 458752
  %66 = ashr i32 %65, 16
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 65280
  %69 = ashr i32 %68, 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 255
  %73 = ashr i32 %72, 0
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %148

75:                                               ; preds = %2, %2, %2
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %77 = call i32 @nvkm_rd32(%struct.nvkm_device* %76, i32 59420)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 458752
  %80 = ashr i32 %79, 16
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 65280
  %83 = ashr i32 %82, 8
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 255
  %86 = ashr i32 %85, 0
  store i32 %86, i32* %13, align 4
  br label %148

87:                                               ; preds = %2, %2, %2
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %89 = call i32 @nvkm_rd32(%struct.nvkm_device* %88, i32 49232)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %5, align 4
  switch i32 %90, label %104 [
    i32 16416, label %91
    i32 16392, label %95
    i32 16424, label %99
    i32 16432, label %103
  ]

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 3
  %94 = ashr i32 %93, 0
  store i32 %94, i32* %10, align 4
  br label %108

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 12
  %98 = ashr i32 %97, 2
  store i32 %98, i32* %10, align 4
  br label %108

99:                                               ; preds = %87
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 6144
  %102 = ashr i32 %101, 11
  store i32 %102, i32* %10, align 4
  br label %108

103:                                              ; preds = %87
  store i32 3, i32* %10, align 4
  br label %108

104:                                              ; preds = %87
  %105 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @nvkm_error(%struct.nvkm_subdev* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %106)
  store i32 0, i32* %3, align 4
  br label %160

108:                                              ; preds = %103, %99, %95, %91
  %109 = load i32, i32* %10, align 4
  switch i32 %109, label %122 [
    i32 0, label %110
    i32 1, label %111
    i32 2, label %116
    i32 3, label %121
  ]

110:                                              ; preds = %108
  store i32 1, i32* %14, align 4
  br label %122

111:                                              ; preds = %108
  %112 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %113 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %112, i32 0, i32 0
  %114 = load i32, i32* @nv_clk_src_crystal, align 4
  %115 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %113, i32 %114)
  store i32 %115, i32* %3, align 4
  br label %160

116:                                              ; preds = %108
  %117 = load %struct.nv50_clk*, %struct.nv50_clk** %4, align 8
  %118 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %117, i32 0, i32 0
  %119 = load i32, i32* @nv_clk_src_href, align 4
  %120 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %118, i32 %119)
  store i32 %120, i32* %3, align 4
  br label %160

121:                                              ; preds = %108
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %108, %121, %110
  %123 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %124 = load i32, i32* %14, align 4
  %125 = mul nsw i32 %124, 40
  %126 = add nsw i32 59420, %125
  %127 = call i32 @nvkm_rd32(%struct.nvkm_device* %123, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %129 = load i32, i32* %14, align 4
  %130 = mul nsw i32 %129, 40
  %131 = add nsw i32 59428, %130
  %132 = call i32 @nvkm_rd32(%struct.nvkm_device* %128, i32 %131)
  %133 = ashr i32 %132, 16
  %134 = and i32 %133, 7
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, 458752
  %137 = ashr i32 %136, 16
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, 65280
  %142 = ashr i32 %141, 8
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %8, align 4
  %144 = and i32 %143, 255
  %145 = ashr i32 %144, 0
  store i32 %145, i32* %13, align 4
  br label %148

146:                                              ; preds = %2
  %147 = call i32 (...) @BUG()
  br label %148

148:                                              ; preds = %146, %122, %75, %51
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %12, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* %13, align 4
  %156 = sdiv i32 %154, %155
  %157 = load i32, i32* %11, align 4
  %158 = ashr i32 %156, %157
  store i32 %158, i32* %3, align 4
  br label %160

159:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %151, %116, %111, %104, %47
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @nvkm_clk_read(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
