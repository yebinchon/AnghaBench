; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram_func = type { i32 }
%struct.nvkm_fb = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_ram = type { i32 }
%struct.dcb_gpio_func = type { i32, i32* }
%struct.gk104_ram = type { i32, i32, i32, %struct.TYPE_2__, %struct.nvkm_ram, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to parse ramcfg data\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mclk refpll data not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"mclk pll data not found\0A\00", align 1
@DCB_GPIO_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk104_ram_new_(%struct.nvkm_ram_func* %0, %struct.nvkm_fb* %1, %struct.nvkm_ram** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_ram_func*, align 8
  %6 = alloca %struct.nvkm_fb*, align 8
  %7 = alloca %struct.nvkm_ram**, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca %struct.nvkm_bios*, align 8
  %11 = alloca %struct.dcb_gpio_func, align 8
  %12 = alloca %struct.gk104_ram*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.nvkm_ram_func* %0, %struct.nvkm_ram_func** %5, align 8
  store %struct.nvkm_fb* %1, %struct.nvkm_fb** %6, align 8
  store %struct.nvkm_ram** %2, %struct.nvkm_ram*** %7, align 8
  %18 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %19 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %18, i32 0, i32 0
  store %struct.nvkm_subdev* %19, %struct.nvkm_subdev** %8, align 8
  %20 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %20, i32 0, i32 0
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %21, align 8
  store %struct.nvkm_device* %22, %struct.nvkm_device** %9, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 1
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %24, align 8
  store %struct.nvkm_bios* %25, %struct.nvkm_bios** %10, align 8
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %27 = call i32 @nvbios_ramcfg_index(%struct.nvkm_subdev* %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.gk104_ram* @kzalloc(i32 552, i32 %28)
  store %struct.gk104_ram* %29, %struct.gk104_ram** %12, align 8
  %30 = icmp ne %struct.gk104_ram* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %557

34:                                               ; preds = %3
  %35 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %36 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %35, i32 0, i32 4
  %37 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %7, align 8
  store %struct.nvkm_ram* %36, %struct.nvkm_ram** %37, align 8
  %38 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %5, align 8
  %39 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %40 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %41 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %40, i32 0, i32 4
  %42 = call i32 @gf100_ram_ctor(%struct.nvkm_ram_func* %38, %struct.nvkm_fb* %39, %struct.nvkm_ram* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %4, align 4
  br label %557

47:                                               ; preds = %34
  %48 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %49 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %48, i32 0, i32 5
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %52 = call i8* @nvkm_rd32(%struct.nvkm_device* %51, i32 140344)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %55 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %57 = call i8* @nvkm_rd32(%struct.nvkm_device* %56, i32 140628)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %60 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %62 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %16, align 8
  br label %63

63:                                               ; preds = %100, %47
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %66 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %103

69:                                               ; preds = %63
  %70 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %71 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %69
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = mul nsw i32 %79, 4096
  %81 = add nsw i32 1114628, %80
  %82 = call i8* @nvkm_rd32(%struct.nvkm_device* %78, i32 %81)
  %83 = ptrtoint i8* %82 to i64
  store i64 %83, i64* %17, align 8
  %84 = load i64, i64* %16, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %77
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %17, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = shl i32 1, %91
  %93 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %94 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %100

97:                                               ; preds = %86, %77
  %98 = load i64, i64* %17, align 8
  store i64 %98, i64* %16, align 8
  br label %99

99:                                               ; preds = %97, %69
  br label %100

100:                                              ; preds = %99, %90
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %63

103:                                              ; preds = %63
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %125, %103
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br i1 %107, label %108, label %128

108:                                              ; preds = %104
  %109 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @gk104_ram_ctor_data(%struct.gk104_ram* %109, i32 %110, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %108
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @ENOENT, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %122 = call i32 @nvkm_error(%struct.nvkm_subdev* %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %4, align 4
  br label %557

124:                                              ; preds = %115, %108
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %104

128:                                              ; preds = %104
  %129 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %130 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %131 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 66
  %133 = call i32 @nvbios_pll_parse(%struct.nvkm_bios* %129, i32 12, i32* %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %138 = call i32 @nvkm_error(%struct.nvkm_subdev* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %4, align 4
  br label %557

140:                                              ; preds = %128
  %141 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %142 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %143 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 65
  %145 = call i32 @nvbios_pll_parse(%struct.nvkm_bios* %141, i32 4, i32* %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %150 = call i32 @nvkm_error(%struct.nvkm_subdev* %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %4, align 4
  br label %557

152:                                              ; preds = %140
  %153 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %154 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %157 = call i32 @nvkm_gpio_find(i32 %155, i32 0, i32 24, i32 %156, %struct.dcb_gpio_func* %11)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %191

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %11, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = mul nsw i32 %162, 4
  %164 = add nsw i32 54800, %163
  %165 = call i8* @ramfuc_reg(i32 %164)
  %166 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %167 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 64
  store i8* %165, i8** %168, align 8
  %169 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %11, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %172, 2
  %174 = shl i32 %173, 12
  %175 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %176 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %174, i32* %179, align 4
  %180 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %11, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = xor i32 %183, 2
  %185 = shl i32 %184, 12
  %186 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %187 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  store i32 %185, i32* %190, align 4
  br label %191

191:                                              ; preds = %160, %152
  %192 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %193 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %196 = call i32 @nvkm_gpio_find(i32 %194, i32 0, i32 46, i32 %195, %struct.dcb_gpio_func* %11)
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %230

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %11, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %201, 4
  %203 = add nsw i32 54800, %202
  %204 = call i8* @ramfuc_reg(i32 %203)
  %205 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %206 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 63
  store i8* %204, i8** %207, align 8
  %208 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %11, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = xor i32 %211, 2
  %213 = shl i32 %212, 12
  %214 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %215 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 %213, i32* %218, align 4
  %219 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %11, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = xor i32 %222, 2
  %224 = shl i32 %223, 12
  %225 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %226 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  store i32 %224, i32* %229, align 4
  br label %230

230:                                              ; preds = %199, %191
  %231 = call i8* @ramfuc_reg(i32 54788)
  %232 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %233 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 62
  store i8* %231, i8** %234, align 8
  %235 = call i8* @ramfuc_reg(i32 1253408)
  %236 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %237 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 61
  store i8* %235, i8** %238, align 8
  %239 = call i8* @ramfuc_reg(i32 1253416)
  %240 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %241 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 60
  store i8* %239, i8** %242, align 8
  %243 = call i8* @ramfuc_reg(i32 1253412)
  %244 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %245 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 59
  store i8* %243, i8** %246, align 8
  %247 = call i8* @ramfuc_reg(i32 1253424)
  %248 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %249 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 58
  store i8* %247, i8** %250, align 8
  %251 = call i8* @ramfuc_reg(i32 1253428)
  %252 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %253 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 57
  store i8* %251, i8** %254, align 8
  %255 = call i8* @ramfuc_reg(i32 1253376)
  %256 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %257 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 56
  store i8* %255, i8** %258, align 8
  %259 = call i8* @ramfuc_reg(i32 1253380)
  %260 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %261 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 55
  store i8* %259, i8** %262, align 8
  %263 = call i8* @ramfuc_reg(i32 1253440)
  %264 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %265 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 54
  store i8* %263, i8** %266, align 8
  %267 = call i8* @ramfuc_reg(i32 1110600)
  %268 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %269 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 53
  store i8* %267, i8** %270, align 8
  %271 = call i8* @ramfuc_reg(i32 1110672)
  %272 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %273 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 52
  store i8* %271, i8** %274, align 8
  %275 = call i8* @ramfuc_reg(i32 1110676)
  %276 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %277 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 51
  store i8* %275, i8** %278, align 8
  %279 = call i8* @ramfuc_reg(i32 1110680)
  %280 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %281 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 50
  store i8* %279, i8** %282, align 8
  %283 = call i8* @ramfuc_reg(i32 1110684)
  %284 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %285 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 49
  store i8* %283, i8** %286, align 8
  %287 = call i8* @ramfuc_reg(i32 1110688)
  %288 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %289 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 48
  store i8* %287, i8** %290, align 8
  %291 = call i8* @ramfuc_reg(i32 1110692)
  %292 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %293 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 47
  store i8* %291, i8** %294, align 8
  %295 = call i8* @ramfuc_reg(i32 1110696)
  %296 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %297 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 46
  store i8* %295, i8** %298, align 8
  %299 = call i8* @ramfuc_reg(i32 1110700)
  %300 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %301 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 45
  store i8* %299, i8** %302, align 8
  %303 = call i8* @ramfuc_reg(i32 1110732)
  %304 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %305 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 44
  store i8* %303, i8** %306, align 8
  %307 = call i8* @ramfuc_reg(i32 1110760)
  %308 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %309 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 43
  store i8* %307, i8** %310, align 8
  %311 = call i8* @ramfuc_reg(i32 1110608)
  %312 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %313 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 42
  store i8* %311, i8** %314, align 8
  %315 = call i8* @ramfuc_reg(i32 1110604)
  %316 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %317 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 41
  store i8* %315, i8** %318, align 8
  %319 = call i8* @ramfuc_reg(i32 1113796)
  %320 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %321 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 40
  store i8* %319, i8** %322, align 8
  %323 = call i8* @ramfuc_reg(i32 1113800)
  %324 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %325 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 39
  store i8* %323, i8** %326, align 8
  %327 = call i8* @ramfuc_reg(i32 1111556)
  %328 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %329 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 38
  store i8* %327, i8** %330, align 8
  %331 = call i8* @ramfuc_reg(i32 1111572)
  %332 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %333 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 37
  store i8* %331, i8** %334, align 8
  %335 = call i8* @ramfuc_reg(i32 1111568)
  %336 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %337 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 36
  store i8* %335, i8** %338, align 8
  %339 = call i8* @ramfuc_reg(i32 1050480)
  %340 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %341 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 35
  store i8* %339, i8** %342, align 8
  %343 = call i8* @ramfuc_reg(i32 1050488)
  %344 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %345 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %344, i32 0, i32 3
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 34
  store i8* %343, i8** %346, align 8
  %347 = call i8* @ramfuc_reg(i32 1110564)
  %348 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %349 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 33
  store i8* %347, i8** %350, align 8
  %351 = call i8* @ramfuc_reg(i32 1112176)
  %352 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %353 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %352, i32 0, i32 3
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 32
  store i8* %351, i8** %354, align 8
  %355 = call i8* @ramfuc_reg(i32 1111704)
  %356 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %357 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %356, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 31
  store i8* %355, i8** %358, align 8
  %359 = call i8* @ramfuc_reg(i32 1111700)
  %360 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %361 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %360, i32 0, i32 3
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 30
  store i8* %359, i8** %362, align 8
  %363 = call i8* @ramfuc_reg(i32 1111736)
  %364 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %365 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %364, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 29
  store i8* %363, i8** %366, align 8
  %367 = call i8* @ramfuc_reg(i32 1112072)
  %368 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %369 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i32 0, i32 28
  store i8* %367, i8** %370, align 8
  %371 = call i8* @ramfuc_reg(i32 1111664)
  %372 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %373 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %372, i32 0, i32 3
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 27
  store i8* %371, i8** %374, align 8
  %375 = call i8* @ramfuc_reg(i32 1111564)
  %376 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %377 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 26
  store i8* %375, i8** %378, align 8
  %379 = call i8* @ramfuc_reg(i32 1112112)
  %380 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %381 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 25
  store i8* %379, i8** %382, align 8
  %383 = call i8* @ramfuc_reg(i32 1274860)
  %384 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %385 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 24
  store i8* %383, i8** %386, align 8
  %387 = call i8* @ramfuc_reg(i32 1112064)
  %388 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %389 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %388, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 23
  store i8* %387, i8** %390, align 8
  %391 = call i8* @ramfuc_reg(i32 1112108)
  %392 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %393 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 22
  store i8* %391, i8** %394, align 8
  %395 = call i8* @ramfuc_reg(i32 1112440)
  %396 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %397 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 21
  store i8* %395, i8** %398, align 8
  %399 = call i8* @ramfuc_reg(i32 1112336)
  %400 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %401 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %401, i32 0, i32 20
  store i8* %399, i8** %402, align 8
  %403 = call i8* @ramfuc_reg(i32 1112340)
  %404 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %405 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %404, i32 0, i32 3
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i32 0, i32 19
  store i8* %403, i8** %406, align 8
  %407 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %408 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %407, i32 0, i32 4
  %409 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  switch i32 %410, label %491 [
    i32 128, label %411
    i32 129, label %472
  ]

411:                                              ; preds = %230
  %412 = call i8* @ramfuc_reg(i32 1110784)
  %413 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %414 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %413, i32 0, i32 3
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 18
  %416 = load i8**, i8*** %415, align 8
  %417 = getelementptr inbounds i8*, i8** %416, i64 0
  store i8* %412, i8** %417, align 8
  %418 = call i8* @ramfuc_reg(i32 1110832)
  %419 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %420 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %419, i32 0, i32 3
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %420, i32 0, i32 18
  %422 = load i8**, i8*** %421, align 8
  %423 = getelementptr inbounds i8*, i8** %422, i64 1
  store i8* %418, i8** %423, align 8
  %424 = call i8* @ramfuc_reg(i32 1110836)
  %425 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %426 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 18
  %428 = load i8**, i8*** %427, align 8
  %429 = getelementptr inbounds i8*, i8** %428, i64 2
  store i8* %424, i8** %429, align 8
  %430 = call i8* @ramfuc_reg(i32 1110840)
  %431 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %432 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %431, i32 0, i32 3
  %433 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %432, i32 0, i32 18
  %434 = load i8**, i8*** %433, align 8
  %435 = getelementptr inbounds i8*, i8** %434, i64 3
  store i8* %430, i8** %435, align 8
  %436 = call i8* @ramfuc_reg(i32 1110844)
  %437 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %438 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %437, i32 0, i32 3
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 18
  %440 = load i8**, i8*** %439, align 8
  %441 = getelementptr inbounds i8*, i8** %440, i64 4
  store i8* %436, i8** %441, align 8
  %442 = call i8* @ramfuc_reg(i32 1110848)
  %443 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %444 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %443, i32 0, i32 3
  %445 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %444, i32 0, i32 18
  %446 = load i8**, i8*** %445, align 8
  %447 = getelementptr inbounds i8*, i8** %446, i64 5
  store i8* %442, i8** %447, align 8
  %448 = call i8* @ramfuc_reg(i32 1110852)
  %449 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %450 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %449, i32 0, i32 3
  %451 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %450, i32 0, i32 18
  %452 = load i8**, i8*** %451, align 8
  %453 = getelementptr inbounds i8*, i8** %452, i64 6
  store i8* %448, i8** %453, align 8
  %454 = call i8* @ramfuc_reg(i32 1110856)
  %455 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %456 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %455, i32 0, i32 3
  %457 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %456, i32 0, i32 18
  %458 = load i8**, i8*** %457, align 8
  %459 = getelementptr inbounds i8*, i8** %458, i64 7
  store i8* %454, i8** %459, align 8
  %460 = call i8* @ramfuc_reg(i32 1110868)
  %461 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %462 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %461, i32 0, i32 3
  %463 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %462, i32 0, i32 18
  %464 = load i8**, i8*** %463, align 8
  %465 = getelementptr inbounds i8*, i8** %464, i64 8
  store i8* %460, i8** %465, align 8
  %466 = call i8* @ramfuc_reg(i32 1110860)
  %467 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %468 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %467, i32 0, i32 3
  %469 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %468, i32 0, i32 18
  %470 = load i8**, i8*** %469, align 8
  %471 = getelementptr inbounds i8*, i8** %470, i64 15
  store i8* %466, i8** %471, align 8
  br label %492

472:                                              ; preds = %230
  %473 = call i8* @ramfuc_reg(i32 1110784)
  %474 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %475 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %474, i32 0, i32 3
  %476 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %475, i32 0, i32 18
  %477 = load i8**, i8*** %476, align 8
  %478 = getelementptr inbounds i8*, i8** %477, i64 0
  store i8* %473, i8** %478, align 8
  %479 = call i8* @ramfuc_reg(i32 1110788)
  %480 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %481 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %480, i32 0, i32 3
  %482 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %481, i32 0, i32 18
  %483 = load i8**, i8*** %482, align 8
  %484 = getelementptr inbounds i8*, i8** %483, i64 1
  store i8* %479, i8** %484, align 8
  %485 = call i8* @ramfuc_reg(i32 1110816)
  %486 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %487 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %486, i32 0, i32 3
  %488 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %487, i32 0, i32 18
  %489 = load i8**, i8*** %488, align 8
  %490 = getelementptr inbounds i8*, i8** %489, i64 2
  store i8* %485, i8** %490, align 8
  br label %492

491:                                              ; preds = %230
  br label %492

492:                                              ; preds = %491, %472, %411
  %493 = call i8* @ramfuc_reg(i32 6471680)
  %494 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %495 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %494, i32 0, i32 3
  %496 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %495, i32 0, i32 17
  store i8* %493, i8** %496, align 8
  %497 = call i8* @ramfuc_reg(i32 1110528)
  %498 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %499 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %498, i32 0, i32 3
  %500 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %499, i32 0, i32 16
  store i8* %497, i8** %500, align 8
  %501 = call i8* @ramfuc_reg(i32 1110544)
  %502 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %503 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %503, i32 0, i32 15
  store i8* %501, i8** %504, align 8
  %505 = call i8* @ramfuc_reg(i32 1110800)
  %506 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %507 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %506, i32 0, i32 3
  %508 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %507, i32 0, i32 14
  store i8* %505, i8** %508, align 8
  %509 = call i8* @ramfuc_reg(i32 1110804)
  %510 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %511 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %510, i32 0, i32 3
  %512 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %511, i32 0, i32 13
  store i8* %509, i8** %512, align 8
  %513 = call i8* @ramfuc_reg(i32 1110808)
  %514 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %515 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %514, i32 0, i32 3
  %516 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %515, i32 0, i32 12
  store i8* %513, i8** %516, align 8
  %517 = call i8* @ramfuc_reg(i32 1110160)
  %518 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %519 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %518, i32 0, i32 3
  %520 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %519, i32 0, i32 11
  store i8* %517, i8** %520, align 8
  %521 = call i8* @ramfuc_reg(i32 1111708)
  %522 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %523 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %522, i32 0, i32 3
  %524 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %523, i32 0, i32 10
  store i8* %521, i8** %524, align 8
  %525 = call i8* @ramfuc_reg(i32 1112100)
  %526 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %527 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %526, i32 0, i32 3
  %528 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %527, i32 0, i32 9
  store i8* %525, i8** %528, align 8
  %529 = call i8* @ramfuc_reg(i32 1274864)
  %530 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %531 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %530, i32 0, i32 3
  %532 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %531, i32 0, i32 8
  store i8* %529, i8** %532, align 8
  %533 = call i8* @ramfuc_reg(i32 1274868)
  %534 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %535 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %534, i32 0, i32 3
  %536 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %535, i32 0, i32 7
  store i8* %533, i8** %536, align 8
  %537 = call i8* @ramfuc_reg(i32 1274656)
  %538 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %539 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %538, i32 0, i32 3
  %540 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %539, i32 0, i32 6
  store i8* %537, i8** %540, align 8
  %541 = call i8* @ramfuc_reg(i32 1111644)
  %542 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %543 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %542, i32 0, i32 3
  %544 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %543, i32 0, i32 5
  store i8* %541, i8** %544, align 8
  %545 = call i8* @ramfuc_reg(i32 1111740)
  %546 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %547 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %546, i32 0, i32 3
  %548 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %547, i32 0, i32 4
  store i8* %545, i8** %548, align 8
  %549 = call i8* @ramfuc_reg(i32 1050384)
  %550 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %551 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %550, i32 0, i32 3
  %552 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %551, i32 0, i32 3
  store i8* %549, i8** %552, align 8
  %553 = call i8* @ramfuc_reg(i32 1050448)
  %554 = load %struct.gk104_ram*, %struct.gk104_ram** %12, align 8
  %555 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %554, i32 0, i32 3
  %556 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %555, i32 0, i32 2
  store i8* %553, i8** %556, align 8
  store i32 0, i32* %4, align 4
  br label %557

557:                                              ; preds = %492, %148, %136, %120, %45, %31
  %558 = load i32, i32* %4, align 4
  ret i32 %558
}

declare dso_local i32 @nvbios_ramcfg_index(%struct.nvkm_subdev*) #1

declare dso_local %struct.gk104_ram* @kzalloc(i32, i32) #1

declare dso_local i32 @gf100_ram_ctor(%struct.nvkm_ram_func*, %struct.nvkm_fb*, %struct.nvkm_ram*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @gk104_ram_ctor_data(%struct.gk104_ram*, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nvkm_bios*, i32, i32*) #1

declare dso_local i32 @nvkm_gpio_find(i32, i32, i32, i32, %struct.dcb_gpio_func*) #1

declare dso_local i8* @ramfuc_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
