; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram_func = type { i32 }
%struct.nvkm_fb = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_ram = type { i32 }
%struct.gf100_ram = type { %struct.TYPE_4__, i32, i32, %struct.nvkm_ram }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mclk refpll data not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"mclk pll data not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_ram_new_(%struct.nvkm_ram_func* %0, %struct.nvkm_fb* %1, %struct.nvkm_ram** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_ram_func*, align 8
  %6 = alloca %struct.nvkm_fb*, align 8
  %7 = alloca %struct.nvkm_ram**, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca %struct.gf100_ram*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_ram_func* %0, %struct.nvkm_ram_func** %5, align 8
  store %struct.nvkm_fb* %1, %struct.nvkm_fb** %6, align 8
  store %struct.nvkm_ram** %2, %struct.nvkm_ram*** %7, align 8
  %12 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %13 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %8, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %17, align 8
  store %struct.nvkm_bios* %18, %struct.nvkm_bios** %9, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.gf100_ram* @kzalloc(i32 408, i32 %19)
  store %struct.gf100_ram* %20, %struct.gf100_ram** %10, align 8
  %21 = icmp ne %struct.gf100_ram* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %261

25:                                               ; preds = %3
  %26 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %27 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %26, i32 0, i32 3
  %28 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %7, align 8
  store %struct.nvkm_ram* %27, %struct.nvkm_ram** %28, align 8
  %29 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %5, align 8
  %30 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %31 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %32 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %31, i32 0, i32 3
  %33 = call i32 @gf100_ram_ctor(%struct.nvkm_ram_func* %29, %struct.nvkm_fb* %30, %struct.nvkm_ram* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %261

38:                                               ; preds = %25
  %39 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %40 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %41 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %40, i32 0, i32 2
  %42 = call i32 @nvbios_pll_parse(%struct.nvkm_bios* %39, i32 12, i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %47 = call i32 @nvkm_error(%struct.nvkm_subdev* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %261

49:                                               ; preds = %38
  %50 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %51 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %52 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %51, i32 0, i32 1
  %53 = call i32 @nvbios_pll_parse(%struct.nvkm_bios* %50, i32 4, i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %58 = call i32 @nvkm_error(%struct.nvkm_subdev* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %261

60:                                               ; preds = %49
  %61 = call i8* @ramfuc_reg(i32 1113632)
  %62 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %63 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 48
  store i8* %61, i8** %64, align 8
  %65 = call i8* @ramfuc_reg(i32 1113636)
  %66 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %67 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 47
  store i8* %65, i8** %68, align 8
  %69 = call i8* @ramfuc_reg(i32 1274656)
  %70 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %71 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 46
  store i8* %69, i8** %72, align 8
  %73 = call i8* @ramfuc_reg(i32 1274672)
  %74 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %75 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 45
  store i8* %73, i8** %76, align 8
  %77 = call i8* @ramfuc_reg(i32 1253376)
  %78 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %79 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 44
  store i8* %77, i8** %80, align 8
  %81 = call i8* @ramfuc_reg(i32 1253380)
  %82 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %83 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 43
  store i8* %81, i8** %84, align 8
  %85 = call i8* @ramfuc_reg(i32 1253632)
  %86 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %87 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 42
  store i8* %85, i8** %88, align 8
  %89 = call i8* @ramfuc_reg(i32 1274768)
  %90 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %91 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 41
  store i8* %89, i8** %92, align 8
  %93 = call i8* @ramfuc_reg(i32 1110672)
  %94 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %95 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 40
  store i8* %93, i8** %96, align 8
  %97 = call i8* @ramfuc_reg(i32 1110676)
  %98 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %99 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 39
  store i8* %97, i8** %100, align 8
  %101 = call i8* @ramfuc_reg(i32 1110680)
  %102 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %103 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 38
  store i8* %101, i8** %104, align 8
  %105 = call i8* @ramfuc_reg(i32 1110684)
  %106 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %107 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 37
  store i8* %105, i8** %108, align 8
  %109 = call i8* @ramfuc_reg(i32 1110688)
  %110 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %111 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 36
  store i8* %109, i8** %112, align 8
  %113 = call i8* @ramfuc_reg(i32 1110784)
  %114 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %115 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 35
  store i8* %113, i8** %116, align 8
  %117 = call i8* @ramfuc_reg(i32 1110840)
  %118 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %119 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 34
  store i8* %117, i8** %120, align 8
  %121 = call i8* @ramfuc_reg(i32 1110848)
  %122 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %123 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 33
  store i8* %121, i8** %124, align 8
  %125 = call i8* @ramfuc_reg(i32 1110852)
  %126 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %127 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 32
  store i8* %125, i8** %128, align 8
  %129 = call i8* @ramfuc_reg(i32 1110856)
  %130 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %131 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 31
  store i8* %129, i8** %132, align 8
  %133 = call i8* @ramfuc_reg(i32 1112336)
  %134 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %135 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 30
  store i8* %133, i8** %136, align 8
  %137 = call i8* @ramfuc_reg(i32 1112340)
  %138 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %139 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 29
  store i8* %137, i8** %140, align 8
  %141 = call i8* @ramfuc_reg(i32 1051404)
  %142 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %143 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 28
  store i8* %141, i8** %144, align 8
  %145 = call i8* @ramfuc_reg(i32 1110096)
  %146 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %147 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 27
  store i8* %145, i8** %148, align 8
  %149 = call i8* @ramfuc_reg(i32 1110160)
  %150 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %151 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 26
  store i8* %149, i8** %152, align 8
  %153 = call i8* @ramfuc_reg(i32 1110528)
  %154 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %155 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 25
  store i8* %153, i8** %156, align 8
  %157 = call i8* @ramfuc_reg(i32 1110544)
  %158 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %159 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 24
  store i8* %157, i8** %160, align 8
  %161 = call i8* @ramfuc_reg(i32 1110800)
  %162 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %163 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 23
  store i8* %161, i8** %164, align 8
  %165 = call i8* @ramfuc_reg(i32 1110804)
  %166 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %167 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 22
  store i8* %165, i8** %168, align 8
  %169 = call i8* @ramfuc_reg(i32 1111568)
  %170 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %171 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 21
  store i8* %169, i8** %172, align 8
  %173 = call i8* @ramfuc_reg(i32 1111572)
  %174 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %175 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 20
  store i8* %173, i8** %176, align 8
  %177 = call i8* @ramfuc_reg(i32 1112064)
  %178 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %179 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 19
  store i8* %177, i8** %180, align 8
  %181 = call i8* @ramfuc_reg(i32 1112072)
  %182 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %183 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 18
  store i8* %181, i8** %184, align 8
  %185 = call i8* @ramfuc_reg(i32 1112100)
  %186 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %187 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 17
  store i8* %185, i8** %188, align 8
  %189 = call i8* @ramfuc_reg(i32 1112112)
  %190 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %191 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 16
  store i8* %189, i8** %192, align 8
  %193 = call i8* @ramfuc_reg(i32 1112456)
  %194 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %195 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 15
  store i8* %193, i8** %196, align 8
  %197 = call i8* @ramfuc_reg(i32 1112460)
  %198 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %199 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 14
  store i8* %197, i8** %200, align 8
  %201 = call i8* @ramfuc_reg(i32 1112464)
  %202 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %203 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 13
  store i8* %201, i8** %204, align 8
  %205 = call i8* @ramfuc_reg(i32 1112472)
  %206 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %207 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 12
  store i8* %205, i8** %208, align 8
  %209 = call i8* @ramfuc_reg(i32 1112496)
  %210 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %211 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 11
  store i8* %209, i8** %212, align 8
  %213 = call i8* @ramfuc_reg(i32 1112500)
  %214 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %215 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 10
  store i8* %213, i8** %216, align 8
  %217 = call i8* @ramfuc_reg(i32 1112836)
  %218 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %219 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 9
  store i8* %217, i8** %220, align 8
  %221 = call i8* @ramfuc_reg(i32 1112840)
  %222 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %223 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 8
  store i8* %221, i8** %224, align 8
  %225 = call i8* @ramfuc_reg(i32 1274624)
  %226 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %227 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 7
  store i8* %225, i8** %228, align 8
  %229 = call i8* @ramfuc_reg(i32 1274640)
  %230 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %231 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 7
  store i8* %229, i8** %232, align 8
  %233 = call i8* @ramfuc_reg(i32 1274720)
  %234 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %235 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 6
  store i8* %233, i8** %236, align 8
  %237 = call i8* @ramfuc_reg(i32 1274860)
  %238 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %239 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 5
  store i8* %237, i8** %240, align 8
  %241 = call i8* @ramfuc_reg(i32 1274864)
  %242 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %243 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 4
  store i8* %241, i8** %244, align 8
  %245 = call i8* @ramfuc_reg(i32 1274872)
  %246 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %247 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 3
  store i8* %245, i8** %248, align 8
  %249 = call i8* @ramfuc_reg(i32 6406464)
  %250 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %251 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 2
  store i8* %249, i8** %252, align 8
  %253 = call i8* @ramfuc_reg(i32 6361600)
  %254 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %255 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  store i8* %253, i8** %256, align 8
  %257 = call i8* @ramfuc_reg(i32 1300724)
  %258 = load %struct.gf100_ram*, %struct.gf100_ram** %10, align 8
  %259 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  store i8* %257, i8** %260, align 8
  store i32 0, i32* %4, align 4
  br label %261

261:                                              ; preds = %60, %56, %45, %36, %22
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local %struct.gf100_ram* @kzalloc(i32, i32) #1

declare dso_local i32 @gf100_ram_ctor(%struct.nvkm_ram_func*, %struct.nvkm_fb*, %struct.nvkm_ram*) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nvkm_bios*, i32, i32*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i8* @ramfuc_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
