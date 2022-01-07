; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_pushbuf_reloc_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_pushbuf_reloc_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_cli = type { i32 }
%struct.drm_nouveau_gem_pushbuf = type { i32, i64, i32 }
%struct.drm_nouveau_gem_pushbuf_bo = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.drm_nouveau_gem_pushbuf_reloc = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.nouveau_bo = type { i32, %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reloc bo index invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"reloc container bo index invalid\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"reloc outside of bo\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed kmap for reloc\0A\00", align 1
@NOUVEAU_GEM_RELOC_LOW = common dso_local global i32 0, align 4
@NOUVEAU_GEM_RELOC_HIGH = common dso_local global i32 0, align 4
@NOUVEAU_GEM_RELOC_OR = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_GART = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"reloc wait_idle failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_cli*, %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf_bo*)* @nouveau_gem_pushbuf_reloc_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gem_pushbuf_reloc_apply(%struct.nouveau_cli* %0, %struct.drm_nouveau_gem_pushbuf* %1, %struct.drm_nouveau_gem_pushbuf_bo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_cli*, align 8
  %6 = alloca %struct.drm_nouveau_gem_pushbuf*, align 8
  %7 = alloca %struct.drm_nouveau_gem_pushbuf_bo*, align 8
  %8 = alloca %struct.drm_nouveau_gem_pushbuf_reloc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_nouveau_gem_pushbuf_reloc*, align 8
  %12 = alloca %struct.drm_nouveau_gem_pushbuf_bo*, align 8
  %13 = alloca %struct.nouveau_bo*, align 8
  %14 = alloca i32, align 4
  store %struct.nouveau_cli* %0, %struct.nouveau_cli** %5, align 8
  store %struct.drm_nouveau_gem_pushbuf* %1, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  store %struct.drm_nouveau_gem_pushbuf_bo* %2, %struct.drm_nouveau_gem_pushbuf_bo** %7, align 8
  store %struct.drm_nouveau_gem_pushbuf_reloc* null, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  %16 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, %struct.drm_nouveau_gem_pushbuf* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  %19 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, %struct.drm_nouveau_gem_pushbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.drm_nouveau_gem_pushbuf_reloc* @u_memcpya(i32 %17, i32 %20, i32 40)
  store %struct.drm_nouveau_gem_pushbuf_reloc* %21, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  %22 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  %23 = call i64 @IS_ERR(%struct.drm_nouveau_gem_pushbuf_reloc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  %27 = call i32 @PTR_ERR(%struct.drm_nouveau_gem_pushbuf_reloc* %26)
  store i32 %27, i32* %4, align 4
  br label %233

28:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %226, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  %32 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, %struct.drm_nouveau_gem_pushbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %229

35:                                               ; preds = %29
  %36 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %36, i64 %38
  store %struct.drm_nouveau_gem_pushbuf_reloc* %39, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %40 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %41 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  %44 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, %struct.drm_nouveau_gem_pushbuf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp uge i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = load i32, i32* @err, align 4
  %52 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %53 = call i32 (i32, %struct.nouveau_cli*, i8*, ...) @NV_PRINTK(i32 %51, %struct.nouveau_cli* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %229

56:                                               ; preds = %35
  %57 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %7, align 8
  %58 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %59 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %57, i64 %60
  store %struct.drm_nouveau_gem_pushbuf_bo* %61, %struct.drm_nouveau_gem_pushbuf_bo** %12, align 8
  %62 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %12, align 8
  %63 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %226

68:                                               ; preds = %56
  %69 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %70 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.drm_nouveau_gem_pushbuf*, %struct.drm_nouveau_gem_pushbuf** %6, align 8
  %73 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, %struct.drm_nouveau_gem_pushbuf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp uge i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load i32, i32* @err, align 4
  %81 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %82 = call i32 (i32, %struct.nouveau_cli*, i8*, ...) @NV_PRINTK(i32 %80, %struct.nouveau_cli* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  br label %229

85:                                               ; preds = %68
  %86 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %7, align 8
  %87 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %88 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %86, i64 %89
  %91 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = bitcast i8* %93 to %struct.nouveau_bo*
  store %struct.nouveau_bo* %94, %struct.nouveau_bo** %13, align 8
  %95 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %96 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 4
  %99 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %100 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PAGE_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = icmp sgt i32 %98, %105
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %85
  %111 = load i32, i32* @err, align 4
  %112 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %113 = call i32 (i32, %struct.nouveau_cli*, i8*, ...) @NV_PRINTK(i32 %111, %struct.nouveau_cli* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %9, align 4
  br label %229

116:                                              ; preds = %85
  %117 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %118 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %142, label %122

122:                                              ; preds = %116
  %123 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %124 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %123, i32 0, i32 1
  %125 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %126 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %131 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %130, i32 0, i32 2
  %132 = call i32 @ttm_bo_kmap(%struct.TYPE_8__* %124, i32 0, i32 %129, %struct.TYPE_9__* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %122
  %136 = load i32, i32* @err, align 4
  %137 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %138 = call i32 (i32, %struct.nouveau_cli*, i8*, ...) @NV_PRINTK(i32 %136, %struct.nouveau_cli* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %229

139:                                              ; preds = %122
  %140 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %141 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %140, i32 0, i32 0
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %116
  %143 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %144 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @NOUVEAU_GEM_RELOC_LOW, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %142
  %150 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %12, align 8
  %151 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %155 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %153, %156
  store i32 %157, i32* %14, align 4
  br label %180

158:                                              ; preds = %142
  %159 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %160 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @NOUVEAU_GEM_RELOC_HIGH, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %12, align 8
  %167 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %171 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %169, %172
  %174 = ashr i32 %173, 32
  store i32 %174, i32* %14, align 4
  br label %179

175:                                              ; preds = %158
  %176 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %177 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %175, %165
  br label %180

180:                                              ; preds = %179, %149
  %181 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %182 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @NOUVEAU_GEM_RELOC_OR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %180
  %188 = load %struct.drm_nouveau_gem_pushbuf_bo*, %struct.drm_nouveau_gem_pushbuf_bo** %12, align 8
  %189 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_bo, %struct.drm_nouveau_gem_pushbuf_bo* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @NOUVEAU_GEM_DOMAIN_GART, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %196 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %14, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %14, align 4
  br label %206

200:                                              ; preds = %187
  %201 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %202 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %200, %194
  br label %207

207:                                              ; preds = %206, %180
  %208 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %209 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %208, i32 0, i32 1
  %210 = call i32 @ttm_bo_wait(%struct.TYPE_8__* %209, i32 0, i32 0)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load i32, i32* @err, align 4
  %215 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %216 = load i32, i32* %9, align 4
  %217 = call i32 (i32, %struct.nouveau_cli*, i8*, ...) @NV_PRINTK(i32 %214, %struct.nouveau_cli* %215, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %216)
  br label %229

218:                                              ; preds = %207
  %219 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %220 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %11, align 8
  %221 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf_reloc, %struct.drm_nouveau_gem_pushbuf_reloc* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = ashr i32 %222, 2
  %224 = load i32, i32* %14, align 4
  %225 = call i32 @nouveau_bo_wr32(%struct.nouveau_bo* %219, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %218, %67
  %227 = load i32, i32* %10, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %29

229:                                              ; preds = %213, %135, %110, %79, %50, %29
  %230 = load %struct.drm_nouveau_gem_pushbuf_reloc*, %struct.drm_nouveau_gem_pushbuf_reloc** %8, align 8
  %231 = call i32 @u_free(%struct.drm_nouveau_gem_pushbuf_reloc* %230)
  %232 = load i32, i32* %9, align 4
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %229, %25
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local %struct.drm_nouveau_gem_pushbuf_reloc* @u_memcpya(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_nouveau_gem_pushbuf_reloc*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_nouveau_gem_pushbuf_reloc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NV_PRINTK(i32, %struct.nouveau_cli*, i8*, ...) #1

declare dso_local i32 @ttm_bo_kmap(%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ttm_bo_wait(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @nouveau_bo_wr32(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @u_free(%struct.drm_nouveau_gem_pushbuf_reloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
