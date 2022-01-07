; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_calc_xits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_calc_xits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_ram = type { i32, i32, i32, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, %struct.gk104_ramfuc }
%struct.TYPE_12__ = type { i32*, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.gk104_ramfuc = type { i32, %struct.TYPE_10__, %struct.TYPE_13__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nvkm_ram_data = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"unable to calc plls\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"successfully calced PLLs for clock %i kHz (refclock: %i kHz)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unable to calc refpll\0A\00", align 1
@mr = common dso_local global i32* null, align 8
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk104_ram*, %struct.nvkm_ram_data*)* @gk104_ram_calc_xits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_ram_calc_xits(%struct.gk104_ram* %0, %struct.nvkm_ram_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gk104_ram*, align 8
  %5 = alloca %struct.nvkm_ram_data*, align 8
  %6 = alloca %struct.gk104_ramfuc*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gk104_ram* %0, %struct.gk104_ram** %4, align 8
  store %struct.nvkm_ram_data* %1, %struct.nvkm_ram_data** %5, align 8
  %11 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %12 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %11, i32 0, i32 11
  store %struct.gk104_ramfuc* %12, %struct.gk104_ramfuc** %6, align 8
  %13 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %14 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %7, align 8
  %18 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %6, align 8
  %19 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %20 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = call i32 @ram_init(%struct.gk104_ramfuc* %18, %struct.TYPE_11__* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %205

28:                                               ; preds = %2
  %29 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %6, align 8
  %33 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %31, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 2, i32 1
  %40 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %41 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %6, align 8
  %43 = call i32 @ram_rd32(%struct.gk104_ramfuc* %42, i32 1274868)
  %44 = and i32 %43, 15
  %45 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %46 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %5, align 8
  %48 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %51 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %96

54:                                               ; preds = %28
  %55 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %5, align 8
  %56 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %59 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %64 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %63, i32 0, i32 7
  %65 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %66 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %65, i32 0, i32 6
  %67 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %68 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %67, i32 0, i32 5
  %69 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %70 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %69, i32 0, i32 4
  %71 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %72 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %71, i32 0, i32 10
  %73 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %74 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %73, i32 0, i32 9
  %75 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %76 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %75, i32 0, i32 8
  %77 = call i32 @gk104_pll_calc_hiclk(i32 %57, i32 %62, i32* %64, i32* %66, i32* %68, i32* %70, i32* %72, i32* %74, i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %6, align 8
  %80 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %54
  %85 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %86 = call i32 @nvkm_error(%struct.nvkm_subdev* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %205

89:                                               ; preds = %54
  %90 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %91 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %5, align 8
  %92 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @nvkm_debug(%struct.nvkm_subdev* %90, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  br label %122

96:                                               ; preds = %28
  %97 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %98 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %6, align 8
  %99 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %98, i32 0, i32 2
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %102 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %101, i32 0, i32 7
  %103 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %104 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %103, i32 0, i32 6
  %105 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %106 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %105, i32 0, i32 5
  %107 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %108 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %107, i32 0, i32 4
  %109 = call i32 @gt215_pll_calc(%struct.nvkm_subdev* %97, %struct.TYPE_13__* %99, i32 %100, i32* %102, i32* %104, i32* %106, i32* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %6, align 8
  %112 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %96
  %117 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %118 = call i32 @nvkm_error(%struct.nvkm_subdev* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %205

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %121, %89
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %155, %122
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %6, align 8
  %126 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ARRAY_SIZE(i32 %127)
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %123
  %131 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %6, align 8
  %132 = load i32*, i32** @mr, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @ram_have(%struct.gk104_ramfuc* %131, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %130
  %140 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %6, align 8
  %141 = load i32*, i32** @mr, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ram_rd32(%struct.gk104_ramfuc* %140, i32 %145)
  %147 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %148 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %146, i32* %153, align 4
  br label %154

154:                                              ; preds = %139, %130
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %123

158:                                              ; preds = %123
  %159 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %5, align 8
  %160 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %163 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  %165 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %166 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  switch i32 %168, label %200 [
    i32 129, label %169
    i32 128, label %182
  ]

169:                                              ; preds = %158
  %170 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %171 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %170, i32 0, i32 3
  %172 = call i32 @nvkm_sddr3_calc(%struct.TYPE_12__* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %177 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %5, align 8
  %178 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @gk104_ram_calc_sddr3(%struct.gk104_ram* %176, i32 %179)
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %175, %169
  br label %203

182:                                              ; preds = %158
  %183 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %184 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %183, i32 0, i32 3
  %185 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %186 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @nvkm_gddr5_calc(%struct.TYPE_12__* %184, i32 %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %182
  %194 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %195 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %5, align 8
  %196 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @gk104_ram_calc_gddr5(%struct.gk104_ram* %194, i32 %197)
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %193, %182
  br label %203

200:                                              ; preds = %158
  %201 = load i32, i32* @ENOSYS, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %200, %199, %181
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %116, %84, %26
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @ram_init(%struct.gk104_ramfuc*, %struct.TYPE_11__*) #1

declare dso_local i32 @ram_rd32(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @gk104_pll_calc_hiclk(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32) #1

declare dso_local i32 @gt215_pll_calc(%struct.nvkm_subdev*, %struct.TYPE_13__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @ram_have(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @nvkm_sddr3_calc(%struct.TYPE_12__*) #1

declare dso_local i32 @gk104_ram_calc_sddr3(%struct.gk104_ram*, i32) #1

declare dso_local i32 @nvkm_gddr5_calc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @gk104_ram_calc_gddr5(%struct.gk104_ram*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
