; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_setup_sgio_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_reqmanager.c_setup_sgio_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.cpt_info_buffer = type { i32, i8*, i8*, i32*, i8*, i32*, i8*, i8* }
%struct.cpt_request_info = type { i32, i32, i32, i32 }

@MAX_SG_IN_CNT = common dso_local global i32 0, align 4
@MAX_SG_OUT_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Request SG components are higher than supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to setup gather list\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@SG_LIST_HDR_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Mapping DPTR Failed %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@COMPLETION_CODE_SIZE = common dso_local global i32 0, align 4
@COMPLETION_CODE_INIT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Mapping RPTR Failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_vf*, %struct.cpt_info_buffer*, %struct.cpt_request_info*)* @setup_sgio_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sgio_list(%struct.cpt_vf* %0, %struct.cpt_info_buffer* %1, %struct.cpt_request_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpt_vf*, align 8
  %6 = alloca %struct.cpt_info_buffer*, align 8
  %7 = alloca %struct.cpt_request_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  store %struct.cpt_vf* %0, %struct.cpt_vf** %5, align 8
  store %struct.cpt_info_buffer* %1, %struct.cpt_info_buffer** %6, align 8
  store %struct.cpt_request_info* %2, %struct.cpt_request_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %13 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %11, align 8
  %15 = load %struct.cpt_request_info*, %struct.cpt_request_info** %7, align 8
  %16 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAX_SG_IN_CNT, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.cpt_request_info*, %struct.cpt_request_info** %7, align 8
  %22 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAX_SG_OUT_CNT, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20, %3
  %27 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %269

32:                                               ; preds = %20
  %33 = load %struct.cpt_request_info*, %struct.cpt_request_info** %7, align 8
  %34 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 3
  %37 = sdiv i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kzalloc(i32 %41, i32 %42)
  %44 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %46, i32 0, i32 7
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %32
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %269

53:                                               ; preds = %32
  %54 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %55 = load %struct.cpt_request_info*, %struct.cpt_request_info** %7, align 8
  %56 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cpt_request_info*, %struct.cpt_request_info** %7, align 8
  %59 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %61, i32 0, i32 7
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @setup_sgio_components(%struct.cpt_vf* %54, i32 %57, i32 %60, i8* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @EFAULT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %269

73:                                               ; preds = %53
  %74 = load %struct.cpt_request_info*, %struct.cpt_request_info** %7, align 8
  %75 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 3
  %78 = sdiv i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @kzalloc(i32 %82, i32 %83)
  %85 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %86 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %88 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %87, i32 0, i32 6
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %73
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %269

94:                                               ; preds = %73
  %95 = load %struct.cpt_vf*, %struct.cpt_vf** %5, align 8
  %96 = load %struct.cpt_request_info*, %struct.cpt_request_info** %7, align 8
  %97 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cpt_request_info*, %struct.cpt_request_info** %7, align 8
  %100 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %103 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %102, i32 0, i32 6
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @setup_sgio_components(%struct.cpt_vf* %95, i32 %98, i32 %101, i8* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %94
  %109 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @EFAULT, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %10, align 4
  br label %269

114:                                              ; preds = %94
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* @SG_LIST_HDR_SIZE, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %121 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %123 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call i8* @kzalloc(i32 %124, i32 %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %129 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %128, i32 0, i32 5
  store i32* %127, i32** %129, align 8
  %130 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %131 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %114
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %10, align 4
  br label %269

137:                                              ; preds = %114
  %138 = load %struct.cpt_request_info*, %struct.cpt_request_info** %7, align 8
  %139 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %142 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %140, i32* %144, align 4
  %145 = load %struct.cpt_request_info*, %struct.cpt_request_info** %7, align 8
  %146 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %149 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %147, i32* %151, align 4
  %152 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %153 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  store i32 0, i32* %155, align 4
  %156 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %157 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  store i32 0, i32* %159, align 4
  %160 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %161 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @cpu_to_be64p(i32* %162)
  %164 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %165 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  store i32 %163, i32* %166, align 4
  %167 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %168 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 8
  %171 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %172 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %171, i32 0, i32 7
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @memcpy(i32* %170, i8* %173, i32 %174)
  %176 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %177 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 8, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %184 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %183, i32 0, i32 6
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @memcpy(i32* %182, i8* %185, i32 %186)
  %188 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %189 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %188, i32 0, i32 0
  %190 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %191 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = bitcast i32* %192 to i8*
  %194 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %195 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %198 = call i8* @dma_map_single(i32* %189, i8* %193, i32 %196, i32 %197)
  %199 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %200 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %199, i32 0, i32 4
  store i8* %198, i8** %200, align 8
  %201 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %202 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %201, i32 0, i32 0
  %203 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %204 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %203, i32 0, i32 4
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @dma_mapping_error(i32* %202, i8* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %137
  %209 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %210 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %209, i32 0, i32 0
  %211 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %212 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32*, i8*, ...) @dev_err(i32* %210, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* @EIO, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %10, align 4
  br label %269

217:                                              ; preds = %137
  %218 = load i32, i32* @COMPLETION_CODE_SIZE, align 4
  %219 = load i32, i32* @GFP_KERNEL, align 4
  %220 = call i8* @kzalloc(i32 %218, i32 %219)
  %221 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %222 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %224 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %217
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %10, align 4
  br label %269

230:                                              ; preds = %217
  %231 = load i64, i64* @COMPLETION_CODE_INIT, align 8
  %232 = trunc i64 %231 to i32
  %233 = xor i32 %232, -1
  %234 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %235 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %234, i32 0, i32 2
  %236 = load i8*, i8** %235, align 8
  %237 = bitcast i8* %236 to i32*
  store i32 %233, i32* %237, align 4
  %238 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %239 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = bitcast i8* %240 to i32*
  %242 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %243 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %242, i32 0, i32 3
  store i32* %241, i32** %243, align 8
  %244 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %245 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %244, i32 0, i32 0
  %246 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %247 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %246, i32 0, i32 2
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* @COMPLETION_CODE_SIZE, align 4
  %250 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %251 = call i8* @dma_map_single(i32* %245, i8* %248, i32 %249, i32 %250)
  %252 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %253 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %252, i32 0, i32 1
  store i8* %251, i8** %253, align 8
  %254 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %255 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %254, i32 0, i32 0
  %256 = load %struct.cpt_info_buffer*, %struct.cpt_info_buffer** %6, align 8
  %257 = getelementptr inbounds %struct.cpt_info_buffer, %struct.cpt_info_buffer* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i64 @dma_mapping_error(i32* %255, i8* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %230
  %262 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %263 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %262, i32 0, i32 0
  %264 = load i32, i32* @COMPLETION_CODE_SIZE, align 4
  %265 = call i32 (i32*, i8*, ...) @dev_err(i32* %263, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %264)
  %266 = load i32, i32* @EIO, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %10, align 4
  br label %269

268:                                              ; preds = %230
  store i32 0, i32* %4, align 4
  br label %271

269:                                              ; preds = %261, %227, %208, %134, %108, %91, %67, %50, %26
  %270 = load i32, i32* %10, align 4
  store i32 %270, i32* %4, align 4
  br label %271

271:                                              ; preds = %269, %268
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @setup_sgio_components(%struct.cpt_vf*, i32, i32, i8*) #1

declare dso_local i32 @cpu_to_be64p(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
