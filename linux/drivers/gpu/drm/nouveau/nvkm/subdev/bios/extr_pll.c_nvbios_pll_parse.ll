; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pll.c_nvbios_pll_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pll.c_nvbios_pll_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32, %struct.TYPE_6__, %struct.nvkm_subdev }
%struct.TYPE_6__ = type { i32 }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvbios_pll = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PLL_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"unknown pll limits version 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_pll_parse(%struct.nvkm_bios* %0, i32 %1, %struct.nvbios_pll* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvbios_pll*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvbios_pll* %2, %struct.nvbios_pll** %7, align 8
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %15, i32 0, i32 2
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %8, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %9, align 8
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PLL_MAX, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @pll_map_reg(%struct.nvkm_bios* %26, i32 %27, i32* %6, i32* %10, i32* %11)
  store i32 %28, i32* %13, align 4
  br label %33

29:                                               ; preds = %3
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @pll_map_type(%struct.nvkm_bios* %30, i32 %31, i32* %12, i32* %10, i32* %11)
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %829

42:                                               ; preds = %36, %33
  %43 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %44 = call i32 @memset(%struct.nvbios_pll* %43, i32 0, i32 104)
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %47 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %50 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  switch i32 %51, label %656 [
    i32 0, label %52
    i32 16, label %53
    i32 17, label %53
    i32 32, label %160
    i32 33, label %160
    i32 48, label %327
    i32 64, label %482
    i32 80, label %571
  ]

52:                                               ; preds = %42
  br label %662

53:                                               ; preds = %42, %42
  %54 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 0
  %57 = call i8* @nvbios_rd32(%struct.nvkm_bios* %54, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %60 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 4
  %65 = call i8* @nvbios_rd32(%struct.nvkm_bios* %62, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %68 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 8
  %73 = call i8* @nvbios_rd32(%struct.nvkm_bios* %70, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %76 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 12
  %81 = call i8* @nvbios_rd32(%struct.nvkm_bios* %78, i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %84 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 16
  %89 = call i8* @nvbios_rd32(%struct.nvkm_bios* %86, i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %92 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 20
  %97 = call i8* @nvbios_rd32(%struct.nvkm_bios* %94, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %100 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  %102 = load i8*, i8** @INT_MAX, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %105 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  %107 = load i8*, i8** @INT_MAX, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %110 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 4
  %112 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %113 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %112, i32 0, i32 2
  store i32 7, i32* %113, align 8
  %114 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %115 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %114, i32 0, i32 3
  store i32 6, i32* %115, align 4
  %116 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %117 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %124 [
    i32 54, label %120
  ]

120:                                              ; preds = %53
  %121 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %122 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 4
  store i32 5, i32* %123, align 4
  br label %128

124:                                              ; preds = %53
  %125 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %126 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %120
  %129 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %130 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 5
  store i32 255, i32* %131, align 4
  %132 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %133 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 6
  store i32 1, i32* %134, align 4
  %135 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %136 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 7
  store i32 13, i32* %137, align 4
  %138 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %139 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 4
  store i32 4, i32* %140, align 8
  %141 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %142 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %149 [
    i32 48, label %145
    i32 53, label %145
  ]

145:                                              ; preds = %128, %128
  %146 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %147 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %146, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  store i32 31, i32* %148, align 4
  br label %153

149:                                              ; preds = %128
  %150 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %151 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %150, i32 0, i32 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  store i32 40, i32* %152, align 4
  br label %153

153:                                              ; preds = %149, %145
  %154 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %155 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %154, i32 0, i32 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 6
  store i32 1, i32* %156, align 8
  %157 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %158 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 7
  store i32 4, i32* %159, align 4
  br label %662

160:                                              ; preds = %42, %42
  %161 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 4
  %164 = call i32 @nvbios_rd16(%struct.nvkm_bios* %161, i32 %163)
  %165 = mul nsw i32 %164, 1000
  %166 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %167 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 4
  %169 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 6
  %172 = call i32 @nvbios_rd16(%struct.nvkm_bios* %169, i32 %171)
  %173 = mul nsw i32 %172, 1000
  %174 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %175 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  %177 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 8
  %180 = call i32 @nvbios_rd16(%struct.nvkm_bios* %177, i32 %179)
  %181 = mul nsw i32 %180, 1000
  %182 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %183 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %182, i32 0, i32 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 10
  %188 = call i32 @nvbios_rd16(%struct.nvkm_bios* %185, i32 %187)
  %189 = mul nsw i32 %188, 1000
  %190 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %191 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %190, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  store i32 %189, i32* %192, align 4
  %193 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 12
  %196 = call i32 @nvbios_rd16(%struct.nvkm_bios* %193, i32 %195)
  %197 = mul nsw i32 %196, 1000
  %198 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %199 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  store i32 %197, i32* %200, align 4
  %201 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 14
  %204 = call i32 @nvbios_rd16(%struct.nvkm_bios* %201, i32 %203)
  %205 = mul nsw i32 %204, 1000
  %206 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %207 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %206, i32 0, i32 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  store i32 %205, i32* %208, align 8
  %209 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 16
  %212 = call i32 @nvbios_rd16(%struct.nvkm_bios* %209, i32 %211)
  %213 = mul nsw i32 %212, 1000
  %214 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %215 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 3
  store i32 %213, i32* %216, align 4
  %217 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 18
  %220 = call i32 @nvbios_rd16(%struct.nvkm_bios* %217, i32 %219)
  %221 = mul nsw i32 %220, 1000
  %222 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %223 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %222, i32 0, i32 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 3
  store i32 %221, i32* %224, align 4
  %225 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 20
  %228 = call i8* @nvbios_rd08(%struct.nvkm_bios* %225, i32 %227)
  %229 = ptrtoint i8* %228 to i32
  %230 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %231 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 4
  store i32 %229, i32* %232, align 4
  %233 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 21
  %236 = call i8* @nvbios_rd08(%struct.nvkm_bios* %233, i32 %235)
  %237 = ptrtoint i8* %236 to i32
  %238 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %239 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 5
  store i32 %237, i32* %240, align 4
  %241 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, 22
  %244 = call i8* @nvbios_rd08(%struct.nvkm_bios* %241, i32 %243)
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %247 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 6
  store i32 %245, i32* %248, align 4
  %249 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, 23
  %252 = call i8* @nvbios_rd08(%struct.nvkm_bios* %249, i32 %251)
  %253 = ptrtoint i8* %252 to i32
  %254 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %255 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 7
  store i32 %253, i32* %256, align 4
  %257 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, 24
  %260 = call i8* @nvbios_rd08(%struct.nvkm_bios* %257, i32 %259)
  %261 = ptrtoint i8* %260 to i32
  %262 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %263 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %262, i32 0, i32 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 4
  store i32 %261, i32* %264, align 8
  %265 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %266, 25
  %268 = call i8* @nvbios_rd08(%struct.nvkm_bios* %265, i32 %267)
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %271 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %270, i32 0, i32 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 5
  store i32 %269, i32* %272, align 4
  %273 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, 26
  %276 = call i8* @nvbios_rd08(%struct.nvkm_bios* %273, i32 %275)
  %277 = ptrtoint i8* %276 to i32
  %278 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %279 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %278, i32 0, i32 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 6
  store i32 %277, i32* %280, align 8
  %281 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %282 = load i32, i32* %13, align 4
  %283 = add nsw i32 %282, 27
  %284 = call i8* @nvbios_rd08(%struct.nvkm_bios* %281, i32 %283)
  %285 = ptrtoint i8* %284 to i32
  %286 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %287 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %286, i32 0, i32 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 7
  store i32 %285, i32* %288, align 4
  %289 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %290, 29
  %292 = call i8* @nvbios_rd08(%struct.nvkm_bios* %289, i32 %291)
  %293 = ptrtoint i8* %292 to i32
  %294 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %295 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  %296 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %297 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %300 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 4
  %301 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %302 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp slt i32 %304, 96
  br i1 %305, label %306, label %309

306:                                              ; preds = %160
  %307 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %308 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %307, i32 0, i32 3
  store i32 6, i32* %308, align 4
  br label %309

309:                                              ; preds = %306, %160
  %310 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %311 = load i32, i32* %13, align 4
  %312 = add nsw i32 %311, 30
  %313 = call i8* @nvbios_rd08(%struct.nvkm_bios* %310, i32 %312)
  %314 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %315 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %314, i32 0, i32 7
  store i8* %313, i8** %315, align 8
  %316 = load i32, i32* %11, align 4
  %317 = icmp sgt i32 %316, 34
  br i1 %317, label %318, label %326

318:                                              ; preds = %309
  %319 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, 31
  %322 = call i8* @nvbios_rd32(%struct.nvkm_bios* %319, i32 %321)
  %323 = ptrtoint i8* %322 to i32
  %324 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %325 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 8
  br label %326

326:                                              ; preds = %318, %309
  br label %662

327:                                              ; preds = %42
  %328 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %329 = load i32, i32* %13, align 4
  %330 = add nsw i32 %329, 1
  %331 = call i32 @nvbios_rd16(%struct.nvkm_bios* %328, i32 %330)
  store i32 %331, i32* %13, align 4
  %332 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 0
  %335 = call i32 @nvbios_rd16(%struct.nvkm_bios* %332, i32 %334)
  %336 = mul nsw i32 %335, 1000
  %337 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %338 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %337, i32 0, i32 5
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  store i32 %336, i32* %339, align 4
  %340 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %341 = load i32, i32* %13, align 4
  %342 = add nsw i32 %341, 2
  %343 = call i32 @nvbios_rd16(%struct.nvkm_bios* %340, i32 %342)
  %344 = mul nsw i32 %343, 1000
  %345 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %346 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %345, i32 0, i32 5
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 1
  store i32 %344, i32* %347, align 4
  %348 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %349 = load i32, i32* %13, align 4
  %350 = add nsw i32 %349, 4
  %351 = call i32 @nvbios_rd16(%struct.nvkm_bios* %348, i32 %350)
  %352 = mul nsw i32 %351, 1000
  %353 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %354 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %353, i32 0, i32 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 0
  store i32 %352, i32* %355, align 8
  %356 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %357 = load i32, i32* %13, align 4
  %358 = add nsw i32 %357, 6
  %359 = call i32 @nvbios_rd16(%struct.nvkm_bios* %356, i32 %358)
  %360 = mul nsw i32 %359, 1000
  %361 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %362 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %361, i32 0, i32 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 1
  store i32 %360, i32* %363, align 4
  %364 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %365 = load i32, i32* %13, align 4
  %366 = add nsw i32 %365, 8
  %367 = call i32 @nvbios_rd16(%struct.nvkm_bios* %364, i32 %366)
  %368 = mul nsw i32 %367, 1000
  %369 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %370 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %369, i32 0, i32 5
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 2
  store i32 %368, i32* %371, align 4
  %372 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %373 = load i32, i32* %13, align 4
  %374 = add nsw i32 %373, 10
  %375 = call i32 @nvbios_rd16(%struct.nvkm_bios* %372, i32 %374)
  %376 = mul nsw i32 %375, 1000
  %377 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %378 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %377, i32 0, i32 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 2
  store i32 %376, i32* %379, align 8
  %380 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %381 = load i32, i32* %13, align 4
  %382 = add nsw i32 %381, 12
  %383 = call i32 @nvbios_rd16(%struct.nvkm_bios* %380, i32 %382)
  %384 = mul nsw i32 %383, 1000
  %385 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %386 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %385, i32 0, i32 5
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 3
  store i32 %384, i32* %387, align 4
  %388 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %389 = load i32, i32* %13, align 4
  %390 = add nsw i32 %389, 14
  %391 = call i32 @nvbios_rd16(%struct.nvkm_bios* %388, i32 %390)
  %392 = mul nsw i32 %391, 1000
  %393 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %394 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %393, i32 0, i32 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 3
  store i32 %392, i32* %395, align 4
  %396 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %397 = load i32, i32* %13, align 4
  %398 = add nsw i32 %397, 16
  %399 = call i8* @nvbios_rd08(%struct.nvkm_bios* %396, i32 %398)
  %400 = ptrtoint i8* %399 to i32
  %401 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %402 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 4
  store i32 %400, i32* %403, align 4
  %404 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %405 = load i32, i32* %13, align 4
  %406 = add nsw i32 %405, 17
  %407 = call i8* @nvbios_rd08(%struct.nvkm_bios* %404, i32 %406)
  %408 = ptrtoint i8* %407 to i32
  %409 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %410 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 5
  store i32 %408, i32* %411, align 4
  %412 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %413 = load i32, i32* %13, align 4
  %414 = add nsw i32 %413, 18
  %415 = call i8* @nvbios_rd08(%struct.nvkm_bios* %412, i32 %414)
  %416 = ptrtoint i8* %415 to i32
  %417 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %418 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %417, i32 0, i32 5
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 6
  store i32 %416, i32* %419, align 4
  %420 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %421 = load i32, i32* %13, align 4
  %422 = add nsw i32 %421, 19
  %423 = call i8* @nvbios_rd08(%struct.nvkm_bios* %420, i32 %422)
  %424 = ptrtoint i8* %423 to i32
  %425 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %426 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %425, i32 0, i32 5
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 7
  store i32 %424, i32* %427, align 4
  %428 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %429 = load i32, i32* %13, align 4
  %430 = add nsw i32 %429, 20
  %431 = call i8* @nvbios_rd08(%struct.nvkm_bios* %428, i32 %430)
  %432 = ptrtoint i8* %431 to i32
  %433 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %434 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %433, i32 0, i32 8
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 4
  store i32 %432, i32* %435, align 8
  %436 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %437 = load i32, i32* %13, align 4
  %438 = add nsw i32 %437, 21
  %439 = call i8* @nvbios_rd08(%struct.nvkm_bios* %436, i32 %438)
  %440 = ptrtoint i8* %439 to i32
  %441 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %442 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %441, i32 0, i32 8
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i32 0, i32 5
  store i32 %440, i32* %443, align 4
  %444 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %445 = load i32, i32* %13, align 4
  %446 = add nsw i32 %445, 22
  %447 = call i8* @nvbios_rd08(%struct.nvkm_bios* %444, i32 %446)
  %448 = ptrtoint i8* %447 to i32
  %449 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %450 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %449, i32 0, i32 8
  %451 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %450, i32 0, i32 6
  store i32 %448, i32* %451, align 8
  %452 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %453 = load i32, i32* %13, align 4
  %454 = add nsw i32 %453, 23
  %455 = call i8* @nvbios_rd08(%struct.nvkm_bios* %452, i32 %454)
  %456 = ptrtoint i8* %455 to i32
  %457 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %458 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %457, i32 0, i32 8
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 7
  store i32 %456, i32* %459, align 4
  %460 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %461 = load i32, i32* %13, align 4
  %462 = add nsw i32 %461, 25
  %463 = call i8* @nvbios_rd08(%struct.nvkm_bios* %460, i32 %462)
  %464 = ptrtoint i8* %463 to i32
  %465 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %466 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %465, i32 0, i32 2
  store i32 %464, i32* %466, align 8
  %467 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %468 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %467, i32 0, i32 3
  store i32 %464, i32* %468, align 4
  %469 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %470 = load i32, i32* %13, align 4
  %471 = add nsw i32 %470, 27
  %472 = call i8* @nvbios_rd08(%struct.nvkm_bios* %469, i32 %471)
  %473 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %474 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %473, i32 0, i32 7
  store i8* %472, i8** %474, align 8
  %475 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %476 = load i32, i32* %13, align 4
  %477 = add nsw i32 %476, 28
  %478 = call i8* @nvbios_rd32(%struct.nvkm_bios* %475, i32 %477)
  %479 = ptrtoint i8* %478 to i32
  %480 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %481 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %480, i32 0, i32 4
  store i32 %479, i32* %481, align 8
  br label %662

482:                                              ; preds = %42
  %483 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %484 = load i32, i32* %13, align 4
  %485 = add nsw i32 %484, 9
  %486 = call i32 @nvbios_rd16(%struct.nvkm_bios* %483, i32 %485)
  %487 = mul nsw i32 %486, 1000
  %488 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %489 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %488, i32 0, i32 4
  store i32 %487, i32* %489, align 8
  %490 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %491 = load i32, i32* %13, align 4
  %492 = add nsw i32 %491, 1
  %493 = call i32 @nvbios_rd16(%struct.nvkm_bios* %490, i32 %492)
  store i32 %493, i32* %13, align 4
  %494 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %495 = load i32, i32* %13, align 4
  %496 = add nsw i32 %495, 0
  %497 = call i32 @nvbios_rd16(%struct.nvkm_bios* %494, i32 %496)
  %498 = mul nsw i32 %497, 1000
  %499 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %500 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %499, i32 0, i32 5
  %501 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %500, i32 0, i32 0
  store i32 %498, i32* %501, align 4
  %502 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %503 = load i32, i32* %13, align 4
  %504 = add nsw i32 %503, 2
  %505 = call i32 @nvbios_rd16(%struct.nvkm_bios* %502, i32 %504)
  %506 = mul nsw i32 %505, 1000
  %507 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %508 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %507, i32 0, i32 5
  %509 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %508, i32 0, i32 1
  store i32 %506, i32* %509, align 4
  %510 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %511 = load i32, i32* %13, align 4
  %512 = add nsw i32 %511, 4
  %513 = call i32 @nvbios_rd16(%struct.nvkm_bios* %510, i32 %512)
  %514 = mul nsw i32 %513, 1000
  %515 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %516 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %515, i32 0, i32 5
  %517 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %516, i32 0, i32 2
  store i32 %514, i32* %517, align 4
  %518 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %519 = load i32, i32* %13, align 4
  %520 = add nsw i32 %519, 6
  %521 = call i32 @nvbios_rd16(%struct.nvkm_bios* %518, i32 %520)
  %522 = mul nsw i32 %521, 1000
  %523 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %524 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %523, i32 0, i32 5
  %525 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %524, i32 0, i32 3
  store i32 %522, i32* %525, align 4
  %526 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %527 = load i32, i32* %13, align 4
  %528 = add nsw i32 %527, 8
  %529 = call i8* @nvbios_rd08(%struct.nvkm_bios* %526, i32 %528)
  %530 = ptrtoint i8* %529 to i32
  %531 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %532 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %531, i32 0, i32 5
  %533 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %532, i32 0, i32 6
  store i32 %530, i32* %533, align 4
  %534 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %535 = load i32, i32* %13, align 4
  %536 = add nsw i32 %535, 9
  %537 = call i8* @nvbios_rd08(%struct.nvkm_bios* %534, i32 %536)
  %538 = ptrtoint i8* %537 to i32
  %539 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %540 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %539, i32 0, i32 5
  %541 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %540, i32 0, i32 7
  store i32 %538, i32* %541, align 4
  %542 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %543 = load i32, i32* %13, align 4
  %544 = add nsw i32 %543, 10
  %545 = call i8* @nvbios_rd08(%struct.nvkm_bios* %542, i32 %544)
  %546 = ptrtoint i8* %545 to i32
  %547 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %548 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %547, i32 0, i32 5
  %549 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %548, i32 0, i32 4
  store i32 %546, i32* %549, align 4
  %550 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %551 = load i32, i32* %13, align 4
  %552 = add nsw i32 %551, 11
  %553 = call i8* @nvbios_rd08(%struct.nvkm_bios* %550, i32 %552)
  %554 = ptrtoint i8* %553 to i32
  %555 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %556 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %555, i32 0, i32 5
  %557 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %556, i32 0, i32 5
  store i32 %554, i32* %557, align 4
  %558 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %559 = load i32, i32* %13, align 4
  %560 = add nsw i32 %559, 12
  %561 = call i8* @nvbios_rd08(%struct.nvkm_bios* %558, i32 %560)
  %562 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %563 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %562, i32 0, i32 6
  store i8* %561, i8** %563, align 8
  %564 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %565 = load i32, i32* %13, align 4
  %566 = add nsw i32 %565, 13
  %567 = call i8* @nvbios_rd08(%struct.nvkm_bios* %564, i32 %566)
  %568 = ptrtoint i8* %567 to i32
  %569 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %570 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %569, i32 0, i32 2
  store i32 %568, i32* %570, align 8
  br label %662

571:                                              ; preds = %42
  %572 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %573 = load i32, i32* %13, align 4
  %574 = add nsw i32 %573, 1
  %575 = call i32 @nvbios_rd16(%struct.nvkm_bios* %572, i32 %574)
  %576 = mul nsw i32 %575, 1000
  %577 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %578 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %577, i32 0, i32 4
  store i32 %576, i32* %578, align 8
  %579 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %580 = load i32, i32* %13, align 4
  %581 = add nsw i32 %580, 5
  %582 = call i32 @nvbios_rd16(%struct.nvkm_bios* %579, i32 %581)
  %583 = mul nsw i32 %582, 1000
  %584 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %585 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %584, i32 0, i32 5
  %586 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %585, i32 0, i32 0
  store i32 %583, i32* %586, align 4
  %587 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %588 = load i32, i32* %13, align 4
  %589 = add nsw i32 %588, 7
  %590 = call i32 @nvbios_rd16(%struct.nvkm_bios* %587, i32 %589)
  %591 = mul nsw i32 %590, 1000
  %592 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %593 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %592, i32 0, i32 5
  %594 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %593, i32 0, i32 1
  store i32 %591, i32* %594, align 4
  %595 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %596 = load i32, i32* %13, align 4
  %597 = add nsw i32 %596, 9
  %598 = call i32 @nvbios_rd16(%struct.nvkm_bios* %595, i32 %597)
  %599 = mul nsw i32 %598, 1000
  %600 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %601 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %600, i32 0, i32 5
  %602 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %601, i32 0, i32 2
  store i32 %599, i32* %602, align 4
  %603 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %604 = load i32, i32* %13, align 4
  %605 = add nsw i32 %604, 11
  %606 = call i32 @nvbios_rd16(%struct.nvkm_bios* %603, i32 %605)
  %607 = mul nsw i32 %606, 1000
  %608 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %609 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %608, i32 0, i32 5
  %610 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %609, i32 0, i32 3
  store i32 %607, i32* %610, align 4
  %611 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %612 = load i32, i32* %13, align 4
  %613 = add nsw i32 %612, 13
  %614 = call i8* @nvbios_rd08(%struct.nvkm_bios* %611, i32 %613)
  %615 = ptrtoint i8* %614 to i32
  %616 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %617 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %616, i32 0, i32 5
  %618 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %617, i32 0, i32 6
  store i32 %615, i32* %618, align 4
  %619 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %620 = load i32, i32* %13, align 4
  %621 = add nsw i32 %620, 14
  %622 = call i8* @nvbios_rd08(%struct.nvkm_bios* %619, i32 %621)
  %623 = ptrtoint i8* %622 to i32
  %624 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %625 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %624, i32 0, i32 5
  %626 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %625, i32 0, i32 7
  store i32 %623, i32* %626, align 4
  %627 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %628 = load i32, i32* %13, align 4
  %629 = add nsw i32 %628, 15
  %630 = call i8* @nvbios_rd08(%struct.nvkm_bios* %627, i32 %629)
  %631 = ptrtoint i8* %630 to i32
  %632 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %633 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %632, i32 0, i32 5
  %634 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %633, i32 0, i32 4
  store i32 %631, i32* %634, align 4
  %635 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %636 = load i32, i32* %13, align 4
  %637 = add nsw i32 %636, 16
  %638 = call i8* @nvbios_rd08(%struct.nvkm_bios* %635, i32 %637)
  %639 = ptrtoint i8* %638 to i32
  %640 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %641 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %640, i32 0, i32 5
  %642 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %641, i32 0, i32 5
  store i32 %639, i32* %642, align 4
  %643 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %644 = load i32, i32* %13, align 4
  %645 = add nsw i32 %644, 17
  %646 = call i8* @nvbios_rd08(%struct.nvkm_bios* %643, i32 %645)
  %647 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %648 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %647, i32 0, i32 6
  store i8* %646, i8** %648, align 8
  %649 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %650 = load i32, i32* %13, align 4
  %651 = add nsw i32 %650, 18
  %652 = call i8* @nvbios_rd08(%struct.nvkm_bios* %649, i32 %651)
  %653 = ptrtoint i8* %652 to i32
  %654 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %655 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %654, i32 0, i32 2
  store i32 %653, i32* %655, align 8
  br label %662

656:                                              ; preds = %42
  %657 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %658 = load i32, i32* %10, align 4
  %659 = call i32 @nvkm_error(%struct.nvkm_subdev* %657, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %658)
  %660 = load i32, i32* @EINVAL, align 4
  %661 = sub nsw i32 0, %660
  store i32 %661, i32* %4, align 4
  br label %829

662:                                              ; preds = %571, %482, %327, %326, %153, %52
  %663 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %664 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %663, i32 0, i32 4
  %665 = load i32, i32* %664, align 8
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %711, label %667

667:                                              ; preds = %662
  %668 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %669 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 4
  %671 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %672 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %671, i32 0, i32 4
  store i32 %670, i32* %672, align 8
  %673 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %674 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %673, i32 0, i32 1
  %675 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 4
  %677 = icmp eq i32 %676, 81
  br i1 %677, label %678, label %710

678:                                              ; preds = %667
  %679 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %680 = call i32 @nvkm_rd32(%struct.nvkm_device* %679, i32 6817060)
  store i32 %680, i32* %14, align 4
  %681 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %682 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %681, i32 0, i32 1
  %683 = load i32, i32* %682, align 4
  %684 = icmp eq i32 %683, 6817032
  br i1 %684, label %685, label %689

685:                                              ; preds = %678
  %686 = load i32, i32* %14, align 4
  %687 = and i32 %686, 32
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %698, label %689

689:                                              ; preds = %685, %678
  %690 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %691 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %690, i32 0, i32 1
  %692 = load i32, i32* %691, align 4
  %693 = icmp eq i32 %692, 6817056
  br i1 %693, label %694, label %709

694:                                              ; preds = %689
  %695 = load i32, i32* %14, align 4
  %696 = and i32 %695, 128
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %709

698:                                              ; preds = %694, %685
  %699 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %700 = call i32 @nvkm_rdvgac(%struct.nvkm_device* %699, i32 0, i32 39)
  %701 = icmp slt i32 %700, 163
  br i1 %701, label %702, label %705

702:                                              ; preds = %698
  %703 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %704 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %703, i32 0, i32 4
  store i32 200000, i32* %704, align 8
  br label %708

705:                                              ; preds = %698
  %706 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %707 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %706, i32 0, i32 4
  store i32 25000, i32* %707, align 8
  br label %708

708:                                              ; preds = %705, %702
  br label %709

709:                                              ; preds = %708, %694, %689
  br label %710

710:                                              ; preds = %709, %667
  br label %711

711:                                              ; preds = %710, %662
  %712 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %713 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %712, i32 0, i32 5
  %714 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %713, i32 0, i32 1
  %715 = load i32, i32* %714, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %828, label %717

717:                                              ; preds = %711
  %718 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %719 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %720 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %719, i32 0, i32 0
  %721 = load i32, i32* %720, align 8
  %722 = add nsw i32 %721, 67
  %723 = call i8* @nvbios_rd32(%struct.nvkm_bios* %718, i32 %722)
  %724 = ptrtoint i8* %723 to i32
  %725 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %726 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %725, i32 0, i32 5
  %727 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %726, i32 0, i32 1
  store i32 %724, i32* %727, align 4
  %728 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %729 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %730 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %729, i32 0, i32 0
  %731 = load i32, i32* %730, align 8
  %732 = add nsw i32 %731, 71
  %733 = call i8* @nvbios_rd32(%struct.nvkm_bios* %728, i32 %732)
  %734 = ptrtoint i8* %733 to i32
  %735 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %736 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %735, i32 0, i32 5
  %737 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %736, i32 0, i32 0
  store i32 %734, i32* %737, align 4
  %738 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %739 = call i32 @bmp_version(%struct.nvkm_bios* %738)
  %740 = icmp slt i32 %739, 1286
  br i1 %740, label %741, label %748

741:                                              ; preds = %717
  %742 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %743 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %742, i32 0, i32 5
  %744 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %743, i32 0, i32 1
  store i32 256000, i32* %744, align 4
  %745 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %746 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %745, i32 0, i32 5
  %747 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %746, i32 0, i32 0
  store i32 128000, i32* %747, align 4
  br label %748

748:                                              ; preds = %741, %717
  %749 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %750 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %749, i32 0, i32 5
  %751 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %750, i32 0, i32 2
  store i32 0, i32* %751, align 4
  %752 = load i8*, i8** @INT_MAX, align 8
  %753 = ptrtoint i8* %752 to i32
  %754 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %755 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %754, i32 0, i32 5
  %756 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %755, i32 0, i32 3
  store i32 %753, i32* %756, align 4
  %757 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %758 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %757, i32 0, i32 5
  %759 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %758, i32 0, i32 4
  store i32 1, i32* %759, align 4
  %760 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %761 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %760, i32 0, i32 5
  %762 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %761, i32 0, i32 5
  store i32 255, i32* %762, align 4
  %763 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %764 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %763, i32 0, i32 5
  %765 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %764, i32 0, i32 6
  store i32 1, i32* %765, align 4
  %766 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %767 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %766, i32 0, i32 0
  %768 = load i32, i32* %767, align 4
  %769 = icmp eq i32 %768, 13500
  br i1 %769, label %770, label %784

770:                                              ; preds = %748
  %771 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %772 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %771, i32 0, i32 1
  %773 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %772, i32 0, i32 0
  %774 = load i32, i32* %773, align 4
  %775 = icmp slt i32 %774, 17
  br i1 %775, label %776, label %780

776:                                              ; preds = %770
  %777 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %778 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %777, i32 0, i32 5
  %779 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %778, i32 0, i32 6
  store i32 7, i32* %779, align 4
  br label %780

780:                                              ; preds = %776, %770
  %781 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %782 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %781, i32 0, i32 5
  %783 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %782, i32 0, i32 7
  store i32 13, i32* %783, align 4
  br label %798

784:                                              ; preds = %748
  %785 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %786 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %785, i32 0, i32 1
  %787 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %786, i32 0, i32 0
  %788 = load i32, i32* %787, align 4
  %789 = icmp slt i32 %788, 17
  br i1 %789, label %790, label %794

790:                                              ; preds = %784
  %791 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %792 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %791, i32 0, i32 5
  %793 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %792, i32 0, i32 6
  store i32 8, i32* %793, align 4
  br label %794

794:                                              ; preds = %790, %784
  %795 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %796 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %795, i32 0, i32 5
  %797 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %796, i32 0, i32 7
  store i32 14, i32* %797, align 4
  br label %798

798:                                              ; preds = %794, %780
  %799 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %800 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %799, i32 0, i32 1
  %801 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %800, i32 0, i32 0
  %802 = load i32, i32* %801, align 4
  %803 = icmp slt i32 %802, 23
  br i1 %803, label %816, label %804

804:                                              ; preds = %798
  %805 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %806 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %806, i32 0, i32 0
  %808 = load i32, i32* %807, align 4
  %809 = icmp eq i32 %808, 26
  br i1 %809, label %816, label %810

810:                                              ; preds = %804
  %811 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %812 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %811, i32 0, i32 1
  %813 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %812, i32 0, i32 0
  %814 = load i32, i32* %813, align 4
  %815 = icmp eq i32 %814, 32
  br i1 %815, label %816, label %819

816:                                              ; preds = %810, %804, %798
  %817 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %818 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %817, i32 0, i32 2
  store i32 4, i32* %818, align 8
  br label %822

819:                                              ; preds = %810
  %820 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %821 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %820, i32 0, i32 2
  store i32 5, i32* %821, align 8
  br label %822

822:                                              ; preds = %819, %816
  %823 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %824 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %823, i32 0, i32 2
  %825 = load i32, i32* %824, align 8
  %826 = load %struct.nvbios_pll*, %struct.nvbios_pll** %7, align 8
  %827 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %826, i32 0, i32 3
  store i32 %825, i32* %827, align 4
  br label %828

828:                                              ; preds = %822, %711
  store i32 0, i32* %4, align 4
  br label %829

829:                                              ; preds = %828, %656, %39
  %830 = load i32, i32* %4, align 4
  ret i32 %830
}

declare dso_local i32 @pll_map_reg(%struct.nvkm_bios*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @pll_map_type(%struct.nvkm_bios*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_pll*, i32, i32) #1

declare dso_local i8* @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_rdvgac(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @bmp_version(%struct.nvkm_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
