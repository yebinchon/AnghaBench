; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_jpeg_ring_set_patch_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_jpeg_ring_set_patch_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32*, i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@PACKETJ_TYPE2 = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_REF_DATA = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_COND_RD_TIMER = common dso_local global i32 0, align 4
@PACKETJ_TYPE0 = common dso_local global i32 0, align 4
@mmUVD_JRBC_EXTERNAL_REG_BASE = common dso_local global i32 0, align 4
@PACKETJ_TYPE3 = common dso_local global i32 0, align 4
@PACKETJ_TYPE6 = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_RPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32)* @vcn_v1_0_jpeg_ring_set_patch_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_jpeg_ring_set_patch_ring(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i32 0, i32 2
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %5, align 8
  %14 = load i32, i32* @UVD, align 4
  %15 = load i32, i32* @mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW, align 4
  %16 = call i32 @SOC15_REG_OFFSET(i32 %14, i32 0, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 2
  store i32 %18, i32* %7, align 4
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @lower_32_bits(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @vcn_v1_0_jpeg_ring_patch_wreg(%struct.amdgpu_ring* %23, i32* %4, i32 %24, i32 %25)
  %27 = load i32, i32* @UVD, align 4
  %28 = load i32, i32* @mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH, align 4
  %29 = call i32 @SOC15_REG_OFFSET(i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 2
  store i32 %31, i32* %7, align 4
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @upper_32_bits(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @vcn_v1_0_jpeg_ring_patch_wreg(%struct.amdgpu_ring* %36, i32* %4, i32 %37, i32 %38)
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %61, %2
  %41 = load i32, i32* %10, align 4
  %42 = icmp sle i32 %41, 2
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load i32, i32* @PACKETJ_TYPE2, align 4
  %45 = call i8* @PACKETJ(i32 0, i32 0, i32 0, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %46, i32* %53, align 4
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %43
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %40

64:                                               ; preds = %40
  %65 = load i32, i32* @UVD, align 4
  %66 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %67 = call i32 @SOC15_REG_OFFSET(i32 %65, i32 0, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 %68, 2
  store i32 %69, i32* %7, align 4
  store i32 19, i32* %8, align 4
  %70 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @vcn_v1_0_jpeg_ring_patch_wreg(%struct.amdgpu_ring* %70, i32* %4, i32 %71, i32 %72)
  %74 = load i32, i32* @UVD, align 4
  %75 = load i32, i32* @mmUVD_JRBC_RB_REF_DATA, align 4
  %76 = call i32 @SOC15_REG_OFFSET(i32 %74, i32 0, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 %77, 2
  store i32 %78, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %79 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @vcn_v1_0_jpeg_ring_patch_wreg(%struct.amdgpu_ring* %79, i32* %4, i32 %80, i32 %81)
  %83 = load i32, i32* @UVD, align 4
  %84 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %85 = call i32 @SOC15_REG_OFFSET(i32 %83, i32 0, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = shl i32 %86, 2
  store i32 %87, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %88 = load i32, i32* @UVD, align 4
  %89 = load i32, i32* @mmUVD_JRBC_RB_COND_RD_TIMER, align 4
  %90 = call i32 @SOC15_REG_OFFSET(i32 %88, i32 0, i32 %89)
  %91 = load i32, i32* @PACKETJ_TYPE0, align 4
  %92 = call i8* @PACKETJ(i32 %90, i32 0, i32 0, i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %93, i32* %100, align 4
  %101 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %102 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 20972032, i32* %107, align 4
  %108 = load i32, i32* @UVD, align 4
  %109 = load i32, i32* @mmUVD_JRBC_RB_REF_DATA, align 4
  %110 = call i32 @SOC15_REG_OFFSET(i32 %108, i32 0, i32 %109)
  %111 = load i32, i32* @PACKETJ_TYPE0, align 4
  %112 = call i8* @PACKETJ(i32 %110, i32 0, i32 0, i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %115 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %113, i32* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %123 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 %121, i32* %128, align 4
  %129 = load i32, i32* @UVD, align 4
  %130 = load i32, i32* @mmUVD_JRBC_EXTERNAL_REG_BASE, align 4
  %131 = call i32 @SOC15_REG_OFFSET(i32 %129, i32 0, i32 %130)
  %132 = load i32, i32* @PACKETJ_TYPE0, align 4
  %133 = call i8* @PACKETJ(i32 %131, i32 0, i32 0, i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %136 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 %134, i32* %141, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp sge i32 %142, 129024
  br i1 %143, label %144, label %147

144:                                              ; preds = %64
  %145 = load i32, i32* %7, align 4
  %146 = icmp sle i32 %145, 139263
  br i1 %146, label %153, label %147

147:                                              ; preds = %144, %64
  %148 = load i32, i32* %7, align 4
  %149 = icmp sge i32 %148, 122880
  br i1 %149, label %150, label %173

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = icmp sle i32 %151, 123391
  br i1 %152, label %153, label %173

153:                                              ; preds = %150, %144
  %154 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %155 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 0, i32* %160, align 4
  %161 = load i32, i32* %7, align 4
  %162 = ashr i32 %161, 2
  %163 = load i32, i32* @PACKETJ_TYPE3, align 4
  %164 = call i8* @PACKETJ(i32 %162, i32 0, i32 0, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %167 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %165, i32* %172, align 4
  br label %192

173:                                              ; preds = %150, %147
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %176 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %4, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  store i32 %174, i32* %181, align 4
  %182 = load i32, i32* @PACKETJ_TYPE3, align 4
  %183 = call i8* @PACKETJ(i32 0, i32 0, i32 0, i32 %182)
  %184 = ptrtoint i8* %183 to i32
  %185 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %186 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %184, i32* %191, align 4
  br label %192

192:                                              ; preds = %173, %153
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %195 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %4, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  store i32 %193, i32* %200, align 4
  store i32 0, i32* %10, align 4
  br label %201

201:                                              ; preds = %222, %192
  %202 = load i32, i32* %10, align 4
  %203 = icmp sle i32 %202, 12
  br i1 %203, label %204, label %225

204:                                              ; preds = %201
  %205 = load i32, i32* @PACKETJ_TYPE6, align 4
  %206 = call i8* @PACKETJ(i32 0, i32 0, i32 0, i32 %205)
  %207 = ptrtoint i8* %206 to i32
  %208 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %209 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %4, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %4, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store i32 %207, i32* %214, align 4
  %215 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %216 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %4, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 0, i32* %221, align 4
  br label %222

222:                                              ; preds = %204
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %201

225:                                              ; preds = %201
  %226 = load i32, i32* @UVD, align 4
  %227 = load i32, i32* @mmUVD_JRBC_RB_RPTR, align 4
  %228 = call i32 @SOC15_REG_OFFSET(i32 %226, i32 0, i32 %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = shl i32 %229, 2
  store i32 %230, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %231 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @vcn_v1_0_jpeg_ring_patch_wreg(%struct.amdgpu_ring* %231, i32* %4, i32 %232, i32 %233)
  %235 = load i32, i32* @UVD, align 4
  %236 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %237 = call i32 @SOC15_REG_OFFSET(i32 %235, i32 0, i32 %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = shl i32 %238, 2
  store i32 %239, i32* %7, align 4
  store i32 18, i32* %8, align 4
  %240 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @vcn_v1_0_jpeg_ring_patch_wreg(%struct.amdgpu_ring* %240, i32* %4, i32 %241, i32 %242)
  ret void
}

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @vcn_v1_0_jpeg_ring_patch_wreg(%struct.amdgpu_ring*, i32*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i8* @PACKETJ(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
