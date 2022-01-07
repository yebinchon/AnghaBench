; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv50.c_nv50_ram_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv50.c_nv50_ram_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32 }
%struct.nv50_ram = type { %struct.TYPE_11__, %struct.nv50_ramseq }
%struct.TYPE_11__ = type { i32*, i32, %struct.nvkm_ram_data*, %struct.nvkm_ram_data, %struct.TYPE_8__* }
%struct.nvkm_ram_data = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nv50_ramseq = type { i32 }
%struct.nvbios_perfE = type { i32 }
%struct.nvbios_pll = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"invalid/missing perftab entry\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid ramcfg strap\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid/missing rammap entry \00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"invalid/missing timing entry %02x %04x %02x %02x\0A\00", align 1
@mr = common dso_local global i32* null, align 8
@ENOSYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Could not calculate MR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ram*, i32)* @nv50_ram_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_ram_calc(%struct.nvkm_ram* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_ram*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_ram*, align 8
  %7 = alloca %struct.nv50_ramseq*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca %struct.nvbios_perfE, align 4
  %11 = alloca %struct.nvbios_pll, align 8
  %12 = alloca %struct.nvkm_ram_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca [9 x i32], align 16
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %4, align 8
  store i32 %1, i32* %5, align 4
  %34 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %35 = call %struct.nv50_ram* @nv50_ram(%struct.nvkm_ram* %34)
  store %struct.nv50_ram* %35, %struct.nv50_ram** %6, align 8
  %36 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %37 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %36, i32 0, i32 1
  store %struct.nv50_ramseq* %37, %struct.nv50_ramseq** %7, align 8
  %38 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %39 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store %struct.nvkm_subdev* %42, %struct.nvkm_subdev** %8, align 8
  %43 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %44 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.nvkm_bios*, %struct.nvkm_bios** %46, align 8
  store %struct.nvkm_bios* %47, %struct.nvkm_bios** %9, align 8
  %48 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %49 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  store %struct.nvkm_ram_data* %50, %struct.nvkm_ram_data** %12, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %53 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %55 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %56 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store %struct.nvkm_ram_data* %54, %struct.nvkm_ram_data** %57, align 8
  store i32 0, i32* %32, align 4
  br label %58

58:                                               ; preds = %80, %2
  %59 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %60 = load i32, i32* %32, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %32, align 4
  %62 = call i32 @nvbios_perfEp(%struct.nvkm_bios* %59, i32 %60, i32* %13, i32* %14, i32* %15, i32* %18, %struct.nvbios_perfE* %10)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 37
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = icmp sge i32 %69, 64
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %18, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %79

74:                                               ; preds = %71, %68, %65, %58
  %75 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %76 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %724

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %58, label %85

85:                                               ; preds = %80
  %86 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %90 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %89, i32 0, i32 1
  %91 = call i32 @nvbios_rammapEp_from_perf(%struct.nvkm_bios* %86, i32 %87, i32 %88, %struct.TYPE_12__* %90)
  %92 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %93 = call i32 @nvbios_ramcfg_index(%struct.nvkm_subdev* %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %99 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %724

102:                                              ; preds = %85
  %103 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %110 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %109, i32 0, i32 1
  %111 = call i32 @nvbios_rammapSp_from_perf(%struct.nvkm_bios* %103, i32 %106, i32 %107, i32 %108, %struct.TYPE_12__* %110)
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %102
  %115 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %116 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %724

119:                                              ; preds = %102
  %120 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %121 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 255
  br i1 %124, label %125, label %155

125:                                              ; preds = %119
  %126 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %127 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %128 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %132 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %131, i32 0, i32 1
  %133 = call i32 @nvbios_timingEp(%struct.nvkm_bios* %126, i32 %130, i32* %13, i32* %14, i32* %15, i32* %16, %struct.TYPE_12__* %132)
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %125
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 16
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %140, 18
  br i1 %141, label %142, label %151

142:                                              ; preds = %139, %136, %125
  %143 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %143, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %724

151:                                              ; preds = %139
  %152 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %153 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 0
  %154 = call i32 @nv50_ram_timing_calc(%struct.nv50_ram* %152, i32* %153)
  br label %159

155:                                              ; preds = %119
  %156 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %157 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 0
  %158 = call i32 @nv50_ram_timing_read(%struct.nv50_ram* %156, i32* %157)
  br label %159

159:                                              ; preds = %155, %151
  %160 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %161 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %162 = call i32 @ram_init(%struct.nv50_ramseq* %160, %struct.nvkm_subdev* %161)
  store i32 %162, i32* %31, align 4
  %163 = load i32, i32* %31, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %31, align 4
  store i32 %166, i32* %3, align 4
  br label %724

167:                                              ; preds = %159
  %168 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %169 = load i32*, i32** @mr, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ram_rd32(%struct.nv50_ramseq* %168, i32 %171)
  %173 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %174 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  store i32 %172, i32* %177, align 4
  %178 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %179 = load i32*, i32** @mr, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ram_rd32(%struct.nv50_ramseq* %178, i32 %181)
  %183 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %184 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 %182, i32* %187, align 4
  %188 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %189 = load i32*, i32** @mr, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ram_rd32(%struct.nv50_ramseq* %188, i32 %191)
  %193 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %194 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  store i32 %192, i32* %197, align 4
  %198 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %199 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  switch i32 %201, label %206 [
    i32 128, label %202
  ]

202:                                              ; preds = %167
  %203 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %204 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %203, i32 0, i32 0
  %205 = call i32 @nvkm_gddr3_calc(%struct.TYPE_11__* %204)
  store i32 %205, i32* %31, align 4
  br label %209

206:                                              ; preds = %167
  %207 = load i32, i32* @ENOSYS, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %31, align 4
  br label %209

209:                                              ; preds = %206, %202
  %210 = load i32, i32* %31, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %214 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %213, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %215 = load i32, i32* %31, align 4
  store i32 %215, i32* %3, align 4
  br label %724

216:                                              ; preds = %209
  %217 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %218 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %217, i32 0, i32 0
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp sle i32 %221, 150
  br i1 %222, label %223, label %232

223:                                              ; preds = %216
  %224 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %225 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 7
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %223
  %230 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %231 = call i32 @ram_mask(%struct.nv50_ramseq* %230, i32 1050384, i32 512, i32 0)
  br label %232

232:                                              ; preds = %229, %223, %216
  %233 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %234 = call i32 @ram_mask(%struct.nv50_ramseq* %233, i32 1049088, i32 2048, i32 0)
  %235 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %236 = call i32 @ram_wait_vblank(%struct.nv50_ramseq* %235)
  %237 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %238 = call i32 @ram_wr32(%struct.nv50_ramseq* %237, i32 6361600, i32 13056)
  %239 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %240 = call i32 @ram_wr32(%struct.nv50_ramseq* %239, i32 9476, i32 1)
  %241 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %242 = call i32 @ram_nsec(%struct.nv50_ramseq* %241, i32 8000)
  %243 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %244 = call i32 @ram_setf(%struct.nv50_ramseq* %243, i32 16, i32 0)
  %245 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %246 = call i32 @ram_wait(%struct.nv50_ramseq* %245, i32 0, i32 1)
  %247 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %248 = call i32 @ram_nsec(%struct.nv50_ramseq* %247, i32 2000)
  %249 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %250 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 10
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %232
  %255 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %256 = call i32 @nv50_ram_gpio(%struct.nv50_ramseq* %255, i32 46, i32 1)
  br label %257

257:                                              ; preds = %254, %232
  %258 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %259 = call i32 @ram_wr32(%struct.nv50_ramseq* %258, i32 1049300, i32 1)
  %260 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %261 = call i32 @ram_wr32(%struct.nv50_ramseq* %260, i32 1049296, i32 1)
  %262 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %263 = call i32 @ram_wr32(%struct.nv50_ramseq* %262, i32 1049296, i32 1)
  %264 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %265 = call i32 @ram_wr32(%struct.nv50_ramseq* %264, i32 1049104, i32 0)
  %266 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %267 = call i32 @ram_wr32(%struct.nv50_ramseq* %266, i32 1049308, i32 1)
  %268 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %269 = call i32 @nvbios_pll_parse(%struct.nvkm_bios* %268, i32 16392, %struct.nvbios_pll* %11)
  store i32 %269, i32* %31, align 4
  %270 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  store i64 0, i64* %271, align 8
  %272 = load i32, i32* %31, align 4
  %273 = icmp sge i32 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %257
  %275 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %276 = load i32, i32* %5, align 4
  %277 = call i32 @nv04_pll_calc(%struct.nvkm_subdev* %275, %struct.nvbios_pll* %11, i32 %276, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30)
  store i32 %277, i32* %31, align 4
  %278 = load i32, i32* %31, align 4
  %279 = icmp sle i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %274
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %31, align 4
  br label %283

283:                                              ; preds = %280, %274
  br label %284

284:                                              ; preds = %283, %257
  %285 = load i32, i32* %31, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = load i32, i32* %31, align 4
  store i32 %288, i32* %3, align 4
  br label %724

289:                                              ; preds = %284
  %290 = load i32, i32* %5, align 4
  %291 = icmp sle i32 %290, 750000
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  store i32 16, i32* %20, align 4
  store i32 -1879048192, i32* %21, align 4
  br label %294

293:                                              ; preds = %289
  store i32 0, i32* %20, align 4
  store i32 -2147483648, i32* %21, align 4
  br label %294

294:                                              ; preds = %293, %292
  %295 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %11, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = shl i32 %296, 19
  %298 = load i32, i32* %30, align 4
  %299 = shl i32 %298, 22
  %300 = or i32 %297, %299
  %301 = load i32, i32* %30, align 4
  %302 = shl i32 %301, 16
  %303 = or i32 %300, %302
  %304 = load i32, i32* %21, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %21, align 4
  %306 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %307 = call i32 @ram_mask(%struct.nv50_ramseq* %306, i32 49216, i32 -1073692672, i32 49152)
  %308 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %309 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %310 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = shl i32 %312, 14
  %314 = or i32 512, %313
  %315 = call i32 @ram_mask(%struct.nv50_ramseq* %308, i32 16392, i32 16896, i32 %314)
  %316 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %317 = load i32, i32* %26, align 4
  %318 = shl i32 %317, 8
  %319 = load i32, i32* %27, align 4
  %320 = or i32 %318, %319
  %321 = call i32 @ram_mask(%struct.nv50_ramseq* %316, i32 16396, i32 65535, i32 %320)
  %322 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %323 = load i32, i32* %21, align 4
  %324 = call i32 @ram_mask(%struct.nv50_ramseq* %322, i32 16392, i32 -1845559296, i32 %323)
  %325 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %326 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %325, i32 0, i32 0
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp sge i32 %329, 146
  br i1 %330, label %331, label %335

331:                                              ; preds = %294
  %332 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %333 = load i32, i32* %20, align 4
  %334 = call i32 @ram_wr32(%struct.nv50_ramseq* %332, i32 1052064, i32 %333)
  br label %335

335:                                              ; preds = %331, %294
  %336 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %337 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %338 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 16
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  %342 = xor i1 %341, true
  %343 = zext i1 %342 to i32
  %344 = call i32 @nv50_ram_gpio(%struct.nv50_ramseq* %336, i32 24, i32 %343)
  %345 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %346 = call i32 @ram_nsec(%struct.nv50_ramseq* %345, i32 64000)
  %347 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %348 = call i32 @ram_nsec(%struct.nv50_ramseq* %347, i32 32000)
  %349 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %350 = call i32 @ram_mask(%struct.nv50_ramseq* %349, i32 16392, i32 8704, i32 8192)
  %351 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %352 = call i32 @ram_wr32(%struct.nv50_ramseq* %351, i32 1049308, i32 0)
  %353 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %354 = call i32 @ram_wr32(%struct.nv50_ramseq* %353, i32 1049300, i32 1)
  %355 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %356 = call i32 @ram_wr32(%struct.nv50_ramseq* %355, i32 1049104, i32 -2147483648)
  %357 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %358 = call i32 @ram_nsec(%struct.nv50_ramseq* %357, i32 12000)
  %359 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %360 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  switch i32 %362, label %407 [
    i32 129, label %363
    i32 128, label %374
  ]

363:                                              ; preds = %335
  %364 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %365 = load i32*, i32** @mr, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 0
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @ram_nuke(%struct.nv50_ramseq* %364, i32 %367)
  %369 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %370 = load i32*, i32** @mr, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @ram_mask(%struct.nv50_ramseq* %369, i32 %372, i32 0, i32 0)
  br label %408

374:                                              ; preds = %335
  %375 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %376 = load i32*, i32** @mr, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 1
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @ram_nuke(%struct.nv50_ramseq* %375, i32 %378)
  %380 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %381 = load i32*, i32** @mr, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %385 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @ram_wr32(%struct.nv50_ramseq* %380, i32 %383, i32 %389)
  %391 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %392 = load i32*, i32** @mr, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 0
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @ram_nuke(%struct.nv50_ramseq* %391, i32 %394)
  %396 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %397 = load i32*, i32** @mr, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 0
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %401 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 0
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 0
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @ram_wr32(%struct.nv50_ramseq* %396, i32 %399, i32 %405)
  br label %408

407:                                              ; preds = %335
  br label %408

408:                                              ; preds = %407, %374, %363
  %409 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %410 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 3
  %411 = load i32, i32* %410, align 4
  %412 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 3
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @ram_mask(%struct.nv50_ramseq* %409, i32 %411, i32 -1, i32 %413)
  %415 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %416 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 1
  %417 = load i32, i32* %416, align 4
  %418 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @ram_mask(%struct.nv50_ramseq* %415, i32 %417, i32 -1, i32 %419)
  %421 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %422 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 6
  %423 = load i32, i32* %422, align 8
  %424 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 6
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @ram_mask(%struct.nv50_ramseq* %421, i32 %423, i32 -1, i32 %425)
  %427 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %428 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 7
  %429 = load i32, i32* %428, align 4
  %430 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 7
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @ram_mask(%struct.nv50_ramseq* %427, i32 %429, i32 -1, i32 %431)
  %433 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %434 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 8
  %435 = load i32, i32* %434, align 16
  %436 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 8
  %437 = load i32, i32* %436, align 16
  %438 = call i32 @ram_mask(%struct.nv50_ramseq* %433, i32 %435, i32 -1, i32 %437)
  %439 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %440 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 0
  %441 = load i32, i32* %440, align 16
  %442 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 0
  %443 = load i32, i32* %442, align 16
  %444 = call i32 @ram_mask(%struct.nv50_ramseq* %439, i32 %441, i32 -1, i32 %443)
  %445 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %446 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 2
  %447 = load i32, i32* %446, align 8
  %448 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 2
  %449 = load i32, i32* %448, align 8
  %450 = call i32 @ram_mask(%struct.nv50_ramseq* %445, i32 %447, i32 -1, i32 %449)
  %451 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %452 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 4
  %453 = load i32, i32* %452, align 16
  %454 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 4
  %455 = load i32, i32* %454, align 16
  %456 = call i32 @ram_mask(%struct.nv50_ramseq* %451, i32 %453, i32 -1, i32 %455)
  %457 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %458 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 5
  %459 = load i32, i32* %458, align 4
  %460 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 5
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @ram_mask(%struct.nv50_ramseq* %457, i32 %459, i32 -1, i32 %461)
  %463 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %464 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 7
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %471, label %468

468:                                              ; preds = %408
  %469 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %470 = call i32 @ram_mask(%struct.nv50_ramseq* %469, i32 1049116, i32 65536, i32 0)
  br label %471

471:                                              ; preds = %468, %408
  %472 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %473 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %474 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i32 0, i32 17
  %476 = load i32, i32* %475, align 4
  %477 = icmp ne i32 %476, 0
  %478 = xor i1 %477, true
  %479 = zext i1 %478 to i32
  %480 = shl i32 %479, 12
  %481 = call i32 @ram_mask(%struct.nv50_ramseq* %472, i32 1049088, i32 4096, i32 %480)
  %482 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %483 = call i32 @ram_rd32(%struct.nv50_ramseq* %482, i32 1050384)
  %484 = and i32 %483, -257
  store i32 %484, i32* %22, align 4
  %485 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %486 = call i32 @ram_rd32(%struct.nv50_ramseq* %485, i32 1050388)
  %487 = and i32 %486, 268435423
  store i32 %487, i32* %23, align 4
  %488 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %489 = call i32 @ram_rd32(%struct.nv50_ramseq* %488, i32 1050392)
  %490 = and i32 %489, -257
  store i32 %490, i32* %24, align 4
  %491 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %492 = call i32 @ram_rd32(%struct.nv50_ramseq* %491, i32 1050396)
  %493 = and i32 %492, -257
  store i32 %493, i32* %25, align 4
  %494 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %495 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %494, i32 0, i32 0
  %496 = load %struct.TYPE_10__*, %struct.TYPE_10__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = icmp sle i32 %498, 150
  br i1 %499, label %500, label %532

500:                                              ; preds = %471
  %501 = load i32, i32* %22, align 4
  %502 = and i32 %501, -111
  store i32 %502, i32* %22, align 4
  %503 = load i32, i32* %23, align 4
  %504 = and i32 %503, -257
  store i32 %504, i32* %23, align 4
  %505 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %506 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %506, i32 0, i32 14
  %508 = load i32, i32* %507, align 8
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %513, label %510

510:                                              ; preds = %500
  %511 = load i32, i32* %22, align 4
  %512 = or i32 %511, 96
  store i32 %512, i32* %22, align 4
  br label %513

513:                                              ; preds = %510, %500
  %514 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %515 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %515, i32 0, i32 16
  %517 = load i32, i32* %516, align 8
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %513
  %520 = load i32, i32* %23, align 4
  %521 = or i32 %520, 256
  store i32 %521, i32* %23, align 4
  br label %522

522:                                              ; preds = %519, %513
  %523 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %524 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %524, i32 0, i32 13
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %522
  %529 = load i32, i32* %22, align 4
  %530 = or i32 %529, 14
  store i32 %530, i32* %22, align 4
  br label %531

531:                                              ; preds = %528, %522
  br label %544

532:                                              ; preds = %471
  %533 = load i32, i32* %22, align 4
  %534 = and i32 %533, -2
  store i32 %534, i32* %22, align 4
  %535 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %536 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %536, i32 0, i32 14
  %538 = load i32, i32* %537, align 8
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %543, label %540

540:                                              ; preds = %532
  %541 = load i32, i32* %22, align 4
  %542 = or i32 %541, 1
  store i32 %542, i32* %22, align 4
  br label %543

543:                                              ; preds = %540, %532
  br label %544

544:                                              ; preds = %543, %531
  %545 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %546 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %546, i32 0, i32 15
  %548 = load i64, i64* %547, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %553

550:                                              ; preds = %544
  %551 = load i32, i32* %25, align 4
  %552 = or i32 %551, 256
  store i32 %552, i32* %25, align 4
  br label %553

553:                                              ; preds = %550, %544
  %554 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %555 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %555, i32 0, i32 7
  %557 = load i64, i64* %556, align 8
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %562

559:                                              ; preds = %553
  %560 = load i32, i32* %22, align 4
  %561 = or i32 %560, 256
  store i32 %561, i32* %22, align 4
  br label %562

562:                                              ; preds = %559, %553
  %563 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %564 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %564, i32 0, i32 14
  %566 = load i32, i32* %565, align 8
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %571, label %568

568:                                              ; preds = %562
  %569 = load i32, i32* %23, align 4
  %570 = or i32 %569, 32
  store i32 %570, i32* %23, align 4
  br label %571

571:                                              ; preds = %568, %562
  %572 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %573 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %573, i32 0, i32 13
  %575 = load i64, i64* %574, align 8
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %580

577:                                              ; preds = %571
  %578 = load i32, i32* %23, align 4
  %579 = or i32 %578, 1879048192
  store i32 %579, i32* %23, align 4
  br label %580

580:                                              ; preds = %577, %571
  %581 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %582 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %582, i32 0, i32 12
  %584 = load i64, i64* %583, align 8
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %589

586:                                              ; preds = %580
  %587 = load i32, i32* %24, align 4
  %588 = or i32 %587, 256
  store i32 %588, i32* %24, align 4
  br label %589

589:                                              ; preds = %586, %580
  %590 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %591 = load i32, i32* %23, align 4
  %592 = call i32 @ram_mask(%struct.nv50_ramseq* %590, i32 1050388, i32 -1, i32 %591)
  %593 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %594 = load i32, i32* %25, align 4
  %595 = call i32 @ram_mask(%struct.nv50_ramseq* %593, i32 1050396, i32 -1, i32 %594)
  %596 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %597 = load i32, i32* %24, align 4
  %598 = call i32 @ram_mask(%struct.nv50_ramseq* %596, i32 1050392, i32 -1, i32 %597)
  %599 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %600 = load i32, i32* %22, align 4
  %601 = call i32 @ram_mask(%struct.nv50_ramseq* %599, i32 1050384, i32 -1, i32 %600)
  %602 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %603 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %602, i32 0, i32 1
  %604 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %603, i32 0, i32 11
  %605 = load i64, i64* %604, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %640

607:                                              ; preds = %589
  %608 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %609 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %610 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %610, i32 0, i32 2
  %612 = load i32, i32* %611, align 8
  %613 = shl i32 %612, 16
  %614 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %615 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %615, i32 0, i32 3
  %617 = load i32, i32* %616, align 4
  %618 = shl i32 %617, 8
  %619 = or i32 %613, %618
  %620 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %621 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %620, i32 0, i32 1
  %622 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %621, i32 0, i32 4
  %623 = load i32, i32* %622, align 8
  %624 = or i32 %619, %623
  %625 = call i32 @ram_wr32(%struct.nv50_ramseq* %608, i32 1050016, i32 %624)
  %626 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %627 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %628 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %627, i32 0, i32 1
  %629 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %628, i32 0, i32 5
  %630 = load i32, i32* %629, align 4
  %631 = shl i32 %630, 8
  %632 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %633 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %632, i32 0, i32 1
  %634 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %633, i32 0, i32 6
  %635 = load i32, i32* %634, align 8
  %636 = or i32 %631, %635
  %637 = call i32 @ram_wr32(%struct.nv50_ramseq* %626, i32 1050020, i32 %636)
  %638 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %639 = call i32 @ram_mask(%struct.nv50_ramseq* %638, i32 1049916, i32 4096, i32 0)
  br label %643

640:                                              ; preds = %589
  %641 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %642 = call i32 @ram_mask(%struct.nv50_ramseq* %641, i32 1049916, i32 4096, i32 4096)
  br label %643

643:                                              ; preds = %640, %607
  %644 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %645 = load i32*, i32** @mr, align 8
  %646 = getelementptr inbounds i32, i32* %645, i64 1
  %647 = load i32, i32* %646, align 4
  %648 = load %struct.nv50_ram*, %struct.nv50_ram** %6, align 8
  %649 = getelementptr inbounds %struct.nv50_ram, %struct.nv50_ram* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %649, i32 0, i32 0
  %651 = load i32*, i32** %650, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 1
  %653 = load i32, i32* %652, align 4
  %654 = call i32 @ram_mask(%struct.nv50_ramseq* %644, i32 %647, i32 -1, i32 %653)
  %655 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %656 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %656, i32 0, i32 10
  %658 = load i64, i64* %657, align 8
  %659 = icmp ne i64 %658, 0
  br i1 %659, label %663, label %660

660:                                              ; preds = %643
  %661 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %662 = call i32 @nv50_ram_gpio(%struct.nv50_ramseq* %661, i32 46, i32 0)
  br label %663

663:                                              ; preds = %660, %643
  %664 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %665 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %665, i32 0, i32 9
  %667 = load i32, i32* %666, align 8
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %672, label %669

669:                                              ; preds = %663
  %670 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %671 = call i32 @nvkm_sddr2_dll_reset(%struct.nv50_ramseq* %670)
  br label %672

672:                                              ; preds = %669, %663
  %673 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %674 = call i32 @ram_setf(%struct.nv50_ramseq* %673, i32 16, i32 1)
  %675 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %676 = call i32 @ram_wait(%struct.nv50_ramseq* %675, i32 0, i32 0)
  %677 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %678 = call i32 @ram_wr32(%struct.nv50_ramseq* %677, i32 6361600, i32 13104)
  %679 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %680 = call i32 @ram_wr32(%struct.nv50_ramseq* %679, i32 9476, i32 0)
  %681 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %682 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %681, i32 0, i32 1
  %683 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %682, i32 0, i32 8
  %684 = load i64, i64* %683, align 8
  %685 = icmp ne i64 %684, 0
  br i1 %685, label %686, label %689

686:                                              ; preds = %672
  %687 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %688 = call i32 @ram_mask(%struct.nv50_ramseq* %687, i32 1049088, i32 2048, i32 2048)
  br label %689

689:                                              ; preds = %686, %672
  %690 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %691 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %691, i32 0, i32 1
  %693 = load i32, i32* %692, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %698, label %695

695:                                              ; preds = %689
  %696 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %697 = call i32 @ram_mask(%struct.nv50_ramseq* %696, i32 16392, i32 16384, i32 0)
  br label %698

698:                                              ; preds = %695, %689
  %699 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %700 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %699, i32 0, i32 1
  %701 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %700, i32 0, i32 7
  %702 = load i64, i64* %701, align 8
  %703 = icmp ne i64 %702, 0
  br i1 %703, label %704, label %707

704:                                              ; preds = %698
  %705 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %706 = call i32 @ram_mask(%struct.nv50_ramseq* %705, i32 1049116, i32 65536, i32 65536)
  br label %707

707:                                              ; preds = %704, %698
  %708 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %709 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %708, i32 0, i32 0
  %710 = load %struct.TYPE_10__*, %struct.TYPE_10__** %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %710, i32 0, i32 0
  %712 = load i32, i32* %711, align 8
  %713 = icmp sle i32 %712, 150
  br i1 %713, label %714, label %723

714:                                              ; preds = %707
  %715 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %12, align 8
  %716 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %715, i32 0, i32 1
  %717 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %716, i32 0, i32 7
  %718 = load i64, i64* %717, align 8
  %719 = icmp ne i64 %718, 0
  br i1 %719, label %720, label %723

720:                                              ; preds = %714
  %721 = load %struct.nv50_ramseq*, %struct.nv50_ramseq** %7, align 8
  %722 = call i32 @ram_mask(%struct.nv50_ramseq* %721, i32 1050384, i32 512, i32 512)
  br label %723

723:                                              ; preds = %720, %714, %707
  store i32 0, i32* %3, align 4
  br label %724

724:                                              ; preds = %723, %287, %212, %165, %142, %114, %97, %74
  %725 = load i32, i32* %3, align 4
  ret i32 %725
}

declare dso_local %struct.nv50_ram* @nv50_ram(%struct.nvkm_ram*) #1

declare dso_local i32 @nvbios_perfEp(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*, %struct.nvbios_perfE*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvbios_rammapEp_from_perf(%struct.nvkm_bios*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @nvbios_ramcfg_index(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvbios_rammapSp_from_perf(%struct.nvkm_bios*, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @nvbios_timingEp(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @nv50_ram_timing_calc(%struct.nv50_ram*, i32*) #1

declare dso_local i32 @nv50_ram_timing_read(%struct.nv50_ram*, i32*) #1

declare dso_local i32 @ram_init(%struct.nv50_ramseq*, %struct.nvkm_subdev*) #1

declare dso_local i32 @ram_rd32(%struct.nv50_ramseq*, i32) #1

declare dso_local i32 @nvkm_gddr3_calc(%struct.TYPE_11__*) #1

declare dso_local i32 @ram_mask(%struct.nv50_ramseq*, i32, i32, i32) #1

declare dso_local i32 @ram_wait_vblank(%struct.nv50_ramseq*) #1

declare dso_local i32 @ram_wr32(%struct.nv50_ramseq*, i32, i32) #1

declare dso_local i32 @ram_nsec(%struct.nv50_ramseq*, i32) #1

declare dso_local i32 @ram_setf(%struct.nv50_ramseq*, i32, i32) #1

declare dso_local i32 @ram_wait(%struct.nv50_ramseq*, i32, i32) #1

declare dso_local i32 @nv50_ram_gpio(%struct.nv50_ramseq*, i32, i32) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nvkm_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nv04_pll_calc(%struct.nvkm_subdev*, %struct.nvbios_pll*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ram_nuke(%struct.nv50_ramseq*, i32) #1

declare dso_local i32 @nvkm_sddr2_dll_reset(%struct.nv50_ramseq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
