; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_base.c_nvkm_bios_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_base.c_nvkm_bios_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_bios = type { %struct.TYPE_2__, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.nvbios_image = type { i32, i32, i32 }
%struct.bit_entry = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_bios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\FF\7FNV\00\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"BMP version %x.%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\FF\B8BIT\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"BIT signature found\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"version %02x.%02x.%02x.%02x.%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_bios_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_bios** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios**, align 8
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca %struct.nvbios_image, align 4
  %10 = alloca %struct.bit_entry, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_bios** %2, %struct.nvkm_bios*** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.nvkm_bios* @kzalloc(i32 80, i32 %13)
  %15 = load %struct.nvkm_bios**, %struct.nvkm_bios*** %7, align 8
  store %struct.nvkm_bios* %14, %struct.nvkm_bios** %15, align 8
  store %struct.nvkm_bios* %14, %struct.nvkm_bios** %8, align 8
  %16 = icmp ne %struct.nvkm_bios* %14, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %217

20:                                               ; preds = %3
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %23, i32 0, i32 1
  %25 = call i32 @nvkm_subdev_ctor(i32* @nvkm_bios, %struct.nvkm_device* %21, i32 %22, i32* %24)
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %27 = call i32 @nvbios_shadow(%struct.nvkm_bios* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %217

32:                                               ; preds = %20
  %33 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  %36 = call i64 @nvbios_image(%struct.nvkm_bios* %33, i32 %34, %struct.nvbios_image* %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %9, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %42 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %58, %38
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = call i64 @nvbios_image(%struct.nvkm_bios* %44, i32 %45, %struct.nvbios_image* %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 224
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %57 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  br label %59

58:                                               ; preds = %49
  br label %43

59:                                               ; preds = %53, %43
  br label %60

60:                                               ; preds = %59, %32
  %61 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %62 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %65 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @nvbios_findstr(i32 %63, i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %68 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %69 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %71 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %60
  %75 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %76 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %75, i32 0, i32 1
  %77 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %78 = call i32 @bmp_version(%struct.nvkm_bios* %77)
  %79 = ashr i32 %78, 8
  %80 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %81 = call i32 @bmp_version(%struct.nvkm_bios* %80)
  %82 = and i32 %81, 255
  %83 = call i32 (i32*, i8*, ...) @nvkm_debug(i32* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %74, %60
  %85 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %86 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %89 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @nvbios_findstr(i32 %87, i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %92 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %93 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %95 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %100 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %99, i32 0, i32 1
  %101 = call i32 (i32*, i8*, ...) @nvkm_debug(i32* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %84
  %103 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %104 = call i32 @bit_entry(%struct.nvkm_bios* %103, i8 signext 105, %struct.bit_entry* %10)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %151, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %10, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %108, 4
  br i1 %109, label %110, label %151

110:                                              ; preds = %106
  %111 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %112 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %10, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr i8, i8* %113, i64 3
  %115 = call i8* @nvbios_rd08(%struct.nvkm_bios* %111, i8* %114)
  %116 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %117 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  store i8* %115, i8** %118, align 8
  %119 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %120 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %10, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr i8, i8* %121, i64 2
  %123 = call i8* @nvbios_rd08(%struct.nvkm_bios* %119, i8* %122)
  %124 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %125 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  store i8* %123, i8** %126, align 8
  %127 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %128 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %10, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr i8, i8* %129, i64 1
  %131 = call i8* @nvbios_rd08(%struct.nvkm_bios* %127, i8* %130)
  %132 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %133 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  store i8* %131, i8** %134, align 8
  %135 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %136 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %10, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr i8, i8* %137, i64 0
  %139 = call i8* @nvbios_rd08(%struct.nvkm_bios* %135, i8* %138)
  %140 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %141 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i8* %139, i8** %142, align 8
  %143 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %144 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %10, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr i8, i8* %145, i64 4
  %147 = call i8* @nvbios_rd08(%struct.nvkm_bios* %143, i8* %146)
  %148 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %149 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i8* %147, i8** %150, align 8
  br label %193

151:                                              ; preds = %106, %102
  %152 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %153 = call i32 @bmp_version(%struct.nvkm_bios* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %192

155:                                              ; preds = %151
  %156 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %157 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %158 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr i8, i8* %159, i64 13
  %161 = call i8* @nvbios_rd08(%struct.nvkm_bios* %156, i8* %160)
  %162 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %163 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 4
  store i8* %161, i8** %164, align 8
  %165 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %166 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %167 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr i8, i8* %168, i64 12
  %170 = call i8* @nvbios_rd08(%struct.nvkm_bios* %165, i8* %169)
  %171 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %172 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 3
  store i8* %170, i8** %173, align 8
  %174 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %175 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %176 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr i8, i8* %177, i64 11
  %179 = call i8* @nvbios_rd08(%struct.nvkm_bios* %174, i8* %178)
  %180 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %181 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  store i8* %179, i8** %182, align 8
  %183 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %184 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %185 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr i8, i8* %186, i64 10
  %188 = call i8* @nvbios_rd08(%struct.nvkm_bios* %183, i8* %187)
  %189 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %190 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  store i8* %188, i8** %191, align 8
  br label %192

192:                                              ; preds = %155, %151
  br label %193

193:                                              ; preds = %192, %110
  %194 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %195 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %194, i32 0, i32 1
  %196 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %197 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 4
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %201 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 3
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %205 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %209 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %213 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @nvkm_info(i32* %195, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %199, i8* %203, i8* %207, i8* %211, i8* %215)
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %193, %30, %17
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local %struct.nvkm_bios* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

declare dso_local i32 @nvbios_shadow(%struct.nvkm_bios*) #1

declare dso_local i64 @nvbios_image(%struct.nvkm_bios*, i32, %struct.nvbios_image*) #1

declare dso_local i8* @nvbios_findstr(i32, i32, i8*, i32) #1

declare dso_local i32 @nvkm_debug(i32*, i8*, ...) #1

declare dso_local i32 @bmp_version(%struct.nvkm_bios*) #1

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i8*) #1

declare dso_local i32 @nvkm_info(i32*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
