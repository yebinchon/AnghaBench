; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv17_gr_mthd_lma_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv17_gr_mthd_lma_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_gr_chan = type { i32*, %struct.pipe_state, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.pipe_state = type { i32*, i32* }
%struct.TYPE_8__ = type { %struct.nvkm_gr }
%struct.nvkm_gr = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV10_PGRAPH_XFMODE0 = common dso_local global i32 0, align 4
@NV10_PGRAPH_XFMODE1 = common dso_local global i32 0, align 4
@NV10_PGRAPH_PIPE_ADDRESS = common dso_local global i32 0, align 4
@NV10_PGRAPH_PIPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv10_gr_chan*, i32, i32)* @nv17_gr_mthd_lma_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv17_gr_mthd_lma_window(%struct.nv10_gr_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nv10_gr_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_gr*, align 8
  %9 = alloca %struct.pipe_state*, align 8
  %10 = alloca [1 x i32], align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca [3 x i32], align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nv10_gr_chan* %0, %struct.nv10_gr_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %4, align 8
  %18 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %22, align 8
  store %struct.nvkm_device* %23, %struct.nvkm_device** %7, align 8
  %24 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %4, align 8
  %25 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.nvkm_gr* %27, %struct.nvkm_gr** %8, align 8
  %28 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %4, align 8
  %29 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %28, i32 0, i32 1
  store %struct.pipe_state* %29, %struct.pipe_state** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %4, align 8
  %32 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 5688
  %36 = sdiv i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32 %30, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 5700
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %187

42:                                               ; preds = %3
  %43 = load %struct.nvkm_gr*, %struct.nvkm_gr** %8, align 8
  %44 = call i32 @nv04_gr_idle(%struct.nvkm_gr* %43)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %46 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %47 = call i32 @PIPE_SAVE(%struct.nvkm_device* %45, i32* %46, i32 64)
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %49 = load %struct.pipe_state*, %struct.pipe_state** %9, align 8
  %50 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @PIPE_SAVE(%struct.nvkm_device* %48, i32* %51, i32 512)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %54 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %4, align 8
  %55 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @PIPE_RESTORE(%struct.nvkm_device* %53, i32* %56, i32 26512)
  %58 = load %struct.nvkm_gr*, %struct.nvkm_gr** %8, align 8
  %59 = call i32 @nv04_gr_idle(%struct.nvkm_gr* %58)
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %61 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %62 = call i32 @nvkm_rd32(%struct.nvkm_device* %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %64 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %65 = call i32 @nvkm_rd32(%struct.nvkm_device* %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %67 = load %struct.pipe_state*, %struct.pipe_state** %9, align 8
  %68 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @PIPE_SAVE(%struct.nvkm_device* %66, i32* %69, i32 17408)
  %71 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %73 = call i32 @PIPE_SAVE(%struct.nvkm_device* %71, i32* %72, i32 25792)
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %76 = call i32 @PIPE_SAVE(%struct.nvkm_device* %74, i32* %75, i32 27312)
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %79 = call i32 @PIPE_SAVE(%struct.nvkm_device* %77, i32* %78, i32 27264)
  %80 = load %struct.nvkm_gr*, %struct.nvkm_gr** %8, align 8
  %81 = call i32 @nv04_gr_idle(%struct.nvkm_gr* %80)
  %82 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %83 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %84 = call i32 @nvkm_wr32(%struct.nvkm_device* %82, i32 %83, i32 268435456)
  %85 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %86 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %87 = call i32 @nvkm_wr32(%struct.nvkm_device* %85, i32 %86, i32 0)
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %89 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %90 = call i32 @nvkm_wr32(%struct.nvkm_device* %88, i32 %89, i32 25792)
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %98, %42
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %96 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %97 = call i32 @nvkm_wr32(%struct.nvkm_device* %95, i32 %96, i32 1065353216)
  br label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %91

101:                                              ; preds = %91
  store i32 0, i32* %16, align 4
  br label %102

102:                                              ; preds = %109, %101
  %103 = load i32, i32* %16, align 4
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %107 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %108 = call i32 @nvkm_wr32(%struct.nvkm_device* %106, i32 %107, i32 0)
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %102

112:                                              ; preds = %102
  %113 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %114 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %115 = call i32 @nvkm_wr32(%struct.nvkm_device* %113, i32 %114, i32 27312)
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %123, %112
  %117 = load i32, i32* %16, align 4
  %118 = icmp slt i32 %117, 3
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %121 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %122 = call i32 @nvkm_wr32(%struct.nvkm_device* %120, i32 %121, i32 1065353216)
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %116

126:                                              ; preds = %116
  %127 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %128 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %129 = call i32 @nvkm_wr32(%struct.nvkm_device* %127, i32 %128, i32 27264)
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %137, %126
  %131 = load i32, i32* %16, align 4
  %132 = icmp slt i32 %131, 3
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %135 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %136 = call i32 @nvkm_wr32(%struct.nvkm_device* %134, i32 %135, i32 0)
  br label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  br label %130

140:                                              ; preds = %130
  %141 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %142 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %143 = call i32 @nvkm_wr32(%struct.nvkm_device* %141, i32 %142, i32 64)
  %144 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %145 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %146 = call i32 @nvkm_wr32(%struct.nvkm_device* %144, i32 %145, i32 8)
  %147 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %148 = load %struct.pipe_state*, %struct.pipe_state** %9, align 8
  %149 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @PIPE_RESTORE(%struct.nvkm_device* %147, i32* %150, i32 512)
  %152 = load %struct.nvkm_gr*, %struct.nvkm_gr** %8, align 8
  %153 = call i32 @nv04_gr_idle(%struct.nvkm_gr* %152)
  %154 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %155 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %156 = call i32 @PIPE_RESTORE(%struct.nvkm_device* %154, i32* %155, i32 64)
  %157 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %158 = load i32, i32* @NV10_PGRAPH_XFMODE0, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @nvkm_wr32(%struct.nvkm_device* %157, i32 %158, i32 %159)
  %161 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %162 = load i32, i32* @NV10_PGRAPH_XFMODE1, align 4
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @nvkm_wr32(%struct.nvkm_device* %161, i32 %162, i32 %163)
  %165 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %166 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %167 = call i32 @PIPE_RESTORE(%struct.nvkm_device* %165, i32* %166, i32 25792)
  %168 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %170 = call i32 @PIPE_RESTORE(%struct.nvkm_device* %168, i32* %169, i32 27312)
  %171 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %173 = call i32 @PIPE_RESTORE(%struct.nvkm_device* %171, i32* %172, i32 27264)
  %174 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %175 = load %struct.pipe_state*, %struct.pipe_state** %9, align 8
  %176 = getelementptr inbounds %struct.pipe_state, %struct.pipe_state* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @PIPE_RESTORE(%struct.nvkm_device* %174, i32* %177, i32 17408)
  %179 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %180 = load i32, i32* @NV10_PGRAPH_PIPE_ADDRESS, align 4
  %181 = call i32 @nvkm_wr32(%struct.nvkm_device* %179, i32 %180, i32 192)
  %182 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %183 = load i32, i32* @NV10_PGRAPH_PIPE_DATA, align 4
  %184 = call i32 @nvkm_wr32(%struct.nvkm_device* %182, i32 %183, i32 0)
  %185 = load %struct.nvkm_gr*, %struct.nvkm_gr** %8, align 8
  %186 = call i32 @nv04_gr_idle(%struct.nvkm_gr* %185)
  br label %187

187:                                              ; preds = %140, %41
  ret void
}

declare dso_local i32 @nv04_gr_idle(%struct.nvkm_gr*) #1

declare dso_local i32 @PIPE_SAVE(%struct.nvkm_device*, i32*, i32) #1

declare dso_local i32 @PIPE_RESTORE(%struct.nvkm_device*, i32*, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
