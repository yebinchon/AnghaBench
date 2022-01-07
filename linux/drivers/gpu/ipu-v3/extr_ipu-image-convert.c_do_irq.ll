; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_do_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_do_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_run = type { i32, i64, %struct.ipu_image_convert_ctx* }
%struct.ipu_image_convert_ctx = type { i64, i64, i32*, i32, i32, i64, i32, %struct.ipu_image_convert_image, %struct.ipu_image_convert_image, %struct.ipu_image_convert_chan* }
%struct.ipu_image_convert_image = type { %struct.TYPE_4__, %struct.ipu_image_tile*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.ipu_image_tile = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ipu_image_convert_chan = type { i32*, i32, %struct.ipuv3_channel*, %struct.ipuv3_channel*, %struct.ipuv3_channel*, i32 }
%struct.ipuv3_channel = type { i32 }

@EIO = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_image_convert_run*)* @do_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_irq(%struct.ipu_image_convert_run* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipu_image_convert_run*, align 8
  %4 = alloca %struct.ipu_image_convert_ctx*, align 8
  %5 = alloca %struct.ipu_image_convert_chan*, align 8
  %6 = alloca %struct.ipu_image_tile*, align 8
  %7 = alloca %struct.ipu_image_tile*, align 8
  %8 = alloca %struct.ipu_image_convert_image*, align 8
  %9 = alloca %struct.ipu_image_convert_image*, align 8
  %10 = alloca %struct.ipuv3_channel*, align 8
  %11 = alloca i32, align 4
  store %struct.ipu_image_convert_run* %0, %struct.ipu_image_convert_run** %3, align 8
  %12 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %13 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %12, i32 0, i32 2
  %14 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %13, align 8
  store %struct.ipu_image_convert_ctx* %14, %struct.ipu_image_convert_ctx** %4, align 8
  %15 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %15, i32 0, i32 9
  %17 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %16, align 8
  store %struct.ipu_image_convert_chan* %17, %struct.ipu_image_convert_chan** %5, align 8
  %18 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %18, i32 0, i32 8
  store %struct.ipu_image_convert_image* %19, %struct.ipu_image_convert_image** %8, align 8
  %20 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %20, i32 0, i32 7
  store %struct.ipu_image_convert_image* %21, %struct.ipu_image_convert_image** %9, align 8
  %22 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %23 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %22, i32 0, i32 5
  %24 = call i32 @lockdep_assert_held(i32* %23)
  %25 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @ipu_rot_mode_is_irt(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %32 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %31, i32 0, i32 4
  %33 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %32, align 8
  br label %38

34:                                               ; preds = %1
  %35 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %36 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %35, i32 0, i32 3
  %37 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %36, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi %struct.ipuv3_channel* [ %33, %30 ], [ %37, %34 ]
  store %struct.ipuv3_channel* %39, %struct.ipuv3_channel** %10, align 8
  %40 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %51 = call i32 @convert_stop(%struct.ipu_image_convert_run* %50)
  %52 = load i64, i64* @EIO, align 8
  %53 = sub nsw i64 0, %52
  %54 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %55 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %255

56:                                               ; preds = %44, %38
  %57 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %66 = call i32 @convert_stop(%struct.ipu_image_convert_run* %65)
  %67 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %68 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %255

69:                                               ; preds = %56
  %70 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %171, label %74

74:                                               ; preds = %69
  %75 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %76 = call i64 @ic_settings_changed(%struct.ipu_image_convert_ctx* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %80 = call i32 @convert_stop(%struct.ipu_image_convert_run* %79)
  %81 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %82 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @convert_start(%struct.ipu_image_convert_run* %81, i64 %84)
  br label %170

86:                                               ; preds = %74
  %87 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %8, align 8
  %88 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %87, i32 0, i32 1
  %89 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %88, align 8
  %90 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %89, i64 %92
  store %struct.ipu_image_tile* %93, %struct.ipu_image_tile** %6, align 8
  %94 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %11, align 4
  %102 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %9, align 8
  %103 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %102, i32 0, i32 1
  %104 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %104, i64 %106
  store %struct.ipu_image_tile* %107, %struct.ipu_image_tile** %7, align 8
  %108 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %109 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %108, i32 0, i32 2
  %110 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %109, align 8
  %111 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %8, align 8
  %112 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %6, align 8
  %116 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = call i32 @ipu_cpmem_set_buffer(%struct.ipuv3_channel* %110, i32 0, i64 %118)
  %120 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %10, align 8
  %121 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %9, align 8
  %122 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %7, align 8
  %126 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %124, %127
  %129 = call i32 @ipu_cpmem_set_buffer(%struct.ipuv3_channel* %120, i32 0, i64 %128)
  %130 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %8, align 8
  %131 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %130, i32 0, i32 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %86
  %137 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %138 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %137, i32 0, i32 2
  %139 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %138, align 8
  %140 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %6, align 8
  %141 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %6, align 8
  %144 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ipu_cpmem_set_uv_offset(%struct.ipuv3_channel* %139, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %136, %86
  %148 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %9, align 8
  %149 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %148, i32 0, i32 2
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %10, align 8
  %156 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %7, align 8
  %157 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %7, align 8
  %160 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ipu_cpmem_set_uv_offset(%struct.ipuv3_channel* %155, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %154, %147
  %164 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %165 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %164, i32 0, i32 2
  %166 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %165, align 8
  %167 = call i32 @ipu_idmac_select_buffer(%struct.ipuv3_channel* %166, i32 0)
  %168 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %10, align 8
  %169 = call i32 @ipu_idmac_select_buffer(%struct.ipuv3_channel* %168, i32 0)
  br label %170

170:                                              ; preds = %163, %78
  br label %249

171:                                              ; preds = %69
  %172 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %173 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %176 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = sub i64 %177, 1
  %179 = icmp ult i64 %174, %178
  br i1 %179, label %180, label %248

180:                                              ; preds = %171
  %181 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %8, align 8
  %182 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %181, i32 0, i32 1
  %183 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %182, align 8
  %184 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %185 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, 1
  %188 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %183, i64 %187
  store %struct.ipu_image_tile* %188, %struct.ipu_image_tile** %6, align 8
  %189 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %190 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %193 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, 1
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %11, align 4
  %198 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %9, align 8
  %199 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %198, i32 0, i32 1
  %200 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %200, i64 %202
  store %struct.ipu_image_tile* %203, %struct.ipu_image_tile** %7, align 8
  %204 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %205 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %204, i32 0, i32 2
  %206 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %205, align 8
  %207 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %208 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %8, align 8
  %211 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %6, align 8
  %215 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %213, %216
  %218 = call i32 @ipu_cpmem_set_buffer(%struct.ipuv3_channel* %206, i32 %209, i64 %217)
  %219 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %10, align 8
  %220 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %221 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %9, align 8
  %224 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %7, align 8
  %228 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %226, %229
  %231 = call i32 @ipu_cpmem_set_buffer(%struct.ipuv3_channel* %219, i32 %222, i64 %230)
  %232 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %233 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %232, i32 0, i32 2
  %234 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %233, align 8
  %235 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %236 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @ipu_idmac_select_buffer(%struct.ipuv3_channel* %234, i32 %237)
  %239 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %10, align 8
  %240 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %241 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @ipu_idmac_select_buffer(%struct.ipuv3_channel* %239, i32 %242)
  %244 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %245 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = xor i32 %246, 1
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %180, %171
  br label %249

249:                                              ; preds = %248, %170
  %250 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %251 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %251, align 8
  %254 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %254, i32* %2, align 4
  br label %266

255:                                              ; preds = %64, %49
  %256 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %3, align 8
  %257 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %256, i32 0, i32 0
  %258 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %259 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %258, i32 0, i32 1
  %260 = call i32 @list_add_tail(i32* %257, i32* %259)
  %261 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %262 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %261, i32 0, i32 0
  store i32* null, i32** %262, align 8
  %263 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %264 = call i32 @run_next(%struct.ipu_image_convert_chan* %263)
  %265 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %255, %249
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @ipu_rot_mode_is_irt(i32) #1

declare dso_local i32 @convert_stop(%struct.ipu_image_convert_run*) #1

declare dso_local i64 @ic_settings_changed(%struct.ipu_image_convert_ctx*) #1

declare dso_local i32 @convert_start(%struct.ipu_image_convert_run*, i64) #1

declare dso_local i32 @ipu_cpmem_set_buffer(%struct.ipuv3_channel*, i32, i64) #1

declare dso_local i32 @ipu_cpmem_set_uv_offset(%struct.ipuv3_channel*, i32, i32) #1

declare dso_local i32 @ipu_idmac_select_buffer(%struct.ipuv3_channel*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @run_next(%struct.ipu_image_convert_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
