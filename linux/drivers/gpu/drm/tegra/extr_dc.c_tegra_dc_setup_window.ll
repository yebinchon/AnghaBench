; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_setup_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_setup_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_plane = type { %struct.tegra_dc* }
%struct.tegra_dc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.tegra_dc_window = type { i32, i32, i32, i32*, i32*, i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@DC_WIN_COLOR_DEPTH = common dso_local global i32 0, align 4
@DC_WIN_BYTE_SWAP = common dso_local global i32 0, align 4
@DC_WIN_POSITION = common dso_local global i32 0, align 4
@DC_WIN_SIZE = common dso_local global i32 0, align 4
@DC_WIN_PRESCALED_SIZE = common dso_local global i32 0, align 4
@DC_WIN_DDA_INC = common dso_local global i32 0, align 4
@DC_WIN_H_INITIAL_DDA = common dso_local global i32 0, align 4
@DC_WIN_V_INITIAL_DDA = common dso_local global i32 0, align 4
@DC_WIN_UV_BUF_STRIDE = common dso_local global i32 0, align 4
@DC_WIN_BUF_STRIDE = common dso_local global i32 0, align 4
@DC_WINBUF_START_ADDR = common dso_local global i32 0, align 4
@DC_WINBUF_START_ADDR_U = common dso_local global i32 0, align 4
@DC_WINBUF_START_ADDR_V = common dso_local global i32 0, align 4
@DC_WIN_LINE_STRIDE = common dso_local global i32 0, align 4
@DC_WINBUF_ADDR_H_OFFSET = common dso_local global i32 0, align 4
@DC_WINBUF_ADDR_V_OFFSET = common dso_local global i32 0, align 4
@DC_WINBUF_SURFACE_KIND_PITCH = common dso_local global i32 0, align 4
@DC_WINBUF_SURFACE_KIND_TILED = common dso_local global i32 0, align 4
@DC_WINBUF_SURFACE_KIND_BLOCK = common dso_local global i32 0, align 4
@DC_WINBUF_SURFACE_KIND = common dso_local global i32 0, align 4
@DC_WIN_BUFFER_ADDR_MODE_LINEAR_UV = common dso_local global i32 0, align 4
@DC_WIN_BUFFER_ADDR_MODE_LINEAR = common dso_local global i32 0, align 4
@DC_WIN_BUFFER_ADDR_MODE_TILE_UV = common dso_local global i32 0, align 4
@DC_WIN_BUFFER_ADDR_MODE_TILE = common dso_local global i32 0, align 4
@DC_WIN_BUFFER_ADDR_MODE = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@DC_WIN_CSC_YOF = common dso_local global i32 0, align 4
@DC_WIN_CSC_KYRGB = common dso_local global i32 0, align 4
@DC_WIN_CSC_KUR = common dso_local global i32 0, align 4
@DC_WIN_CSC_KVR = common dso_local global i32 0, align 4
@DC_WIN_CSC_KUG = common dso_local global i32 0, align 4
@DC_WIN_CSC_KVG = common dso_local global i32 0, align 4
@DC_WIN_CSC_KUB = common dso_local global i32 0, align 4
@DC_WIN_CSC_KVB = common dso_local global i32 0, align 4
@CSC_ENABLE = common dso_local global i32 0, align 4
@COLOR_EXPAND = common dso_local global i32 0, align 4
@V_DIRECTION = common dso_local global i32 0, align 4
@H_FILTER = common dso_local global i32 0, align 4
@V_FILTER = common dso_local global i32 0, align 4
@DC_WIN_WIN_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_plane*, %struct.tegra_dc_window*)* @tegra_dc_setup_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dc_setup_window(%struct.tegra_plane* %0, %struct.tegra_dc_window* %1) #0 {
  %3 = alloca %struct.tegra_plane*, align 8
  %4 = alloca %struct.tegra_dc_window*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tegra_dc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tegra_plane* %0, %struct.tegra_plane** %3, align 8
  store %struct.tegra_dc_window* %1, %struct.tegra_dc_window** %4, align 8
  %19 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %19, i32 0, i32 0
  %21 = load %struct.tegra_dc*, %struct.tegra_dc** %20, align 8
  store %struct.tegra_dc* %21, %struct.tegra_dc** %12, align 8
  %22 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @tegra_plane_format_is_yuv(i32 %24, i32* %14)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 8
  store i32 %32, i32* %11, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 2
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %40 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DC_WIN_COLOR_DEPTH, align 4
  %44 = call i32 @tegra_plane_writel(%struct.tegra_plane* %39, i32 %42, i32 %43)
  %45 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %46 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DC_WIN_BYTE_SWAP, align 4
  %50 = call i32 @tegra_plane_writel(%struct.tegra_plane* %45, i32 %48, i32 %49)
  %51 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %52 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @V_POSITION(i32 %54)
  %56 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %57 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @H_POSITION(i32 %59)
  %61 = or i32 %55, %60
  store i32 %61, i32* %15, align 4
  %62 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @DC_WIN_POSITION, align 4
  %65 = call i32 @tegra_plane_writel(%struct.tegra_plane* %62, i32 %63, i32 %64)
  %66 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %67 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @V_SIZE(i32 %69)
  %71 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @H_SIZE(i32 %74)
  %76 = or i32 %70, %75
  store i32 %76, i32* %15, align 4
  %77 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @DC_WIN_SIZE, align 4
  %80 = call i32 @tegra_plane_writel(%struct.tegra_plane* %77, i32 %78, i32 %79)
  %81 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %82 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = mul i32 %84, %85
  store i32 %86, i32* %5, align 4
  %87 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %6, align 4
  %91 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %92 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = mul i32 %94, %95
  store i32 %96, i32* %7, align 4
  %97 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %98 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @V_PRESCALED_SIZE(i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @H_PRESCALED_SIZE(i32 %103)
  %105 = or i32 %102, %104
  store i32 %105, i32* %15, align 4
  %106 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @DC_WIN_PRESCALED_SIZE, align 4
  %109 = call i32 @tegra_plane_writel(%struct.tegra_plane* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %38
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 2, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %112, %38
  %117 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %118 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %122 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %121, i32 0, i32 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @compute_dda_inc(i32 %120, i32 %124, i32 0, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %128 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %132 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %131, i32 0, i32 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @compute_dda_inc(i32 %130, i32 %134, i32 1, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @V_DDA_INC(i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @H_DDA_INC(i32 %139)
  %141 = or i32 %138, %140
  store i32 %141, i32* %15, align 4
  %142 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @DC_WIN_DDA_INC, align 4
  %145 = call i32 @tegra_plane_writel(%struct.tegra_plane* %142, i32 %143, i32 %144)
  %146 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %147 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %146, i32 0, i32 7
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @compute_initial_dda(i32 %149)
  store i32 %150, i32* %9, align 4
  %151 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %152 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @compute_initial_dda(i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @DC_WIN_H_INITIAL_DDA, align 4
  %159 = call i32 @tegra_plane_writel(%struct.tegra_plane* %156, i32 %157, i32 %158)
  %160 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @DC_WIN_V_INITIAL_DDA, align 4
  %163 = call i32 @tegra_plane_writel(%struct.tegra_plane* %160, i32 %161, i32 %162)
  %164 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %165 = load i32, i32* @DC_WIN_UV_BUF_STRIDE, align 4
  %166 = call i32 @tegra_plane_writel(%struct.tegra_plane* %164, i32 0, i32 %165)
  %167 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %168 = load i32, i32* @DC_WIN_BUF_STRIDE, align 4
  %169 = call i32 @tegra_plane_writel(%struct.tegra_plane* %167, i32 0, i32 %168)
  %170 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %171 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %172 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @DC_WINBUF_START_ADDR, align 4
  %177 = call i32 @tegra_plane_writel(%struct.tegra_plane* %170, i32 %175, i32 %176)
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %216

180:                                              ; preds = %116
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %216

183:                                              ; preds = %180
  %184 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %185 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %186 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DC_WINBUF_START_ADDR_U, align 4
  %191 = call i32 @tegra_plane_writel(%struct.tegra_plane* %184, i32 %189, i32 %190)
  %192 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %193 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %194 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @DC_WINBUF_START_ADDR_V, align 4
  %199 = call i32 @tegra_plane_writel(%struct.tegra_plane* %192, i32 %197, i32 %198)
  %200 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %201 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 16
  %206 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %207 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %205, %210
  store i32 %211, i32* %15, align 4
  %212 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* @DC_WIN_LINE_STRIDE, align 4
  %215 = call i32 @tegra_plane_writel(%struct.tegra_plane* %212, i32 %213, i32 %214)
  br label %225

216:                                              ; preds = %180, %116
  %217 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %218 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %219 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @DC_WIN_LINE_STRIDE, align 4
  %224 = call i32 @tegra_plane_writel(%struct.tegra_plane* %217, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %216, %183
  %226 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %227 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %232 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = sub i32 %234, 1
  %236 = load i32, i32* %6, align 4
  %237 = add i32 %236, %235
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %230, %225
  %239 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* @DC_WINBUF_ADDR_H_OFFSET, align 4
  %242 = call i32 @tegra_plane_writel(%struct.tegra_plane* %239, i32 %240, i32 %241)
  %243 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @DC_WINBUF_ADDR_V_OFFSET, align 4
  %246 = call i32 @tegra_plane_writel(%struct.tegra_plane* %243, i32 %244, i32 %245)
  %247 = load %struct.tegra_dc*, %struct.tegra_dc** %12, align 8
  %248 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %247, i32 0, i32 0
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %276

253:                                              ; preds = %238
  %254 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %255 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %16, align 8
  %258 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %259 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %258, i32 0, i32 6
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  switch i32 %261, label %271 [
    i32 129, label %262
    i32 128, label %264
    i32 130, label %266
  ]

262:                                              ; preds = %253
  %263 = load i32, i32* @DC_WINBUF_SURFACE_KIND_PITCH, align 4
  store i32 %263, i32* %15, align 4
  br label %271

264:                                              ; preds = %253
  %265 = load i32, i32* @DC_WINBUF_SURFACE_KIND_TILED, align 4
  store i32 %265, i32* %15, align 4
  br label %271

266:                                              ; preds = %253
  %267 = load i64, i64* %16, align 8
  %268 = call i32 @DC_WINBUF_SURFACE_KIND_BLOCK_HEIGHT(i64 %267)
  %269 = load i32, i32* @DC_WINBUF_SURFACE_KIND_BLOCK, align 4
  %270 = or i32 %268, %269
  store i32 %270, i32* %15, align 4
  br label %271

271:                                              ; preds = %253, %266, %264, %262
  %272 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %273 = load i32, i32* %15, align 4
  %274 = load i32, i32* @DC_WINBUF_SURFACE_KIND, align 4
  %275 = call i32 @tegra_plane_writel(%struct.tegra_plane* %272, i32 %273, i32 %274)
  br label %295

276:                                              ; preds = %238
  %277 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %278 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %277, i32 0, i32 6
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  switch i32 %280, label %290 [
    i32 129, label %281
    i32 128, label %285
    i32 130, label %289
  ]

281:                                              ; preds = %276
  %282 = load i32, i32* @DC_WIN_BUFFER_ADDR_MODE_LINEAR_UV, align 4
  %283 = load i32, i32* @DC_WIN_BUFFER_ADDR_MODE_LINEAR, align 4
  %284 = or i32 %282, %283
  store i32 %284, i32* %15, align 4
  br label %290

285:                                              ; preds = %276
  %286 = load i32, i32* @DC_WIN_BUFFER_ADDR_MODE_TILE_UV, align 4
  %287 = load i32, i32* @DC_WIN_BUFFER_ADDR_MODE_TILE, align 4
  %288 = or i32 %286, %287
  store i32 %288, i32* %15, align 4
  br label %290

289:                                              ; preds = %276
  br label %290

290:                                              ; preds = %276, %289, %285, %281
  %291 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* @DC_WIN_BUFFER_ADDR_MODE, align 4
  %294 = call i32 @tegra_plane_writel(%struct.tegra_plane* %291, i32 %292, i32 %293)
  br label %295

295:                                              ; preds = %290, %271
  %296 = load i32, i32* @WIN_ENABLE, align 4
  store i32 %296, i32* %15, align 4
  %297 = load i32, i32* %13, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %327

299:                                              ; preds = %295
  %300 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %301 = load i32, i32* @DC_WIN_CSC_YOF, align 4
  %302 = call i32 @tegra_plane_writel(%struct.tegra_plane* %300, i32 240, i32 %301)
  %303 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %304 = load i32, i32* @DC_WIN_CSC_KYRGB, align 4
  %305 = call i32 @tegra_plane_writel(%struct.tegra_plane* %303, i32 298, i32 %304)
  %306 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %307 = load i32, i32* @DC_WIN_CSC_KUR, align 4
  %308 = call i32 @tegra_plane_writel(%struct.tegra_plane* %306, i32 0, i32 %307)
  %309 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %310 = load i32, i32* @DC_WIN_CSC_KVR, align 4
  %311 = call i32 @tegra_plane_writel(%struct.tegra_plane* %309, i32 408, i32 %310)
  %312 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %313 = load i32, i32* @DC_WIN_CSC_KUG, align 4
  %314 = call i32 @tegra_plane_writel(%struct.tegra_plane* %312, i32 923, i32 %313)
  %315 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %316 = load i32, i32* @DC_WIN_CSC_KVG, align 4
  %317 = call i32 @tegra_plane_writel(%struct.tegra_plane* %315, i32 815, i32 %316)
  %318 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %319 = load i32, i32* @DC_WIN_CSC_KUB, align 4
  %320 = call i32 @tegra_plane_writel(%struct.tegra_plane* %318, i32 516, i32 %319)
  %321 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %322 = load i32, i32* @DC_WIN_CSC_KVB, align 4
  %323 = call i32 @tegra_plane_writel(%struct.tegra_plane* %321, i32 0, i32 %322)
  %324 = load i32, i32* @CSC_ENABLE, align 4
  %325 = load i32, i32* %15, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %15, align 4
  br label %337

327:                                              ; preds = %295
  %328 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %329 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %330, 24
  br i1 %331, label %332, label %336

332:                                              ; preds = %327
  %333 = load i32, i32* @COLOR_EXPAND, align 4
  %334 = load i32, i32* %15, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %15, align 4
  br label %336

336:                                              ; preds = %332, %327
  br label %337

337:                                              ; preds = %336, %299
  %338 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %339 = getelementptr inbounds %struct.tegra_dc_window, %struct.tegra_dc_window* %338, i32 0, i32 5
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %337
  %343 = load i32, i32* @V_DIRECTION, align 4
  %344 = load i32, i32* %15, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %15, align 4
  br label %346

346:                                              ; preds = %342, %337
  %347 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %348 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %349 = call i64 @tegra_plane_use_horizontal_filtering(%struct.tegra_plane* %347, %struct.tegra_dc_window* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %403

351:                                              ; preds = %346
  %352 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %353 = call i32 @DC_WIN_H_FILTER_P(i32 0)
  %354 = call i32 @tegra_plane_writel(%struct.tegra_plane* %352, i32 32768, i32 %353)
  %355 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %356 = call i32 @DC_WIN_H_FILTER_P(i32 1)
  %357 = call i32 @tegra_plane_writel(%struct.tegra_plane* %355, i32 1040743649, i32 %356)
  %358 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %359 = call i32 @DC_WIN_H_FILTER_P(i32 2)
  %360 = call i32 @tegra_plane_writel(%struct.tegra_plane* %358, i32 991001281, i32 %359)
  %361 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %362 = call i32 @DC_WIN_H_FILTER_P(i32 3)
  %363 = call i32 @tegra_plane_writel(%struct.tegra_plane* %361, i32 1494971306, i32 %362)
  %364 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %365 = call i32 @DC_WIN_H_FILTER_P(i32 4)
  %366 = call i32 @tegra_plane_writel(%struct.tegra_plane* %364, i32 1462070682, i32 %365)
  %367 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %368 = call i32 @DC_WIN_H_FILTER_P(i32 5)
  %369 = call i32 @tegra_plane_writel(%struct.tegra_plane* %367, i32 1429169803, i32 %368)
  %370 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %371 = call i32 @DC_WIN_H_FILTER_P(i32 6)
  %372 = call i32 @tegra_plane_writel(%struct.tegra_plane* %370, i32 1933074059, i32 %371)
  %373 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %374 = call i32 @DC_WIN_H_FILTER_P(i32 7)
  %375 = call i32 @tegra_plane_writel(%struct.tegra_plane* %373, i32 1917015427, i32 %374)
  %376 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %377 = call i32 @DC_WIN_H_FILTER_P(i32 8)
  %378 = call i32 @tegra_plane_writel(%struct.tegra_plane* %376, i32 1900825739, i32 %377)
  %379 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %380 = call i32 @DC_WIN_H_FILTER_P(i32 9)
  %381 = call i32 @tegra_plane_writel(%struct.tegra_plane* %379, i32 1884636051, i32 %380)
  %382 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %383 = call i32 @DC_WIN_H_FILTER_P(i32 10)
  %384 = call i32 @tegra_plane_writel(%struct.tegra_plane* %382, i32 1902000283, i32 %383)
  %385 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %386 = call i32 @DC_WIN_H_FILTER_P(i32 11)
  %387 = call i32 @tegra_plane_writel(%struct.tegra_plane* %385, i32 1902522282, i32 %386)
  %388 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %389 = call i32 @DC_WIN_H_FILTER_P(i32 12)
  %390 = call i32 @tegra_plane_writel(%struct.tegra_plane* %388, i32 1399662010, i32 %389)
  %391 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %392 = call i32 @DC_WIN_H_FILTER_P(i32 13)
  %393 = call i32 @tegra_plane_writel(%struct.tegra_plane* %391, i32 1433607114, i32 %392)
  %394 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %395 = call i32 @DC_WIN_H_FILTER_P(i32 14)
  %396 = call i32 @tegra_plane_writel(%struct.tegra_plane* %394, i32 947524057, i32 %395)
  %397 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %398 = call i32 @DC_WIN_H_FILTER_P(i32 15)
  %399 = call i32 @tegra_plane_writel(%struct.tegra_plane* %397, i32 1014761713, i32 %398)
  %400 = load i32, i32* @H_FILTER, align 4
  %401 = load i32, i32* %15, align 4
  %402 = or i32 %401, %400
  store i32 %402, i32* %15, align 4
  br label %403

403:                                              ; preds = %351, %346
  %404 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %405 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %406 = call i64 @tegra_plane_use_vertical_filtering(%struct.tegra_plane* %404, %struct.tegra_dc_window* %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %427

408:                                              ; preds = %403
  store i32 0, i32* %17, align 4
  store i32 128, i32* %18, align 4
  br label %409

409:                                              ; preds = %418, %408
  %410 = load i32, i32* %17, align 4
  %411 = icmp ult i32 %410, 16
  br i1 %411, label %412, label %423

412:                                              ; preds = %409
  %413 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %414 = load i32, i32* %18, align 4
  %415 = load i32, i32* %17, align 4
  %416 = call i32 @DC_WIN_V_FILTER_P(i32 %415)
  %417 = call i32 @tegra_plane_writel(%struct.tegra_plane* %413, i32 %414, i32 %416)
  br label %418

418:                                              ; preds = %412
  %419 = load i32, i32* %17, align 4
  %420 = add i32 %419, 1
  store i32 %420, i32* %17, align 4
  %421 = load i32, i32* %18, align 4
  %422 = sub i32 %421, 8
  store i32 %422, i32* %18, align 4
  br label %409

423:                                              ; preds = %409
  %424 = load i32, i32* @V_FILTER, align 4
  %425 = load i32, i32* %15, align 4
  %426 = or i32 %425, %424
  store i32 %426, i32* %15, align 4
  br label %427

427:                                              ; preds = %423, %403
  %428 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %429 = load i32, i32* %15, align 4
  %430 = load i32, i32* @DC_WIN_WIN_OPTIONS, align 4
  %431 = call i32 @tegra_plane_writel(%struct.tegra_plane* %428, i32 %429, i32 %430)
  %432 = load %struct.tegra_dc*, %struct.tegra_dc** %12, align 8
  %433 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %432, i32 0, i32 0
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %427
  %439 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %440 = call i32 @tegra_plane_setup_blending_legacy(%struct.tegra_plane* %439)
  br label %445

441:                                              ; preds = %427
  %442 = load %struct.tegra_plane*, %struct.tegra_plane** %3, align 8
  %443 = load %struct.tegra_dc_window*, %struct.tegra_dc_window** %4, align 8
  %444 = call i32 @tegra_plane_setup_blending(%struct.tegra_plane* %442, %struct.tegra_dc_window* %443)
  br label %445

445:                                              ; preds = %441, %438
  ret void
}

declare dso_local i32 @tegra_plane_format_is_yuv(i32, i32*) #1

declare dso_local i32 @tegra_plane_writel(%struct.tegra_plane*, i32, i32) #1

declare dso_local i32 @V_POSITION(i32) #1

declare dso_local i32 @H_POSITION(i32) #1

declare dso_local i32 @V_SIZE(i32) #1

declare dso_local i32 @H_SIZE(i32) #1

declare dso_local i32 @V_PRESCALED_SIZE(i32) #1

declare dso_local i32 @H_PRESCALED_SIZE(i32) #1

declare dso_local i32 @compute_dda_inc(i32, i32, i32, i32) #1

declare dso_local i32 @V_DDA_INC(i32) #1

declare dso_local i32 @H_DDA_INC(i32) #1

declare dso_local i32 @compute_initial_dda(i32) #1

declare dso_local i32 @DC_WINBUF_SURFACE_KIND_BLOCK_HEIGHT(i64) #1

declare dso_local i64 @tegra_plane_use_horizontal_filtering(%struct.tegra_plane*, %struct.tegra_dc_window*) #1

declare dso_local i32 @DC_WIN_H_FILTER_P(i32) #1

declare dso_local i64 @tegra_plane_use_vertical_filtering(%struct.tegra_plane*, %struct.tegra_dc_window*) #1

declare dso_local i32 @DC_WIN_V_FILTER_P(i32) #1

declare dso_local i32 @tegra_plane_setup_blending_legacy(%struct.tegra_plane*) #1

declare dso_local i32 @tegra_plane_setup_blending(%struct.tegra_plane*, %struct.tegra_dc_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
