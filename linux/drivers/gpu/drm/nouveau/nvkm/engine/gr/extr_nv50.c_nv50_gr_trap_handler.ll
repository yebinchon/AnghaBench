; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_trap_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_trap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"TRAP: no units reporting traps?\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TRAP_DISPATCH - no ustatus?\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"TRAP DISPATCH_FAULT\0A\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x%08x 400808 %08x 400848 %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"no stuck command?\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"TRAP DISPATCH_QUERY\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x 40084c %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"TRAP_DISPATCH (unknown %08x)\0A\00", align 1
@nv50_gr_trap_m2mf = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"TRAP_M2MF %08x [%s]\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"TRAP_M2MF %08x %08x %08x %08x\0A\00", align 1
@nv50_gr_trap_vfetch = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"TRAP_VFETCH %08x [%s]\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"TRAP_VFETCH %08x %08x %08x %08x\0A\00", align 1
@nv50_gr_trap_strmout = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"TRAP_STRMOUT %08x [%s]\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"TRAP_STRMOUT %08x %08x %08x %08x\0A\00", align 1
@nv50_gr_trap_ccache = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"TRAP_CCACHE %08x [%s]\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"TRAP_CCACHE %08x %08x %08x %08x %08x %08x %08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"TRAP_UNKC04 %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"TRAP_TEXTURE\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"TRAP_MP\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"TRAP_PROP\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"TRAP: unknown %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_gr*, i32, i32, i32, i8*)* @nv50_gr_trap_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_gr_trap_handler(%struct.nv50_gr* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_gr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nvkm_subdev*, align 8
  %13 = alloca %struct.nvkm_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [128 x i8], align 16
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
  store %struct.nv50_gr* %0, %struct.nv50_gr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %31 = load %struct.nv50_gr*, %struct.nv50_gr** %7, align 8
  %32 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.nvkm_subdev* %34, %struct.nvkm_subdev** %12, align 8
  %35 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %36 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %35, i32 0, i32 0
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %36, align 8
  store %struct.nvkm_device* %37, %struct.nvkm_device** %13, align 8
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %39 = call i32 @nvkm_rd32(%struct.nvkm_device* %38, i32 4194568)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %5
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %47 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %420

48:                                               ; preds = %42, %5
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %194

52:                                               ; preds = %48
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %54 = call i32 @nvkm_rd32(%struct.nvkm_device* %53, i32 4196356)
  %55 = and i32 %54, 2147483647
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %63 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58, %52
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %66 = call i32 @nvkm_wr32(%struct.nvkm_device* %65, i32 4195584, i32 0)
  %67 = load i32, i32* %15, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %126

70:                                               ; preds = %64
  %71 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %72 = call i32 @nvkm_rd32(%struct.nvkm_device* %71, i32 4196360)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = and i32 %73, 458752
  %75 = ashr i32 %74, 16
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = and i32 %76, 8188
  store i32 %77, i32* %19, align 4
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %79 = call i32 @nvkm_rd32(%struct.nvkm_device* %78, i32 4196364)
  store i32 %79, i32* %20, align 4
  %80 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %81 = call i32 @nvkm_rd32(%struct.nvkm_device* %80, i32 4196368)
  store i32 %81, i32* %21, align 4
  %82 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %83 = call i32 @nvkm_rd32(%struct.nvkm_device* %82, i32 4196372)
  store i32 %83, i32* %22, align 4
  %84 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %85 = call i32 @nvkm_rd32(%struct.nvkm_device* %84, i32 4196424)
  store i32 %85, i32* %23, align 4
  %86 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %87 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %70
  %91 = load i32, i32* %17, align 4
  %92 = and i32 %91, -2147483648
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %23, align 4
  %106 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %95, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %97, i8* %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  br label %114

107:                                              ; preds = %90, %70
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %112 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %94
  %115 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %116 = call i32 @nvkm_wr32(%struct.nvkm_device* %115, i32 4196360, i32 0)
  %117 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %118 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %119 = call i32 @nvkm_rd32(%struct.nvkm_device* %118, i32 4196584)
  %120 = and i32 %119, 3
  %121 = call i32 @nvkm_wr32(%struct.nvkm_device* %117, i32 4196584, i32 %120)
  %122 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %123 = call i32 @nvkm_wr32(%struct.nvkm_device* %122, i32 4196424, i32 0)
  %124 = load i32, i32* %15, align 4
  %125 = and i32 %124, -2
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %114, %64
  %127 = load i32, i32* %15, align 4
  %128 = and i32 %127, 2
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %173

130:                                              ; preds = %126
  %131 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %132 = call i32 @nvkm_rd32(%struct.nvkm_device* %131, i32 4196428)
  store i32 %132, i32* %24, align 4
  %133 = load i32, i32* %24, align 4
  %134 = and i32 %133, 458752
  %135 = ashr i32 %134, 16
  store i32 %135, i32* %25, align 4
  %136 = load i32, i32* %24, align 4
  %137 = and i32 %136, 8188
  store i32 %137, i32* %26, align 4
  %138 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %139 = call i32 @nvkm_rd32(%struct.nvkm_device* %138, i32 4196444)
  store i32 %139, i32* %27, align 4
  %140 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %141 = call i32 @nvkm_rd32(%struct.nvkm_device* %140, i32 4196372)
  store i32 %141, i32* %28, align 4
  %142 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %143 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %130
  %147 = load i32, i32* %24, align 4
  %148 = and i32 %147, -2147483648
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i8*, i8** %11, align 8
  %155 = load i32, i32* %25, align 4
  %156 = load i32, i32* %28, align 4
  %157 = load i32, i32* %26, align 4
  %158 = load i32, i32* %27, align 4
  %159 = load i32, i32* %24, align 4
  %160 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %151, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 %152, i32 %153, i8* %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159)
  br label %168

161:                                              ; preds = %146, %130
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %166 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %165, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %150
  %169 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %170 = call i32 @nvkm_wr32(%struct.nvkm_device* %169, i32 4196428, i32 0)
  %171 = load i32, i32* %15, align 4
  %172 = and i32 %171, -3
  store i32 %172, i32* %15, align 4
  br label %173

173:                                              ; preds = %168, %126
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %181 = load i32, i32* %15, align 4
  %182 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %179, %176, %173
  %184 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %185 = call i32 @nvkm_wr32(%struct.nvkm_device* %184, i32 4196356, i32 -1073741824)
  %186 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %187 = call i32 @nvkm_wr32(%struct.nvkm_device* %186, i32 4194568, i32 1)
  %188 = load i32, i32* %14, align 4
  %189 = and i32 %188, -2
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %183
  store i32 0, i32* %6, align 4
  br label %420

193:                                              ; preds = %183
  br label %194

194:                                              ; preds = %193, %48
  %195 = load i32, i32* %14, align 4
  %196 = and i32 %195, 2
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %234

198:                                              ; preds = %194
  %199 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %200 = call i32 @nvkm_rd32(%struct.nvkm_device* %199, i32 4220928)
  %201 = and i32 %200, 2147483647
  store i32 %201, i32* %29, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %198
  %205 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %206 = load i32, i32* @nv50_gr_trap_m2mf, align 4
  %207 = load i32, i32* %29, align 4
  %208 = call i32 @nvkm_snprintbf(i8* %205, i32 128, i32 %206, i32 %207)
  %209 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %210 = load i32, i32* %29, align 4
  %211 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %212 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %210, i8* %211)
  %213 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %214 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %215 = call i32 @nvkm_rd32(%struct.nvkm_device* %214, i32 4220932)
  %216 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %217 = call i32 @nvkm_rd32(%struct.nvkm_device* %216, i32 4220936)
  %218 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %219 = call i32 @nvkm_rd32(%struct.nvkm_device* %218, i32 4220940)
  %220 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %221 = call i32 @nvkm_rd32(%struct.nvkm_device* %220, i32 4220944)
  %222 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %213, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %215, i32 %217, i32 %219, i32 %221)
  br label %223

223:                                              ; preds = %204, %198
  %224 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %225 = call i32 @nvkm_wr32(%struct.nvkm_device* %224, i32 4194368, i32 2)
  %226 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %227 = call i32 @nvkm_wr32(%struct.nvkm_device* %226, i32 4194368, i32 0)
  %228 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %229 = call i32 @nvkm_wr32(%struct.nvkm_device* %228, i32 4220928, i32 -1073741824)
  %230 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %231 = call i32 @nvkm_wr32(%struct.nvkm_device* %230, i32 4194568, i32 2)
  %232 = load i32, i32* %14, align 4
  %233 = and i32 %232, -3
  store i32 %233, i32* %14, align 4
  br label %234

234:                                              ; preds = %223, %194
  %235 = load i32, i32* %14, align 4
  %236 = and i32 %235, 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %270

238:                                              ; preds = %234
  %239 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %240 = call i32 @nvkm_rd32(%struct.nvkm_device* %239, i32 4197380)
  %241 = and i32 %240, 2147483647
  store i32 %241, i32* %30, align 4
  %242 = load i32, i32* %8, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %263

244:                                              ; preds = %238
  %245 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %246 = load i32, i32* @nv50_gr_trap_vfetch, align 4
  %247 = load i32, i32* %30, align 4
  %248 = call i32 @nvkm_snprintbf(i8* %245, i32 128, i32 %246, i32 %247)
  %249 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %250 = load i32, i32* %30, align 4
  %251 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %252 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %250, i8* %251)
  %253 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %254 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %255 = call i32 @nvkm_rd32(%struct.nvkm_device* %254, i32 4197376)
  %256 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %257 = call i32 @nvkm_rd32(%struct.nvkm_device* %256, i32 4197384)
  %258 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %259 = call i32 @nvkm_rd32(%struct.nvkm_device* %258, i32 4197388)
  %260 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %261 = call i32 @nvkm_rd32(%struct.nvkm_device* %260, i32 4197392)
  %262 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %253, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %255, i32 %257, i32 %259, i32 %261)
  br label %263

263:                                              ; preds = %244, %238
  %264 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %265 = call i32 @nvkm_wr32(%struct.nvkm_device* %264, i32 4197380, i32 -1073741824)
  %266 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %267 = call i32 @nvkm_wr32(%struct.nvkm_device* %266, i32 4194568, i32 4)
  %268 = load i32, i32* %14, align 4
  %269 = and i32 %268, -5
  store i32 %269, i32* %14, align 4
  br label %270

270:                                              ; preds = %263, %234
  %271 = load i32, i32* %14, align 4
  %272 = and i32 %271, 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %310

274:                                              ; preds = %270
  %275 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %276 = call i32 @nvkm_rd32(%struct.nvkm_device* %275, i32 4200448)
  %277 = and i32 %276, 2147483647
  store i32 %277, i32* %15, align 4
  %278 = load i32, i32* %8, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %299

280:                                              ; preds = %274
  %281 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %282 = load i32, i32* @nv50_gr_trap_strmout, align 4
  %283 = load i32, i32* %15, align 4
  %284 = call i32 @nvkm_snprintbf(i8* %281, i32 128, i32 %282, i32 %283)
  %285 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %286 = load i32, i32* %15, align 4
  %287 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %288 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %285, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %286, i8* %287)
  %289 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %290 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %291 = call i32 @nvkm_rd32(%struct.nvkm_device* %290, i32 4200452)
  %292 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %293 = call i32 @nvkm_rd32(%struct.nvkm_device* %292, i32 4200456)
  %294 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %295 = call i32 @nvkm_rd32(%struct.nvkm_device* %294, i32 4200460)
  %296 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %297 = call i32 @nvkm_rd32(%struct.nvkm_device* %296, i32 4200464)
  %298 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %289, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %291, i32 %293, i32 %295, i32 %297)
  br label %299

299:                                              ; preds = %280, %274
  %300 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %301 = call i32 @nvkm_wr32(%struct.nvkm_device* %300, i32 4194368, i32 128)
  %302 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %303 = call i32 @nvkm_wr32(%struct.nvkm_device* %302, i32 4194368, i32 0)
  %304 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %305 = call i32 @nvkm_wr32(%struct.nvkm_device* %304, i32 4200448, i32 -1073741824)
  %306 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %307 = call i32 @nvkm_wr32(%struct.nvkm_device* %306, i32 4194568, i32 8)
  %308 = load i32, i32* %14, align 4
  %309 = and i32 %308, -9
  store i32 %309, i32* %14, align 4
  br label %310

310:                                              ; preds = %299, %270
  %311 = load i32, i32* %14, align 4
  %312 = and i32 %311, 16
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %352

314:                                              ; preds = %310
  %315 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %316 = call i32 @nvkm_rd32(%struct.nvkm_device* %315, i32 4214808)
  %317 = and i32 %316, 2147483647
  store i32 %317, i32* %15, align 4
  %318 = load i32, i32* %8, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %345

320:                                              ; preds = %314
  %321 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %322 = load i32, i32* @nv50_gr_trap_ccache, align 4
  %323 = load i32, i32* %15, align 4
  %324 = call i32 @nvkm_snprintbf(i8* %321, i32 128, i32 %322, i32 %323)
  %325 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %326 = load i32, i32* %15, align 4
  %327 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %328 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %325, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %326, i8* %327)
  %329 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %330 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %331 = call i32 @nvkm_rd32(%struct.nvkm_device* %330, i32 4214784)
  %332 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %333 = call i32 @nvkm_rd32(%struct.nvkm_device* %332, i32 4214788)
  %334 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %335 = call i32 @nvkm_rd32(%struct.nvkm_device* %334, i32 4214792)
  %336 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %337 = call i32 @nvkm_rd32(%struct.nvkm_device* %336, i32 4214796)
  %338 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %339 = call i32 @nvkm_rd32(%struct.nvkm_device* %338, i32 4214800)
  %340 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %341 = call i32 @nvkm_rd32(%struct.nvkm_device* %340, i32 4214804)
  %342 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %343 = call i32 @nvkm_rd32(%struct.nvkm_device* %342, i32 4214812)
  %344 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %329, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i32 %331, i32 %333, i32 %335, i32 %337, i32 %339, i32 %341, i32 %343)
  br label %345

345:                                              ; preds = %320, %314
  %346 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %347 = call i32 @nvkm_wr32(%struct.nvkm_device* %346, i32 4214808, i32 -1073741824)
  %348 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %349 = call i32 @nvkm_wr32(%struct.nvkm_device* %348, i32 4194568, i32 16)
  %350 = load i32, i32* %14, align 4
  %351 = and i32 %350, -17
  store i32 %351, i32* %14, align 4
  br label %352

352:                                              ; preds = %345, %310
  %353 = load i32, i32* %14, align 4
  %354 = and i32 %353, 32
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %369

356:                                              ; preds = %352
  %357 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %358 = call i32 @nvkm_rd32(%struct.nvkm_device* %357, i32 4202496)
  %359 = and i32 %358, 2147483647
  store i32 %359, i32* %15, align 4
  %360 = load i32, i32* %8, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %356
  %363 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %364 = load i32, i32* %15, align 4
  %365 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %363, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %364)
  br label %366

366:                                              ; preds = %362, %356
  %367 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %368 = call i32 @nvkm_wr32(%struct.nvkm_device* %367, i32 4202496, i32 -1073741824)
  br label %369

369:                                              ; preds = %366, %352
  %370 = load i32, i32* %14, align 4
  %371 = and i32 %370, 64
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %369
  %374 = load %struct.nv50_gr*, %struct.nv50_gr** %7, align 8
  %375 = load i32, i32* %8, align 4
  %376 = call i32 @nv50_gr_tp_trap(%struct.nv50_gr* %374, i32 6, i32 4229376, i32 4228608, i32 %375, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %377 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %378 = call i32 @nvkm_wr32(%struct.nvkm_device* %377, i32 4194568, i32 64)
  %379 = load i32, i32* %14, align 4
  %380 = and i32 %379, -65
  store i32 %380, i32* %14, align 4
  br label %381

381:                                              ; preds = %373, %369
  %382 = load i32, i32* %14, align 4
  %383 = and i32 %382, 128
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %393

385:                                              ; preds = %381
  %386 = load %struct.nv50_gr*, %struct.nv50_gr** %7, align 8
  %387 = load i32, i32* %8, align 4
  %388 = call i32 @nv50_gr_tp_trap(%struct.nv50_gr* %386, i32 7, i32 4227860, i32 4227868, i32 %387, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %389 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %390 = call i32 @nvkm_wr32(%struct.nvkm_device* %389, i32 4194568, i32 128)
  %391 = load i32, i32* %14, align 4
  %392 = and i32 %391, -129
  store i32 %392, i32* %14, align 4
  br label %393

393:                                              ; preds = %385, %381
  %394 = load i32, i32* %14, align 4
  %395 = and i32 %394, 256
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %405

397:                                              ; preds = %393
  %398 = load %struct.nv50_gr*, %struct.nv50_gr** %7, align 8
  %399 = load i32, i32* %8, align 4
  %400 = call i32 @nv50_gr_tp_trap(%struct.nv50_gr* %398, i32 8, i32 4230664, i32 4228872, i32 %399, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %401 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %402 = call i32 @nvkm_wr32(%struct.nvkm_device* %401, i32 4194568, i32 256)
  %403 = load i32, i32* %14, align 4
  %404 = and i32 %403, -257
  store i32 %404, i32* %14, align 4
  br label %405

405:                                              ; preds = %397, %393
  %406 = load i32, i32* %14, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %419

408:                                              ; preds = %405
  %409 = load i32, i32* %8, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %408
  %412 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %413 = load i32, i32* %14, align 4
  %414 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %412, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %413)
  br label %415

415:                                              ; preds = %411, %408
  %416 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %417 = load i32, i32* %14, align 4
  %418 = call i32 @nvkm_wr32(%struct.nvkm_device* %416, i32 4194568, i32 %417)
  br label %419

419:                                              ; preds = %415, %405
  store i32 1, i32* %6, align 4
  br label %420

420:                                              ; preds = %419, %192, %45
  %421 = load i32, i32* %6, align 4
  ret i32 %421
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nv50_gr_tp_trap(%struct.nv50_gr*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
