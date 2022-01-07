; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_ram = type { %struct.TYPE_6__, %struct.gt215_ramfuc, %struct.gt215_ltrain }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.nvkm_clk*, %struct.nvkm_bios* }
%struct.nvkm_clk = type { i32 }
%struct.nvkm_bios = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32)* }
%struct.gt215_ramfuc = type { i32 }
%struct.gt215_ltrain = type { i32, i32, i32, i32 }
%struct.nvbios_M0205T = type { i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"NvMemExec\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVA3_TRAIN_EXEC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@nv_clk_src_mem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Train: %08x\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Train: %08x %08x %08x\00", align 1
@NVA3_TRAIN_DONE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NVA3_TRAIN_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gt215_ram*)* @gt215_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt215_link_train(%struct.gt215_ram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gt215_ram*, align 8
  %4 = alloca %struct.gt215_ltrain*, align 8
  %5 = alloca %struct.gt215_ramfuc*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca %struct.nvkm_clk*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvbios_M0205T, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  store %struct.gt215_ram* %0, %struct.gt215_ram** %3, align 8
  %24 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %25 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %24, i32 0, i32 2
  store %struct.gt215_ltrain* %25, %struct.gt215_ltrain** %4, align 8
  %26 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %27 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %26, i32 0, i32 1
  store %struct.gt215_ramfuc* %27, %struct.gt215_ramfuc** %5, align 8
  %28 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %29 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store %struct.nvkm_subdev* %32, %struct.nvkm_subdev** %6, align 8
  %33 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %34 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %33, i32 0, i32 0
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %34, align 8
  store %struct.nvkm_device* %35, %struct.nvkm_device** %7, align 8
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %37 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %36, i32 0, i32 2
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %37, align 8
  store %struct.nvkm_bios* %38, %struct.nvkm_bios** %8, align 8
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %40 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %39, i32 0, i32 1
  %41 = load %struct.nvkm_clk*, %struct.nvkm_clk** %40, align 8
  store %struct.nvkm_clk* %41, %struct.nvkm_clk** %9, align 8
  %42 = bitcast %struct.nvbios_M0205T* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 16, i1 false)
  store i64* %22, i64** %23, align 8
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %44 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @nvkm_boolopt(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load i32, i32* @ENOSYS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %243

51:                                               ; preds = %1
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32* @kmalloc_array(i32 64, i32 4, i32 %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %243

59:                                               ; preds = %51
  %60 = load i32, i32* @NVA3_TRAIN_EXEC, align 4
  %61 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %62 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %64 = call i32 @nvbios_M0205Tp(%struct.nvkm_bios* %63, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, %struct.nvbios_M0205T* %14)
  %65 = getelementptr inbounds %struct.nvbios_M0205T, %struct.nvbios_M0205T* %14, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @kfree(i32* %69)
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %243

73:                                               ; preds = %59
  %74 = load %struct.nvkm_clk*, %struct.nvkm_clk** %9, align 8
  %75 = load i32, i32* @nv_clk_src_mem, align 4
  %76 = call i32 @nvkm_clk_read(%struct.nvkm_clk* %74, i32 %75)
  store i32 %76, i32* %21, align 4
  %77 = load %struct.nvkm_clk*, %struct.nvkm_clk** %9, align 8
  %78 = load i64*, i64** %23, align 8
  %79 = call i32 @gt215_clk_pre(%struct.nvkm_clk* %77, i64* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %227

83:                                               ; preds = %73
  %84 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %85 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %88, align 8
  %90 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %91 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.nvbios_M0205T, %struct.nvbios_M0205T* %14, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = mul nsw i32 %94, 1000
  %96 = call i32 %89(%struct.TYPE_6__* %91, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %83
  br label %227

100:                                              ; preds = %83
  %101 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %102 = call i32 @nvkm_wr32(%struct.nvkm_device* %101, i32 1119232, i32 0)
  %103 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %104 = call i32 @nvkm_mask(%struct.nvkm_device* %103, i32 1050228, i32 65535, i32 0)
  %105 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %106 = call i32 @nvkm_mask(%struct.nvkm_device* %105, i32 1050084, i32 65535, i32 0)
  %107 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %108 = call i32 @nvkm_mask(%struct.nvkm_device* %107, i32 1051404, i32 255, i32 0)
  %109 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %110 = call i32 @nvkm_wr32(%struct.nvkm_device* %109, i32 1051652, i32 1024)
  %111 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %112 = call i32 @ram_rd32(%struct.gt215_ramfuc* %111, i32 5888)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %114 = call i32 @ram_mask(%struct.gt215_ramfuc* %113, i32 1049088, i32 2048, i32 0)
  %115 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %116 = call i32 @ram_wr32(%struct.gt215_ramfuc* %115, i32 6361600, i32 13056)
  %117 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %118 = call i32 @ram_wait_vblank(%struct.gt215_ramfuc* %117)
  %119 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %120 = call i32 @ram_wait(%struct.gt215_ramfuc* %119, i32 6361600, i32 3, i32 0, i32 500000)
  %121 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %122 = call i32 @ram_mask(%struct.gt215_ramfuc* %121, i32 5648, i32 131, i32 3)
  %123 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %124 = call i32 @ram_mask(%struct.gt215_ramfuc* %123, i32 1048704, i32 32, i32 0)
  %125 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %126 = call i32 @ram_mask(%struct.gt215_ramfuc* %125, i32 1112068, i32 -2147483648, i32 0)
  %127 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %128 = call i32 @ram_wr32(%struct.gt215_ramfuc* %127, i32 5888, i32 0)
  %129 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %130 = call i32 @ram_train(%struct.gt215_ramfuc* %129)
  %131 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %132 = call i32 @ram_mask(%struct.gt215_ramfuc* %131, i32 1112068, i32 -2147483648, i32 -2147483648)
  %133 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %134 = call i32 @ram_wr32(%struct.gt215_ramfuc* %133, i32 1049916, i32 0)
  %135 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %136 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %137 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ram_wr32(%struct.gt215_ramfuc* %135, i32 1050400, i32 %138)
  %140 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %141 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %142 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ram_wr32(%struct.gt215_ramfuc* %140, i32 1118688, i32 %143)
  %145 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %146 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %147 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ram_wr32(%struct.gt215_ramfuc* %145, i32 1119232, i32 %148)
  %150 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %151 = call i32 @ram_nuke(%struct.gt215_ramfuc* %150, i32 1048704)
  %152 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %153 = call i32 @ram_mask(%struct.gt215_ramfuc* %152, i32 1048704, i32 32, i32 32)
  %154 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %155 = call i32 @ram_nsec(%struct.gt215_ramfuc* %154, i32 1000)
  %156 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @ram_wr32(%struct.gt215_ramfuc* %156, i32 5888, i32 %157)
  %159 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %160 = call i32 @ram_mask(%struct.gt215_ramfuc* %159, i32 5648, i32 131, i32 128)
  %161 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %162 = call i32 @ram_wr32(%struct.gt215_ramfuc* %161, i32 6361600, i32 13104)
  %163 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %164 = call i32 @ram_mask(%struct.gt215_ramfuc* %163, i32 1049088, i32 2048, i32 2048)
  %165 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %166 = call i32 @ram_exec(%struct.gt215_ramfuc* %165, i32 1)
  %167 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %168 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %171, align 8
  %173 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %174 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %173, i32 0, i32 0
  %175 = load i32, i32* %21, align 4
  %176 = call i32 %172(%struct.TYPE_6__* %174, i32 %175)
  %177 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %5, align 8
  %178 = call i32 @ram_exec(%struct.gt215_ramfuc* %177, i32 1)
  %179 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %180 = call i32 @nvkm_mask(%struct.nvkm_device* %179, i32 6382344, i32 16, i32 16)
  %181 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %182 = call i32 @nvkm_mask(%struct.nvkm_device* %181, i32 6384392, i32 16, i32 16)
  %183 = load %struct.nvkm_clk*, %struct.nvkm_clk** %9, align 8
  %184 = load i64*, i64** %23, align 8
  %185 = call i32 @gt215_clk_post(%struct.nvkm_clk* %183, i64* %184)
  %186 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %187 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = load i32*, i32** %10, align 8
  %191 = call i32 @ram_train_result(%struct.TYPE_7__* %189, i32* %190, i32 64)
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %203, %100
  %193 = load i32, i32* %13, align 4
  %194 = icmp slt i32 %193, 64
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %197 = load i32*, i32** %10, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %195
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %192

206:                                              ; preds = %192
  %207 = load i32*, i32** %10, align 8
  %208 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %209 = call i32 @gt215_link_train_calc(i32* %207, %struct.gt215_ltrain* %208)
  %210 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %211 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %212 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %215 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %218 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %210, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %213, i32 %216, i32 %219)
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @kfree(i32* %221)
  %223 = load i32, i32* @NVA3_TRAIN_DONE, align 4
  %224 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %225 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %12, align 4
  store i32 %226, i32* %2, align 4
  br label %243

227:                                              ; preds = %99, %82
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* @EBUSY, align 4
  %230 = sub nsw i32 0, %229
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  store i64* null, i64** %23, align 8
  br label %233

233:                                              ; preds = %232, %227
  %234 = load i32, i32* @NVA3_TRAIN_UNSUPPORTED, align 4
  %235 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %236 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  %237 = load %struct.nvkm_clk*, %struct.nvkm_clk** %9, align 8
  %238 = load i64*, i64** %23, align 8
  %239 = call i32 @gt215_clk_post(%struct.nvkm_clk* %237, i64* %238)
  %240 = load i32*, i32** %10, align 8
  %241 = call i32 @kfree(i32* %240)
  %242 = load i32, i32* %12, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %233, %206, %68, %56, %48
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nvkm_boolopt(i32, i8*, i32) #2

declare dso_local i32* @kmalloc_array(i32, i32, i32) #2

declare dso_local i32 @nvbios_M0205Tp(%struct.nvkm_bios*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.nvbios_M0205T*) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @nvkm_clk_read(%struct.nvkm_clk*, i32) #2

declare dso_local i32 @gt215_clk_pre(%struct.nvkm_clk*, i64*) #2

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #2

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #2

declare dso_local i32 @ram_rd32(%struct.gt215_ramfuc*, i32) #2

declare dso_local i32 @ram_mask(%struct.gt215_ramfuc*, i32, i32, i32) #2

declare dso_local i32 @ram_wr32(%struct.gt215_ramfuc*, i32, i32) #2

declare dso_local i32 @ram_wait_vblank(%struct.gt215_ramfuc*) #2

declare dso_local i32 @ram_wait(%struct.gt215_ramfuc*, i32, i32, i32, i32) #2

declare dso_local i32 @ram_train(%struct.gt215_ramfuc*) #2

declare dso_local i32 @ram_nuke(%struct.gt215_ramfuc*, i32) #2

declare dso_local i32 @ram_nsec(%struct.gt215_ramfuc*, i32) #2

declare dso_local i32 @ram_exec(%struct.gt215_ramfuc*, i32) #2

declare dso_local i32 @gt215_clk_post(%struct.nvkm_clk*, i64*) #2

declare dso_local i32 @ram_train_result(%struct.TYPE_7__*, i32*, i32) #2

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, ...) #2

declare dso_local i32 @gt215_link_train_calc(i32*, %struct.gt215_ltrain*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
