; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_auth_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_auth_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }
%struct.icp_qat_fw_auth_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.icp_qat_css_hdr = type { i64 }
%struct.icp_qat_auth_chunk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.icp_firml_dram_desc = type { i32, %struct.icp_qat_fw_auth_desc*, i32 }

@ICP_QAT_AE_IMG_OFFSET = common dso_local global i32 0, align 4
@ICP_QAT_CSS_MAX_IMAGE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"QAT: error, input image size overflow %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CSS_AE_FIRMWARE = common dso_local global i64 0, align 8
@ICP_QAT_CSS_AE_SIMG_LEN = common dso_local global i32 0, align 4
@ICP_QAT_CSS_FWSK_PAD_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"QAT: error, allocate continuous dram fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BITS_IN_DWORD = common dso_local global i32 0, align 4
@ICP_QAT_CSS_FWSK_MODULUS_LEN = common dso_local global i32 0, align 4
@ICP_QAT_CSS_FWSK_PUB_LEN = common dso_local global i32 0, align 4
@ICP_QAT_CSS_FWSK_EXPONENT_LEN = common dso_local global i32 0, align 4
@ICP_QAT_CSS_SIGNATURE_LEN = common dso_local global i32 0, align 4
@ICP_QAT_SIMG_AE_INIT_SEQ_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8*, i32, %struct.icp_qat_fw_auth_desc**)* @qat_uclo_map_auth_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_map_auth_fw(%struct.icp_qat_fw_loader_handle* %0, i8* %1, i32 %2, %struct.icp_qat_fw_auth_desc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.icp_qat_fw_auth_desc**, align 8
  %10 = alloca %struct.icp_qat_css_hdr*, align 8
  %11 = alloca %struct.icp_qat_fw_auth_desc*, align 8
  %12 = alloca %struct.icp_qat_auth_chunk*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.icp_firml_dram_desc, align 8
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.icp_qat_fw_auth_desc** %3, %struct.icp_qat_fw_auth_desc*** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.icp_qat_css_hdr*
  store %struct.icp_qat_css_hdr* %20, %struct.icp_qat_css_hdr** %10, align 8
  store i32 68, i32* %17, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ICP_QAT_AE_IMG_OFFSET, align 4
  %23 = load i32, i32* @ICP_QAT_CSS_MAX_IMAGE_LEN, align 4
  %24 = add i32 %22, %23
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %278

31:                                               ; preds = %4
  %32 = load %struct.icp_qat_css_hdr*, %struct.icp_qat_css_hdr** %10, align 8
  %33 = getelementptr inbounds %struct.icp_qat_css_hdr, %struct.icp_qat_css_hdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CSS_AE_FIRMWARE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @ICP_QAT_CSS_AE_SIMG_LEN, align 4
  %39 = load i32, i32* %17, align 4
  %40 = add i32 %38, %39
  br label %47

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ICP_QAT_CSS_FWSK_PAD_LEN, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* %17, align 4
  %46 = add i32 %44, %45
  br label %47

47:                                               ; preds = %41, %37
  %48 = phi i32 [ %40, %37 ], [ %46, %41 ]
  store i32 %48, i32* %16, align 4
  %49 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i64 @qat_uclo_simg_alloc(%struct.icp_qat_fw_loader_handle* %49, %struct.icp_firml_dram_desc* %18, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %278

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %18, i32 0, i32 1
  %59 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %58, align 8
  %60 = bitcast %struct.icp_qat_fw_auth_desc* %59 to %struct.icp_qat_auth_chunk*
  store %struct.icp_qat_auth_chunk* %60, %struct.icp_qat_auth_chunk** %12, align 8
  %61 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %18, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.icp_qat_auth_chunk*, %struct.icp_qat_auth_chunk** %12, align 8
  %64 = getelementptr inbounds %struct.icp_qat_auth_chunk, %struct.icp_qat_auth_chunk* %63, i32 0, i32 16
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %18, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.icp_qat_auth_chunk*, %struct.icp_qat_auth_chunk** %12, align 8
  %68 = getelementptr inbounds %struct.icp_qat_auth_chunk, %struct.icp_qat_auth_chunk* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %18, i32 0, i32 1
  %70 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %69, align 8
  %71 = ptrtoint %struct.icp_qat_fw_auth_desc* %70 to i64
  %72 = load i32, i32* %17, align 4
  %73 = zext i32 %72 to i64
  %74 = add i64 %71, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %18, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = add i32 %77, %78
  store i32 %79, i32* %14, align 4
  %80 = getelementptr inbounds %struct.icp_firml_dram_desc, %struct.icp_firml_dram_desc* %18, i32 0, i32 1
  %81 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %80, align 8
  store %struct.icp_qat_fw_auth_desc* %81, %struct.icp_qat_fw_auth_desc** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @BITS_IN_DWORD, align 4
  %84 = ashr i32 %82, %83
  %85 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %86 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %89 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @memcpy(i8* %93, i8* %94, i32 8)
  %96 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %97 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %100 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ADD_ADDR(i32 %98, i32 %101)
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %107, 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @BITS_IN_DWORD, align 4
  %112 = ashr i32 %110, %111
  %113 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %114 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %117 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 8
  %123 = load i32, i32* @ICP_QAT_CSS_FWSK_MODULUS_LEN, align 4
  %124 = call i32 @memcpy(i8* %120, i8* %122, i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @ICP_QAT_CSS_FWSK_MODULUS_LEN, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = load i32, i32* @ICP_QAT_CSS_FWSK_PAD_LEN, align 4
  %131 = call i32 @memset(i8* %129, i32 0, i32 %130)
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @ICP_QAT_CSS_FWSK_MODULUS_LEN, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* @ICP_QAT_CSS_FWSK_PAD_LEN, align 4
  %136 = add i32 %134, %135
  %137 = zext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 8
  %141 = load i32, i32* @ICP_QAT_CSS_FWSK_MODULUS_LEN, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = call i32 @memcpy(i8* %138, i8* %143, i32 4)
  %145 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %146 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %149 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ADD_ADDR(i32 %147, i32 %150)
  %152 = load i32, i32* @ICP_QAT_CSS_FWSK_PUB_LEN, align 4
  %153 = add nsw i32 %151, %152
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @ICP_QAT_CSS_FWSK_PUB_LEN, align 4
  %156 = add nsw i32 %154, %155
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @BITS_IN_DWORD, align 4
  %159 = ashr i32 %157, %158
  %160 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %161 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %164 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = load i8*, i8** %7, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 8
  %170 = load i32, i32* @ICP_QAT_CSS_FWSK_MODULUS_LEN, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i32, i32* @ICP_QAT_CSS_FWSK_EXPONENT_LEN, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i32, i32* @ICP_QAT_CSS_SIGNATURE_LEN, align 4
  %177 = call i32 @memcpy(i8* %167, i8* %175, i32 %176)
  %178 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %179 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %182 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ADD_ADDR(i32 %180, i32 %183)
  %185 = load i32, i32* @ICP_QAT_CSS_SIGNATURE_LEN, align 4
  %186 = add nsw i32 %184, %185
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* @ICP_QAT_CSS_SIGNATURE_LEN, align 4
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @BITS_IN_DWORD, align 4
  %192 = ashr i32 %190, %191
  %193 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %194 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %193, i32 0, i32 7
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %197 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %196, i32 0, i32 8
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @ICP_QAT_AE_IMG_OFFSET, align 4
  %200 = sub i32 %198, %199
  %201 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %202 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %201, i32 0, i32 9
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = load i8*, i8** %7, align 8
  %207 = load i32, i32* @ICP_QAT_AE_IMG_OFFSET, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %211 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @memcpy(i8* %205, i8* %209, i32 %212)
  %214 = load i32, i32* %15, align 4
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = inttoptr i64 %216 to %struct.icp_qat_css_hdr*
  %218 = getelementptr inbounds %struct.icp_qat_css_hdr, %struct.icp_qat_css_hdr* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @CSS_AE_FIRMWARE, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %264

222:                                              ; preds = %57
  %223 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %224 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %227 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %226, i32 0, i32 10
  store i32 %225, i32* %227, align 4
  %228 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %229 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %232 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %231, i32 0, i32 11
  store i32 %230, i32* %232, align 4
  %233 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %234 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %237 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %236, i32 0, i32 11
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @ADD_ADDR(i32 %235, i32 %238)
  %240 = sext i32 %239 to i64
  %241 = add i64 %240, 4
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %14, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* @BITS_IN_DWORD, align 4
  %245 = ashr i32 %243, %244
  %246 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %247 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %246, i32 0, i32 12
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %250 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %249, i32 0, i32 13
  store i32 %248, i32* %250, align 4
  %251 = load i64, i64* @ICP_QAT_SIMG_AE_INIT_SEQ_LEN, align 8
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %253, %251
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %14, align 4
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* @BITS_IN_DWORD, align 4
  %258 = ashr i32 %256, %257
  %259 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %260 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %259, i32 0, i32 14
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* %14, align 4
  %262 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %263 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %262, i32 0, i32 15
  store i32 %261, i32* %263, align 4
  br label %275

264:                                              ; preds = %57
  %265 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %266 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %269 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %268, i32 0, i32 14
  store i32 %267, i32* %269, align 4
  %270 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %271 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %270, i32 0, i32 8
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %274 = getelementptr inbounds %struct.icp_qat_fw_auth_desc, %struct.icp_qat_fw_auth_desc* %273, i32 0, i32 15
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %264, %222
  %276 = load %struct.icp_qat_fw_auth_desc*, %struct.icp_qat_fw_auth_desc** %11, align 8
  %277 = load %struct.icp_qat_fw_auth_desc**, %struct.icp_qat_fw_auth_desc*** %9, align 8
  store %struct.icp_qat_fw_auth_desc* %276, %struct.icp_qat_fw_auth_desc** %277, align 8
  store i32 0, i32* %5, align 4
  br label %278

278:                                              ; preds = %275, %53, %26
  %279 = load i32, i32* %5, align 4
  ret i32 %279
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @qat_uclo_simg_alloc(%struct.icp_qat_fw_loader_handle*, %struct.icp_firml_dram_desc*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ADD_ADDR(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
