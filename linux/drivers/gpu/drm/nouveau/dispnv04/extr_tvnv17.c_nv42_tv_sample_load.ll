; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv42_tv_sample_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv42_tv_sample_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nvkm_gpio = type { i32 }

@NV_PRAMDAC_DACCLK = common dso_local global i32 0, align 4
@DCB_GPIO_TVDAC1 = common dso_local global i32 0, align 4
@DCB_GPIO_TVDAC0 = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_HTOTAL = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_HSYNC_START = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_HSYNC_END = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL = common dso_local global i32 0, align 4
@NV_PRAMDAC_TEST_CONTROL = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_DISPEN_POS = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_WIDTH_12 = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_READ_PROG = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_HSYNC_POS = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_VSYNC_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @nv42_tv_sample_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv42_tv_sample_load(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nvkm_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %3, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %24)
  store %struct.nouveau_drm* %25, %struct.nouveau_drm** %4, align 8
  %26 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %27 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call %struct.nvkm_gpio* @nvxx_gpio(i32* %28)
  store %struct.nvkm_gpio* %29, %struct.nvkm_gpio** %5, align 8
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %31 = call i32 @nv04_dac_output_offset(%struct.drm_encoder* %30)
  store i32 %31, i32* %7, align 4
  store i32 0, i32* %19, align 4
  store i32 136555650, i32* %6, align 4
  %32 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %33 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %39 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = load i32, i32* @NV_PRAMDAC_DACCLK, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 @NVReadRAMDAC(%struct.drm_device* %43, i32 0, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, 256
  %50 = ashr i32 %49, 8
  store i32 %50, i32* %20, align 4
  %51 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %52 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %53 = call i32 @nvkm_gpio_get(%struct.nvkm_gpio* %51, i32 0, i32 %52, i32 255)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %55 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %56 = call i32 @nvkm_gpio_get(%struct.nvkm_gpio* %54, i32 0, i32 %55, i32 255)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* @NV_PRAMDAC_FP_HTOTAL, align 4
  %60 = call i32 @NVReadRAMDAC(%struct.drm_device* %57, i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_START, align 4
  %64 = call i32 @NVReadRAMDAC(%struct.drm_device* %61, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_END, align 4
  %68 = call i32 @NVReadRAMDAC(%struct.drm_device* %65, i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL, align 4
  %72 = call i32 @NVReadRAMDAC(%struct.drm_device* %69, i32 %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %74 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @NVReadRAMDAC(%struct.drm_device* %73, i32 0, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @NVReadRAMDAC(%struct.drm_device* %78, i32 %79, i32 6818844)
  store i32 %80, i32* %17, align 4
  %81 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @NVReadRAMDAC(%struct.drm_device* %81, i32 %82, i32 6818836)
  store i32 %83, i32* %16, align 4
  %84 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %85 = load i32, i32* %20, align 4
  %86 = call i32 @NVReadRAMDAC(%struct.drm_device* %84, i32 %85, i32 6818924)
  store i32 %86, i32* %18, align 4
  %87 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %88 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %89 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %87, i32 0, i32 %88, i32 255, i32 1)
  %90 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %91 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %92 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %90, i32 0, i32 %91, i32 255, i32 1)
  %93 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* @NV_PRAMDAC_FP_HTOTAL, align 4
  %96 = call i32 @NVWriteRAMDAC(%struct.drm_device* %93, i32 %94, i32 %95, i32 1343)
  %97 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_START, align 4
  %100 = call i32 @NVWriteRAMDAC(%struct.drm_device* %97, i32 %98, i32 %99, i32 1047)
  %101 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_END, align 4
  %104 = call i32 @NVWriteRAMDAC(%struct.drm_device* %101, i32 %102, i32 %103, i32 1183)
  %105 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL, align 4
  %108 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_DISPEN_POS, align 4
  %109 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_WIDTH_12, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_READ_PROG, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_HSYNC_POS, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_VSYNC_POS, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @NVWriteRAMDAC(%struct.drm_device* %105, i32 %106, i32 %107, i32 %116)
  %118 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %119 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @NVWriteRAMDAC(%struct.drm_device* %118, i32 0, i32 %121, i32 0)
  %123 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %124 = load i32, i32* @NV_PRAMDAC_DACCLK, align 4
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %15, align 4
  %128 = and i32 %127, -256
  %129 = or i32 %128, 34
  %130 = call i32 @NVWriteRAMDAC(%struct.drm_device* %123, i32 0, i32 %126, i32 %129)
  %131 = call i32 @msleep(i32 1)
  %132 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %133 = load i32, i32* @NV_PRAMDAC_DACCLK, align 4
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* %15, align 4
  %137 = and i32 %136, -256
  %138 = or i32 %137, 33
  %139 = call i32 @NVWriteRAMDAC(%struct.drm_device* %132, i32 0, i32 %135, i32 %138)
  %140 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @NVWriteRAMDAC(%struct.drm_device* %140, i32 %141, i32 6818844, i32 1048576)
  %143 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %144 = load i32, i32* %20, align 4
  %145 = call i32 @NVWriteRAMDAC(%struct.drm_device* %143, i32 %144, i32 6818836, i32 262144)
  %146 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %6, align 4
  %149 = ashr i32 %148, 10
  %150 = and i32 %149, 1023
  %151 = call i32 @NVWriteRAMDAC(%struct.drm_device* %146, i32 %147, i32 6818924, i32 %150)
  %152 = call i32 @msleep(i32 20)
  %153 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %154 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %154, %155
  %157 = call i32 @NVReadRAMDAC(%struct.drm_device* %153, i32 0, i32 %156)
  %158 = and i32 %157, 1073741824
  %159 = load i32, i32* %19, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %19, align 4
  %161 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %6, align 4
  %164 = and i32 %163, 1023
  %165 = call i32 @NVWriteRAMDAC(%struct.drm_device* %161, i32 %162, i32 6818924, i32 %164)
  %166 = call i32 @msleep(i32 20)
  %167 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %168 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %168, %169
  %171 = call i32 @NVReadRAMDAC(%struct.drm_device* %167, i32 0, i32 %170)
  %172 = and i32 %171, -1610612736
  %173 = load i32, i32* %19, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %19, align 4
  %175 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @NVWriteRAMDAC(%struct.drm_device* %175, i32 %176, i32 6818844, i32 %177)
  %179 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @NVWriteRAMDAC(%struct.drm_device* %179, i32 %180, i32 6818836, i32 %181)
  %183 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %18, align 4
  %186 = call i32 @NVWriteRAMDAC(%struct.drm_device* %183, i32 %184, i32 6818924, i32 %185)
  %187 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %188 = load i32, i32* @NV_PRAMDAC_DACCLK, align 4
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %15, align 4
  %192 = call i32 @NVWriteRAMDAC(%struct.drm_device* %187, i32 0, i32 %190, i32 %191)
  %193 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %194 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @NVWriteRAMDAC(%struct.drm_device* %193, i32 0, i32 %196, i32 %197)
  %199 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @NVWriteRAMDAC(%struct.drm_device* %199, i32 %200, i32 %201, i32 %202)
  %204 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_END, align 4
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @NVWriteRAMDAC(%struct.drm_device* %204, i32 %205, i32 %206, i32 %207)
  %209 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_START, align 4
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @NVWriteRAMDAC(%struct.drm_device* %209, i32 %210, i32 %211, i32 %212)
  %214 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* @NV_PRAMDAC_FP_HTOTAL, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @NVWriteRAMDAC(%struct.drm_device* %214, i32 %215, i32 %216, i32 %217)
  %219 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %220 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %219, i32 0, i32 %220, i32 255, i32 %221)
  %223 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %224 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %223, i32 0, i32 %224, i32 255, i32 %225)
  %227 = load i32, i32* %19, align 4
  ret i32 %227
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_gpio* @nvxx_gpio(i32*) #1

declare dso_local i32 @nv04_dac_output_offset(%struct.drm_encoder*) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nvkm_gpio_get(%struct.nvkm_gpio*, i32, i32, i32) #1

declare dso_local i32 @nvkm_gpio_set(%struct.nvkm_gpio*, i32, i32, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
