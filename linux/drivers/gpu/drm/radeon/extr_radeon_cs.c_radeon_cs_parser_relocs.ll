; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_parser_relocs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_parser_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.radeon_cs_parser = type { i32, i64, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_15__, i32, %struct.TYPE_18__*, i32, i64, %struct.radeon_cs_chunk* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_13__, i64 }
%struct.radeon_cs_chunk = type { i32, i32* }
%struct.radeon_cs_buckets = type { i32 }
%struct.drm_radeon_cs_reloc = type { i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"gem object lookup failed 0x%x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RADEON_RELOC_PRIO_MASK = common dso_local global i32 0, align 4
@R600_RING_TYPE_UVD_INDEX = common dso_local global i64 0, align 8
@PCI_CAP_ID_AGP = common dso_local global i32 0, align 4
@CHIP_RS780 = common dso_local global i64 0, align 8
@CHIP_RS880 = common dso_local global i64 0, align 8
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@RADEON_CS_MAX_PRIORITY = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"RADEON_GEM_DOMAIN_CPU is not valid for command submission\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Only RADEON_GEM_DOMAIN_GTT is allowed for userptr BOs\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"BO associated with dma-buf cannot be moved to VRAM\0A\00", align 1
@RADEON_CS_USE_VM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*)* @radeon_cs_parser_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cs_parser_relocs(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca %struct.radeon_cs_chunk*, align 8
  %5 = alloca %struct.radeon_cs_buckets, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_radeon_cs_reloc*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %14, i32 0, i32 11
  %16 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %15, align 8
  %17 = icmp eq %struct.radeon_cs_chunk* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %391

19:                                               ; preds = %1
  %20 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %20, i32 0, i32 11
  %22 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %21, align 8
  store %struct.radeon_cs_chunk* %22, %struct.radeon_cs_chunk** %4, align 8
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %23, i32 0, i32 10
  store i64 0, i64* %24, align 8
  %25 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 4
  %29 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* @__GFP_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call %struct.TYPE_18__* @kvmalloc_array(i32 %33, i32 4, i32 %36)
  %38 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %38, i32 0, i32 8
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %39, align 8
  %40 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %40, i32 0, i32 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = icmp eq %struct.TYPE_18__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %19
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %391

47:                                               ; preds = %19
  %48 = call i32 @radeon_cs_buckets_init(%struct.radeon_cs_buckets* %5)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %334, %47
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %337

55:                                               ; preds = %49
  %56 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %4, align 8
  %57 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = mul i32 %59, 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = bitcast i32* %62 to %struct.drm_radeon_cs_reloc*
  store %struct.drm_radeon_cs_reloc* %63, %struct.drm_radeon_cs_reloc** %9, align 8
  %64 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %65 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %68 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.drm_gem_object* @drm_gem_object_lookup(i32 %66, i32 %69)
  store %struct.drm_gem_object* %70, %struct.drm_gem_object** %10, align 8
  %71 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %72 = icmp eq %struct.drm_gem_object* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %55
  %74 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %75 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ENOENT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %391

80:                                               ; preds = %55
  %81 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %82 = call %struct.TYPE_19__* @gem_to_radeon_bo(%struct.drm_gem_object* %81)
  %83 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %83, i32 0, i32 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  store %struct.TYPE_19__* %82, %struct.TYPE_19__** %89, align 8
  %90 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %91 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RADEON_RELOC_PRIO_MASK, align 4
  %94 = and i32 %92, %93
  %95 = mul nsw i32 %94, 2
  %96 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %97 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = add nsw i32 %95, %102
  store i32 %103, i32* %11, align 4
  %104 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %105 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @R600_RING_TYPE_UVD_INDEX, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %157

109:                                              ; preds = %80
  %110 = load i32, i32* %6, align 4
  %111 = icmp ule i32 %110, 0
  br i1 %111, label %139, label %112

112:                                              ; preds = %109
  %113 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %113, i32 0, i32 5
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PCI_CAP_ID_AGP, align 4
  %121 = call i64 @pci_find_capability(i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %112
  %124 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %124, i32 0, i32 5
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CHIP_RS780, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %123
  %132 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %132, i32 0, i32 5
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CHIP_RS880, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %131, %123, %112, %109
  %140 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %141 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %142 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %141, i32 0, i32 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 8
  %148 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %149 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %150 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %149, i32 0, i32 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  store i32 %148, i32* %155, align 4
  %156 = load i32, i32* @RADEON_CS_MAX_PRIORITY, align 4
  store i32 %156, i32* %11, align 4
  br label %205

157:                                              ; preds = %131, %80
  %158 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %159 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %164 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  br label %170

166:                                              ; preds = %157
  %167 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %168 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  br label %170

170:                                              ; preds = %166, %162
  %171 = phi i32 [ %165, %162 ], [ %169, %166 ]
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @RADEON_GEM_DOMAIN_CPU, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %391

180:                                              ; preds = %170
  %181 = load i32, i32* %12, align 4
  %182 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %183 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %182, i32 0, i32 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  store i32 %181, i32* %188, align 8
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %180
  %193 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %194 = load i32, i32* %12, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %12, align 4
  br label %196

196:                                              ; preds = %192, %180
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %199 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %198, i32 0, i32 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  store i32 %197, i32* %204, align 4
  br label %205

205:                                              ; preds = %196, %139
  %206 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %207 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %206, i32 0, i32 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @radeon_ttm_tt_has_userptr(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %254

219:                                              ; preds = %205
  %220 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %221 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %220, i32 0, i32 8
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %219
  %233 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %2, align 4
  br label %391

236:                                              ; preds = %219
  store i32 1, i32* %7, align 4
  %237 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %13, align 4
  %239 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %240 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %239, i32 0, i32 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  store i32 %238, i32* %245, align 8
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %248 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %247, i32 0, i32 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %248, align 8
  %250 = load i32, i32* %6, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 1
  store i32 %246, i32* %253, align 4
  br label %254

254:                                              ; preds = %236, %205
  %255 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %256 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %255, i32 0, i32 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %256, align 8
  %258 = load i32, i32* %6, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %292

266:                                              ; preds = %254
  %267 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %268 = xor i32 %267, -1
  %269 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %270 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %269, i32 0, i32 8
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %270, align 8
  %272 = load i32, i32* %6, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, %268
  store i32 %277, i32* %275, align 4
  %278 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %279 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %278, i32 0, i32 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %279, align 8
  %281 = load i32, i32* %6, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %266
  %288 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %289 = load i32, i32* @EINVAL, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %2, align 4
  br label %391

291:                                              ; preds = %266
  br label %292

292:                                              ; preds = %291, %254
  %293 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %294 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %293, i32 0, i32 8
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %294, align 8
  %296 = load i32, i32* %6, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  %302 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %303 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %302, i32 0, i32 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %303, align 8
  %305 = load i32, i32* %6, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 2
  store %struct.TYPE_13__* %301, %struct.TYPE_13__** %309, align 8
  %310 = load %struct.drm_radeon_cs_reloc*, %struct.drm_radeon_cs_reloc** %9, align 8
  %311 = getelementptr inbounds %struct.drm_radeon_cs_reloc, %struct.drm_radeon_cs_reloc* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  %314 = xor i1 %313, true
  %315 = zext i1 %314 to i32
  %316 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %317 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %316, i32 0, i32 8
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %317, align 8
  %319 = load i32, i32* %6, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  store i32 %315, i32* %323, align 8
  %324 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %325 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %324, i32 0, i32 8
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %325, align 8
  %327 = load i32, i32* %6, align 4
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 1
  %332 = load i32, i32* %11, align 4
  %333 = call i32 @radeon_cs_buckets_add(%struct.radeon_cs_buckets* %5, i32* %331, i32 %332)
  br label %334

334:                                              ; preds = %292
  %335 = load i32, i32* %6, align 4
  %336 = add i32 %335, 1
  store i32 %336, i32* %6, align 4
  br label %49

337:                                              ; preds = %49
  %338 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %339 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %338, i32 0, i32 3
  %340 = call i32 @radeon_cs_buckets_get_list(%struct.radeon_cs_buckets* %5, i32* %339)
  %341 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %342 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @RADEON_CS_USE_VM, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %360

347:                                              ; preds = %337
  %348 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %349 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %348, i32 0, i32 5
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %349, align 8
  %351 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %352 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %351, i32 0, i32 6
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %356 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %355, i32 0, i32 3
  %357 = call i32 @radeon_vm_get_bos(%struct.TYPE_17__* %350, i32 %354, i32* %356)
  %358 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %359 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %358, i32 0, i32 7
  store i32 %357, i32* %359, align 4
  br label %360

360:                                              ; preds = %347, %337
  %361 = load i32, i32* %7, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %360
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 0
  %368 = call i32 @down_read(i32* %367)
  br label %369

369:                                              ; preds = %363, %360
  %370 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %371 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %370, i32 0, i32 5
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %371, align 8
  %373 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %374 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %373, i32 0, i32 4
  %375 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %376 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %375, i32 0, i32 3
  %377 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %378 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = call i32 @radeon_bo_list_validate(%struct.TYPE_17__* %372, i32* %374, i32* %376, i64 %379)
  store i32 %380, i32* %8, align 4
  %381 = load i32, i32* %7, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %369
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 0
  %388 = call i32 @up_read(i32* %387)
  br label %389

389:                                              ; preds = %383, %369
  %390 = load i32, i32* %8, align 4
  store i32 %390, i32* %2, align 4
  br label %391

391:                                              ; preds = %389, %287, %232, %176, %73, %44, %18
  %392 = load i32, i32* %2, align 4
  ret i32 %392
}

declare dso_local %struct.TYPE_18__* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @radeon_cs_buckets_init(%struct.radeon_cs_buckets*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.TYPE_19__* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @pci_find_capability(i32, i32) #1

declare dso_local i64 @radeon_ttm_tt_has_userptr(i32) #1

declare dso_local i32 @radeon_cs_buckets_add(%struct.radeon_cs_buckets*, i32*, i32) #1

declare dso_local i32 @radeon_cs_buckets_get_list(%struct.radeon_cs_buckets*, i32*) #1

declare dso_local i32 @radeon_vm_get_bos(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @radeon_bo_list_validate(%struct.TYPE_17__*, i32*, i32*, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
