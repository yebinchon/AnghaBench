; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_ah_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_ah_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ocrdma_create_ah_tbl = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.ocrdma_create_ah_tbl_rsp = type { i32 }
%struct.ocrdma_pbe = type { i8*, i8* }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_CREATE_AH_TBL = common dso_local global i32 0, align 4
@OCRDMA_MAX_AH = common dso_local global i32 0, align 4
@OCRDMA_AH_TBL_PAGES = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_NUM_PAGES_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_NUM_PAGES_MASK = common dso_local global i32 0, align 4
@OCRDMA_MAX_Q_PAGE_SIZE_CNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@OCRDMA_MIN_Q_PAGE_SIZE = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_PAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_PAGE_SIZE_MASK = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_ENTRY_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_AH_ENTRY_SIZE_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_mbx_create_ah_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_create_ah_tbl(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_create_ah_tbl*, align 8
  %8 = alloca %struct.ocrdma_create_ah_tbl_rsp*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocrdma_pbe*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %9, align 8
  %18 = load i32, i32* @OCRDMA_CMD_CREATE_AH_TBL, align 4
  %19 = call %struct.ocrdma_create_ah_tbl* @ocrdma_init_emb_mqe(i32 %18, i32 16)
  store %struct.ocrdma_create_ah_tbl* %19, %struct.ocrdma_create_ah_tbl** %7, align 8
  %20 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %21 = icmp ne %struct.ocrdma_create_ah_tbl* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %255

24:                                               ; preds = %1
  %25 = load i32, i32* @OCRDMA_MAX_AH, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %31 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @OCRDMA_AH_TBL_PAGES, align 4
  %34 = load i32, i32* @OCRDMA_CREATE_AH_NUM_PAGES_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @OCRDMA_CREATE_AH_NUM_PAGES_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %39 = getelementptr inbounds %struct.ocrdma_create_ah_tbl, %struct.ocrdma_create_ah_tbl* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %52, %24
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @OCRDMA_MAX_Q_PAGE_SIZE_CNT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load i32, i32* @OCRDMA_MIN_Q_PAGE_SIZE, align 4
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %46, %47
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %55

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %40

55:                                               ; preds = %50, %40
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @OCRDMA_CREATE_AH_PAGE_SIZE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @OCRDMA_CREATE_AH_PAGE_SIZE_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %62 = getelementptr inbounds %struct.ocrdma_create_ah_tbl, %struct.ocrdma_create_ah_tbl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @OCRDMA_CREATE_AH_ENTRY_SIZE_SHIFT, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 4, %66
  %68 = load i32, i32* @OCRDMA_CREATE_AH_ENTRY_SIZE_MASK, align 4
  %69 = sext i32 %68 to i64
  %70 = and i64 %67, %69
  %71 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %72 = getelementptr inbounds %struct.ocrdma_create_ah_tbl, %struct.ocrdma_create_ah_tbl* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = or i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %81 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @dma_alloc_coherent(i32* %78, i32 %79, i32* %83, i32 %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %88 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32* %86, i32** %90, align 8
  %91 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %92 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %55
  br label %251

98:                                               ; preds = %55
  %99 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %102 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @dma_alloc_coherent(i32* %100, i32 %104, i32* %10, i32 %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %109 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 5
  store i32* %107, i32** %110, align 8
  %111 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %112 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %98
  br label %229

117:                                              ; preds = %98
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %120 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %124 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 8
  %126 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %127 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = bitcast i32* %130 to %struct.ocrdma_pbe*
  store %struct.ocrdma_pbe* %131, %struct.ocrdma_pbe** %11, align 8
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %162, %117
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %135 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @OCRDMA_MIN_Q_PAGE_SIZE, align 4
  %139 = sdiv i32 %137, %138
  %140 = icmp slt i32 %133, %139
  br i1 %140, label %141, label %165

141:                                              ; preds = %132
  %142 = load i32, i32* %10, align 4
  %143 = call i64 @cpu_to_le32(i32 %142)
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.ocrdma_pbe*, %struct.ocrdma_pbe** %11, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %145, i64 %147
  %149 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %148, i32 0, i32 1
  store i8* %144, i8** %149, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @upper_32_bits(i32 %150)
  %152 = call i64 @cpu_to_le32(i32 %151)
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.ocrdma_pbe*, %struct.ocrdma_pbe** %11, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %154, i64 %156
  %158 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %157, i32 0, i32 0
  store i8* %153, i8** %158, align 8
  %159 = load i32, i32* @PAGE_SIZE, align 4
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %141
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %132

165:                                              ; preds = %132
  %166 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %167 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = zext i32 %170 to i64
  %172 = inttoptr i64 %171 to i8*
  %173 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %174 = getelementptr inbounds %struct.ocrdma_create_ah_tbl, %struct.ocrdma_create_ah_tbl* %173, i32 0, i32 1
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i8* %172, i8** %177, align 8
  %178 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %179 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @upper_32_bits(i32 %182)
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %187 = getelementptr inbounds %struct.ocrdma_create_ah_tbl, %struct.ocrdma_create_ah_tbl* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i8* %185, i8** %190, align 8
  %191 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %192 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %193 = bitcast %struct.ocrdma_create_ah_tbl* %192 to %struct.ocrdma_mqe*
  %194 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %191, %struct.ocrdma_mqe* %193)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %165
  br label %210

198:                                              ; preds = %165
  %199 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %200 = bitcast %struct.ocrdma_create_ah_tbl* %199 to %struct.ocrdma_create_ah_tbl_rsp*
  store %struct.ocrdma_create_ah_tbl_rsp* %200, %struct.ocrdma_create_ah_tbl_rsp** %8, align 8
  %201 = load %struct.ocrdma_create_ah_tbl_rsp*, %struct.ocrdma_create_ah_tbl_rsp** %8, align 8
  %202 = getelementptr inbounds %struct.ocrdma_create_ah_tbl_rsp, %struct.ocrdma_create_ah_tbl_rsp* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 65535
  %205 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %206 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  store i32 %204, i32* %207, align 4
  %208 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %209 = call i32 @kfree(%struct.ocrdma_create_ah_tbl* %208)
  store i32 0, i32* %2, align 4
  br label %255

210:                                              ; preds = %197
  %211 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %212 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %211, i32 0, i32 0
  %213 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %214 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %218 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %222 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @dma_free_coherent(i32* %212, i32 %216, i32* %220, i32 %224)
  %226 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %227 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 5
  store i32* null, i32** %228, align 8
  br label %229

229:                                              ; preds = %210, %116
  %230 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %231 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %230, i32 0, i32 0
  %232 = load i32, i32* @PAGE_SIZE, align 4
  %233 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %234 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %239 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @dma_free_coherent(i32* %231, i32 %232, i32* %237, i32 %242)
  %244 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %245 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  store i32* null, i32** %247, align 8
  %248 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %249 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  store i32 0, i32* %250, align 8
  br label %251

251:                                              ; preds = %229, %97
  %252 = load %struct.ocrdma_create_ah_tbl*, %struct.ocrdma_create_ah_tbl** %7, align 8
  %253 = call i32 @kfree(%struct.ocrdma_create_ah_tbl* %252)
  %254 = load i32, i32* %5, align 4
  store i32 %254, i32* %2, align 4
  br label %255

255:                                              ; preds = %251, %198, %22
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local %struct.ocrdma_create_ah_tbl* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_create_ah_tbl*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
