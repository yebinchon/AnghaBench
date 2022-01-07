; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_page_to_frags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_page_to_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.qib_user_sdma_queue = type { i32 }
%struct.qib_user_sdma_pkt = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i8*, i32, i64 }
%struct.page = type { i32 }
%struct.qib_message_header = type { i32, i32*, i8**, %struct.TYPE_7__, i8** }
%struct.TYPE_7__ = type { i8*, i8*, i32 }
%union.qib_seqnum = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@QIB_LRH_BTH = common dso_local global i32 0, align 4
@QLOGIC_IB_I_TID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, %struct.page*, i64, i64, i64, i8*)* @qib_user_sdma_page_to_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_user_sdma_page_to_frags(%struct.qib_devdata* %0, %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_pkt* %2, %struct.page* %3, i64 %4, i64 %5, i64 %6, i8* %7) #0 {
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_user_sdma_queue*, align 8
  %11 = alloca %struct.qib_user_sdma_pkt*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.qib_message_header*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %union.qib_seqnum, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %9, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %10, align 8
  store %struct.qib_user_sdma_pkt* %2, %struct.qib_user_sdma_pkt** %11, align 8
  store %struct.page* %3, %struct.page** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* %7, i8** %16, align 8
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.page*, %struct.page** %12, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i8* @dma_map_page(i32* %32, %struct.page* %33, i64 %34, i64 %35, i32 %36)
  store i8* %37, i8** %27, align 8
  store i32 0, i32* %28, align 4
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8*, i8** %27, align 8
  %43 = call i64 @dma_mapping_error(i32* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = call i32 @put_user_page(%struct.page* %49)
  br label %56

51:                                               ; preds = %45
  %52 = load %struct.page*, %struct.page** %12, align 8
  %53 = call i32 @kunmap(%struct.page* %52)
  %54 = load %struct.page*, %struct.page** %12, align 8
  %55 = call i32 @__free_page(%struct.page* %54)
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %28, align 4
  br label %692

59:                                               ; preds = %8
  store i64 0, i64* %14, align 8
  store i64 1, i64* %23, align 8
  br label %60

60:                                               ; preds = %684, %59
  %61 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %62 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load i64, i64* %15, align 8
  %67 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %68 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %67, i32 0, i32 9
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %71 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %66, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %65
  %78 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %79 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %78, i32 0, i32 9
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %82 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %20, align 8
  br label %89

87:                                               ; preds = %65, %60
  %88 = load i64, i64* %15, align 8
  store i64 %88, i64* %20, align 8
  br label %89

89:                                               ; preds = %87, %77
  store i64 0, i64* %22, align 8
  %90 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %91 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %20, align 8
  %95 = add nsw i64 %93, %94
  %96 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %97 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %95, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %89
  %101 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %102 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %105 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %103, %107
  store i64 %108, i64* %20, align 8
  store i64 1, i64* %22, align 8
  br label %137

109:                                              ; preds = %89
  %110 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %111 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %110, i32 0, i32 8
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %109
  %115 = load i64, i64* %20, align 8
  %116 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %117 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %116, i32 0, i32 9
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %120 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %115, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  store i64 1, i64* %22, align 8
  br label %127

127:                                              ; preds = %126, %114
  br label %136

128:                                              ; preds = %109
  %129 = load i64, i64* %20, align 8
  %130 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %131 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i64 1, i64* %22, align 8
  br label %135

135:                                              ; preds = %134, %128
  br label %136

136:                                              ; preds = %135, %127
  br label %137

137:                                              ; preds = %136, %100
  %138 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %139 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %140 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %20, align 8
  %144 = load i64, i64* %22, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %23, align 8
  %147 = load %struct.page*, %struct.page** %12, align 8
  %148 = load i8*, i8** %16, align 8
  %149 = load i8*, i8** %27, align 8
  %150 = load i64, i64* %15, align 8
  %151 = call i32 @qib_user_sdma_init_frag(%struct.qib_user_sdma_pkt* %138, i64 %141, i64 %142, i64 %143, i32 0, i64 %144, i64 %145, i64 %146, %struct.page* %147, i8* %148, i8* %149, i64 %150)
  %152 = load i64, i64* %20, align 8
  %153 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %154 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, %152
  store i64 %156, i64* %154, align 8
  %157 = load i64, i64* %20, align 8
  %158 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %159 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 8
  %164 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %165 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %165, align 8
  %168 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %169 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %172 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %170, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %137
  %176 = load i32, i32* @EFAULT, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %28, align 4
  br label %692

178:                                              ; preds = %137
  %179 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %180 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %255

183:                                              ; preds = %178
  %184 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %185 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %184, i32 0, i32 10
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %188 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %254, label %194

194:                                              ; preds = %183
  %195 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %196 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %195, i32 0, i32 0
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %200 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %199, i32 0, i32 10
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %203 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %209 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %208, i32 0, i32 10
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %212 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @DMA_TO_DEVICE, align 4
  %218 = call i8* @dma_map_single(i32* %198, i64 %207, i32 %216, i32 %217)
  %219 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %220 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %219, i32 0, i32 10
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %223 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 2
  store i8* %218, i8** %226, align 8
  %227 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %228 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %227, i32 0, i32 0
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %232 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %231, i32 0, i32 10
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %235 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %234, i32 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  %239 = load i8*, i8** %238, align 8
  %240 = call i64 @dma_mapping_error(i32* %230, i8* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %194
  %243 = load i32, i32* @ENOMEM, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %28, align 4
  br label %692

245:                                              ; preds = %194
  %246 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %247 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %246, i32 0, i32 10
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %250 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  store i32 1, i32* %253, align 8
  br label %254

254:                                              ; preds = %245, %183
  br label %692

255:                                              ; preds = %178
  %256 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %257 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %256, i32 0, i32 8
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %313

260:                                              ; preds = %255
  %261 = load i64, i64* %20, align 8
  %262 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %263 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %262, i32 0, i32 9
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %266 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = sub nsw i64 %270, %261
  store i64 %271, i64* %269, align 8
  %272 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %273 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %272, i32 0, i32 9
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %273, align 8
  %275 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %276 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %296

282:                                              ; preds = %260
  %283 = load i64, i64* %20, align 8
  %284 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %285 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %284, i32 0, i32 9
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %288 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %283
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %291, align 8
  br label %312

296:                                              ; preds = %260
  %297 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %298 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %298, align 8
  %301 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %302 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %305 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %304, i32 0, i32 7
  %306 = load i64, i64* %305, align 8
  %307 = icmp eq i64 %303, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %296
  %309 = load i32, i32* @EFAULT, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %28, align 4
  br label %692

311:                                              ; preds = %296
  br label %312

312:                                              ; preds = %311, %282
  br label %313

313:                                              ; preds = %312, %255
  %314 = load i64, i64* %22, align 8
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  br label %692

317:                                              ; preds = %313
  %318 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %319 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %318, i32 0, i32 10
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %319, align 8
  %321 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %322 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %321, i32 0, i32 6
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  store i64 %326, i64* %21, align 8
  %327 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %10, align 8
  %328 = load i64, i64* %21, align 8
  %329 = call i8* @qib_user_sdma_alloc_header(%struct.qib_user_sdma_queue* %327, i64 %328, i8** %26)
  store i8* %329, i8** %18, align 8
  %330 = load i8*, i8** %18, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %335, label %332

332:                                              ; preds = %317
  %333 = load i32, i32* @ENOMEM, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %28, align 4
  br label %692

335:                                              ; preds = %317
  %336 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %337 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %336, i32 0, i32 10
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %337, align 8
  %339 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %340 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %339, i32 0, i32 6
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = inttoptr i64 %344 to i8**
  store i8** %345, i8*** %17, align 8
  %346 = load i8*, i8** %18, align 8
  %347 = load i8**, i8*** %17, align 8
  %348 = load i64, i64* %21, align 8
  %349 = call i32 @memcpy(i8* %346, i8** %347, i64 %348)
  %350 = load i8**, i8*** %17, align 8
  %351 = getelementptr inbounds i8*, i8** %350, i64 4
  %352 = bitcast i8** %351 to %struct.qib_message_header*
  store %struct.qib_message_header* %352, %struct.qib_message_header** %19, align 8
  %353 = load i8**, i8*** %17, align 8
  %354 = getelementptr inbounds i8*, i8** %353, i64 0
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @le16_to_cpu(i8* %355)
  %357 = sext i32 %356 to i64
  %358 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %359 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %358, i32 0, i32 3
  %360 = load i64, i64* %359, align 8
  %361 = ashr i64 %360, 2
  %362 = sub nsw i64 %357, %361
  %363 = trunc i64 %362 to i32
  %364 = call i8* @cpu_to_le16(i32 %363)
  %365 = load i8**, i8*** %17, align 8
  %366 = getelementptr inbounds i8*, i8** %365, i64 0
  store i8* %364, i8** %366, align 8
  %367 = load i8**, i8*** %17, align 8
  %368 = getelementptr inbounds i8*, i8** %367, i64 0
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @le16_to_cpu(i8* %369)
  %371 = call i8* @cpu_to_be16(i32 %370)
  %372 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %373 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %372, i32 0, i32 4
  %374 = load i8**, i8*** %373, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 2
  store i8* %371, i8** %375, align 8
  %376 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %377 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %376, i32 0, i32 8
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %395

380:                                              ; preds = %335
  %381 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %382 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %381, i32 0, i32 3
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 0
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @le16_to_cpu(i8* %384)
  %386 = or i32 %385, 2
  %387 = call i8* @cpu_to_le16(i32 %386)
  %388 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %389 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %388, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 0
  store i8* %387, i8** %390, align 8
  %391 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %392 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = and i32 %393, -37
  store i32 %394, i32* %392, align 8
  br label %412

395:                                              ; preds = %335
  %396 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %397 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %396, i32 0, i32 2
  %398 = load i8**, i8*** %397, align 8
  %399 = getelementptr inbounds i8*, i8** %398, i64 0
  %400 = load i8*, i8** %399, align 8
  %401 = call i32 @be32_to_cpu(i8* %400)
  %402 = and i32 %401, -3145729
  %403 = call i8* @cpu_to_be32(i32 %402)
  %404 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %405 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %404, i32 0, i32 2
  %406 = load i8**, i8*** %405, align 8
  %407 = getelementptr inbounds i8*, i8** %406, i64 0
  store i8* %403, i8** %407, align 8
  %408 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %409 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = and i32 %410, -5
  store i32 %411, i32* %409, align 8
  br label %412

412:                                              ; preds = %395, %380
  %413 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %414 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %413, i32 0, i32 3
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @le32_to_cpu(i32 %416)
  store i32 %417, i32* %24, align 4
  %418 = load i32, i32* @QIB_LRH_BTH, align 4
  %419 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %420 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %419, i32 0, i32 4
  %421 = load i8**, i8*** %420, align 8
  %422 = getelementptr inbounds i8*, i8** %421, i64 2
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @be16_to_cpu(i8* %423)
  %425 = add nsw i32 %418, %424
  %426 = load i32, i32* %24, align 4
  %427 = ashr i32 %426, 16
  %428 = and i32 %427, 65535
  %429 = sub nsw i32 %425, %428
  %430 = load i32, i32* %24, align 4
  %431 = and i32 %430, 65535
  %432 = sub nsw i32 %429, %431
  %433 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %434 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %433, i32 0, i32 3
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 0
  %436 = load i8*, i8** %435, align 8
  %437 = call i32 @le16_to_cpu(i8* %436)
  %438 = sub nsw i32 %432, %437
  %439 = call i8* @cpu_to_le16(i32 %438)
  %440 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %441 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %440, i32 0, i32 3
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %441, i32 0, i32 1
  store i8* %439, i8** %442, align 8
  %443 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %444 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %443, i32 0, i32 10
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %444, align 8
  %446 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %447 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %446, i32 0, i32 6
  %448 = load i64, i64* %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 2
  %451 = load i8*, i8** %450, align 8
  %452 = icmp ne i8* %451, null
  br i1 %452, label %513, label %453

453:                                              ; preds = %412
  %454 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %455 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %454, i32 0, i32 0
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 0
  %458 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %459 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %458, i32 0, i32 10
  %460 = load %struct.TYPE_5__*, %struct.TYPE_5__** %459, align 8
  %461 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %462 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %461, i32 0, i32 6
  %463 = load i64, i64* %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 4
  %466 = load i64, i64* %465, align 8
  %467 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %468 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %467, i32 0, i32 10
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** %468, align 8
  %470 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %471 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %470, i32 0, i32 6
  %472 = load i64, i64* %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @DMA_TO_DEVICE, align 4
  %477 = call i8* @dma_map_single(i32* %457, i64 %466, i32 %475, i32 %476)
  %478 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %479 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %478, i32 0, i32 10
  %480 = load %struct.TYPE_5__*, %struct.TYPE_5__** %479, align 8
  %481 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %482 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %481, i32 0, i32 6
  %483 = load i64, i64* %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 2
  store i8* %477, i8** %485, align 8
  %486 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %487 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %486, i32 0, i32 0
  %488 = load %struct.TYPE_8__*, %struct.TYPE_8__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 0
  %490 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %491 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %490, i32 0, i32 10
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %491, align 8
  %493 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %494 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %493, i32 0, i32 6
  %495 = load i64, i64* %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %496, i32 0, i32 2
  %498 = load i8*, i8** %497, align 8
  %499 = call i64 @dma_mapping_error(i32* %489, i8* %498)
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %504

501:                                              ; preds = %453
  %502 = load i32, i32* @ENOMEM, align 4
  %503 = sub nsw i32 0, %502
  store i32 %503, i32* %28, align 4
  br label %692

504:                                              ; preds = %453
  %505 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %506 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %505, i32 0, i32 10
  %507 = load %struct.TYPE_5__*, %struct.TYPE_5__** %506, align 8
  %508 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %509 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %508, i32 0, i32 6
  %510 = load i64, i64* %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %507, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i32 0, i32 0
  store i32 1, i32* %512, align 8
  br label %513

513:                                              ; preds = %504, %412
  %514 = load i8*, i8** %18, align 8
  %515 = bitcast i8* %514 to i8**
  store i8** %515, i8*** %17, align 8
  %516 = load i8**, i8*** %17, align 8
  %517 = getelementptr inbounds i8*, i8** %516, i64 4
  %518 = bitcast i8** %517 to %struct.qib_message_header*
  store %struct.qib_message_header* %518, %struct.qib_message_header** %19, align 8
  %519 = load i8**, i8*** %17, align 8
  %520 = getelementptr inbounds i8*, i8** %519, i64 0
  %521 = load i8*, i8** %520, align 8
  %522 = call i32 @le16_to_cpu(i8* %521)
  %523 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %524 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 8
  %526 = ashr i32 %525, 2
  %527 = sub nsw i32 %522, %526
  %528 = call i8* @cpu_to_le16(i32 %527)
  %529 = load i8**, i8*** %17, align 8
  %530 = getelementptr inbounds i8*, i8** %529, i64 0
  store i8* %528, i8** %530, align 8
  %531 = load i8**, i8*** %17, align 8
  %532 = getelementptr inbounds i8*, i8** %531, i64 0
  %533 = load i8*, i8** %532, align 8
  %534 = call i32 @le16_to_cpu(i8* %533)
  %535 = call i8* @cpu_to_be16(i32 %534)
  %536 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %537 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %536, i32 0, i32 4
  %538 = load i8**, i8*** %537, align 8
  %539 = getelementptr inbounds i8*, i8** %538, i64 2
  store i8* %535, i8** %539, align 8
  %540 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %541 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %540, i32 0, i32 8
  %542 = load i64, i64* %541, align 8
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %578

544:                                              ; preds = %513
  %545 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %546 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %545, i32 0, i32 3
  %547 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  %549 = call i32 @le32_to_cpu(i32 %548)
  %550 = and i32 %549, -16777216
  %551 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %552 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %551, i32 0, i32 9
  %553 = load %struct.TYPE_6__*, %struct.TYPE_6__** %552, align 8
  %554 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %555 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %554, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i64 %556
  %558 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %557, i32 0, i32 2
  %559 = load i32, i32* %558, align 4
  %560 = load i32, i32* @QLOGIC_IB_I_TID_SHIFT, align 4
  %561 = shl i32 %559, %560
  %562 = add i32 %550, %561
  %563 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %564 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %563, i32 0, i32 9
  %565 = load %struct.TYPE_6__*, %struct.TYPE_6__** %564, align 8
  %566 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %567 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %565, i64 %568
  %570 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 8
  %572 = ashr i32 %571, 2
  %573 = add i32 %562, %572
  %574 = call i32 @cpu_to_le32(i32 %573)
  %575 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %576 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %575, i32 0, i32 3
  %577 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %576, i32 0, i32 2
  store i32 %574, i32* %577, align 8
  br label %588

578:                                              ; preds = %513
  %579 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %580 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 8
  %582 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %583 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %582, i32 0, i32 1
  %584 = load i32*, i32** %583, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 2
  %586 = load i32, i32* %585, align 4
  %587 = add nsw i32 %586, %581
  store i32 %587, i32* %585, align 4
  br label %588

588:                                              ; preds = %578, %544
  %589 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %590 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %589, i32 0, i32 3
  %591 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 8
  %593 = call i32 @le32_to_cpu(i32 %592)
  store i32 %593, i32* %24, align 4
  %594 = load i32, i32* @QIB_LRH_BTH, align 4
  %595 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %596 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %595, i32 0, i32 4
  %597 = load i8**, i8*** %596, align 8
  %598 = getelementptr inbounds i8*, i8** %597, i64 2
  %599 = load i8*, i8** %598, align 8
  %600 = call i32 @be16_to_cpu(i8* %599)
  %601 = add nsw i32 %594, %600
  %602 = load i32, i32* %24, align 4
  %603 = ashr i32 %602, 16
  %604 = and i32 %603, 65535
  %605 = sub nsw i32 %601, %604
  %606 = load i32, i32* %24, align 4
  %607 = and i32 %606, 65535
  %608 = sub nsw i32 %605, %607
  %609 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %610 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %609, i32 0, i32 3
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 0
  %612 = load i8*, i8** %611, align 8
  %613 = call i32 @le16_to_cpu(i8* %612)
  %614 = sub nsw i32 %608, %613
  %615 = call i8* @cpu_to_le16(i32 %614)
  %616 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %617 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %616, i32 0, i32 3
  %618 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %617, i32 0, i32 1
  store i8* %615, i8** %618, align 8
  %619 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %620 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %619, i32 0, i32 2
  %621 = load i8**, i8*** %620, align 8
  %622 = getelementptr inbounds i8*, i8** %621, i64 2
  %623 = load i8*, i8** %622, align 8
  %624 = call i32 @be32_to_cpu(i8* %623)
  %625 = bitcast %union.qib_seqnum* %25 to i32*
  store i32 %624, i32* %625, align 4
  %626 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %627 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %626, i32 0, i32 8
  %628 = load i64, i64* %627, align 8
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %634

630:                                              ; preds = %588
  %631 = bitcast %union.qib_seqnum* %25 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %631, align 4
  br label %638

634:                                              ; preds = %588
  %635 = bitcast %union.qib_seqnum* %25 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %635, align 4
  br label %638

638:                                              ; preds = %634, %630
  %639 = bitcast %union.qib_seqnum* %25 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = call i8* @cpu_to_be32(i32 %640)
  %642 = load %struct.qib_message_header*, %struct.qib_message_header** %19, align 8
  %643 = getelementptr inbounds %struct.qib_message_header, %struct.qib_message_header* %642, i32 0, i32 2
  %644 = load i8**, i8*** %643, align 8
  %645 = getelementptr inbounds i8*, i8** %644, i64 2
  store i8* %641, i8** %645, align 8
  %646 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %647 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %648 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %647, i32 0, i32 4
  %649 = load i64, i64* %648, align 8
  %650 = load i64, i64* %21, align 8
  %651 = load i8*, i8** %18, align 8
  %652 = load i8*, i8** %26, align 8
  %653 = load i64, i64* %21, align 8
  %654 = call i32 @qib_user_sdma_init_frag(%struct.qib_user_sdma_pkt* %646, i64 %649, i64 0, i64 %650, i32 1, i64 0, i64 0, i64 0, %struct.page* null, i8* %651, i8* %652, i64 %653)
  %655 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %656 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %655, i32 0, i32 4
  %657 = load i64, i64* %656, align 8
  %658 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %659 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %658, i32 0, i32 6
  store i64 %657, i64* %659, align 8
  %660 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %661 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %660, i32 0, i32 1
  store i32 0, i32* %661, align 8
  %662 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %663 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %662, i32 0, i32 4
  %664 = load i64, i64* %663, align 8
  %665 = add i64 %664, 1
  store i64 %665, i64* %663, align 8
  %666 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %667 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %666, i32 0, i32 4
  %668 = load i64, i64* %667, align 8
  %669 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %11, align 8
  %670 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %669, i32 0, i32 5
  %671 = load i64, i64* %670, align 8
  %672 = icmp eq i64 %668, %671
  br i1 %672, label %673, label %676

673:                                              ; preds = %638
  %674 = load i32, i32* @EFAULT, align 4
  %675 = sub nsw i32 0, %674
  store i32 %675, i32* %28, align 4
  br label %692

676:                                              ; preds = %638
  %677 = load i64, i64* %20, align 8
  %678 = load i64, i64* %15, align 8
  %679 = icmp ne i64 %677, %678
  br i1 %679, label %680, label %691

680:                                              ; preds = %676
  %681 = load i64, i64* %23, align 8
  %682 = icmp ne i64 %681, 0
  br i1 %682, label %683, label %684

683:                                              ; preds = %680
  store i64 0, i64* %13, align 8
  store i64 0, i64* %23, align 8
  store %struct.page* null, %struct.page** %12, align 8
  store i8* null, i8** %16, align 8
  br label %684

684:                                              ; preds = %683, %680
  %685 = load i64, i64* %20, align 8
  %686 = load i64, i64* %15, align 8
  %687 = sub nsw i64 %686, %685
  store i64 %687, i64* %15, align 8
  %688 = load i64, i64* %20, align 8
  %689 = load i64, i64* %14, align 8
  %690 = add nsw i64 %689, %688
  store i64 %690, i64* %14, align 8
  br label %60

691:                                              ; preds = %676
  br label %692

692:                                              ; preds = %691, %673, %501, %332, %316, %308, %254, %242, %175, %56
  %693 = load i32, i32* %28, align 4
  ret i32 %693
}

declare dso_local i8* @dma_map_page(i32*, %struct.page*, i64, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i32 @put_user_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @qib_user_sdma_init_frag(%struct.qib_user_sdma_pkt*, i64, i64, i64, i32, i64, i64, i64, %struct.page*, i8*, i8*, i64) #1

declare dso_local i8* @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i8* @qib_user_sdma_alloc_header(%struct.qib_user_sdma_queue*, i64, i8**) #1

declare dso_local i32 @memcpy(i8*, i8**, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
