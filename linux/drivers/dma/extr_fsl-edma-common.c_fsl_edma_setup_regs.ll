; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_setup_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_setup_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_engine = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@EDMA_CR = common dso_local global i64 0, align 8
@EDMA_ES = common dso_local global i64 0, align 8
@EDMA_ERQ = common dso_local global i64 0, align 8
@EDMA_EEI = common dso_local global i64 0, align 8
@v2 = common dso_local global i64 0, align 8
@EDMA64_SERQ = common dso_local global i64 0, align 8
@EDMA_SERQ = common dso_local global i64 0, align 8
@EDMA64_CERQ = common dso_local global i64 0, align 8
@EDMA_CERQ = common dso_local global i64 0, align 8
@EDMA64_SEEI = common dso_local global i64 0, align 8
@EDMA_SEEI = common dso_local global i64 0, align 8
@EDMA64_CEEI = common dso_local global i64 0, align 8
@EDMA_CEEI = common dso_local global i64 0, align 8
@EDMA64_CINT = common dso_local global i64 0, align 8
@EDMA_CINT = common dso_local global i64 0, align 8
@EDMA64_CERR = common dso_local global i64 0, align 8
@EDMA_CERR = common dso_local global i64 0, align 8
@EDMA64_SSRT = common dso_local global i64 0, align 8
@EDMA_SSRT = common dso_local global i64 0, align 8
@EDMA64_CDNE = common dso_local global i64 0, align 8
@EDMA_CDNE = common dso_local global i64 0, align 8
@EDMA64_INTL = common dso_local global i64 0, align 8
@EDMA_INTR = common dso_local global i64 0, align 8
@EDMA64_ERRL = common dso_local global i64 0, align 8
@EDMA_ERR = common dso_local global i64 0, align 8
@EDMA64_ERQH = common dso_local global i64 0, align 8
@EDMA64_EEIH = common dso_local global i64 0, align 8
@EDMA64_ERRH = common dso_local global i64 0, align 8
@EDMA64_INTH = common dso_local global i64 0, align 8
@EDMA_TCD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_edma_setup_regs(%struct.fsl_edma_engine* %0) #0 {
  %2 = alloca %struct.fsl_edma_engine*, align 8
  store %struct.fsl_edma_engine* %0, %struct.fsl_edma_engine** %2, align 8
  %3 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %4 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @EDMA_CR, align 8
  %7 = add nsw i64 %5, %6
  %8 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %9 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 18
  store i64 %7, i64* %10, align 8
  %11 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %12 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EDMA_ES, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %17 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 17
  store i64 %15, i64* %18, align 8
  %19 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EDMA_ERQ, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %25 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 16
  store i64 %23, i64* %26, align 8
  %27 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %28 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EDMA_EEI, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %33 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 15
  store i64 %31, i64* %34, align 8
  %35 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %36 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %39 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @v2, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i64, i64* @EDMA64_SERQ, align 8
  br label %49

47:                                               ; preds = %1
  %48 = load i64, i64* @EDMA_SERQ, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = add nsw i64 %37, %50
  %52 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %53 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 14
  store i64 %51, i64* %54, align 8
  %55 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %56 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %59 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @v2, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %49
  %66 = load i64, i64* @EDMA64_CERQ, align 8
  br label %69

67:                                               ; preds = %49
  %68 = load i64, i64* @EDMA_CERQ, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i64 [ %66, %65 ], [ %68, %67 ]
  %71 = add nsw i64 %57, %70
  %72 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %73 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 13
  store i64 %71, i64* %74, align 8
  %75 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %76 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %79 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @v2, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = load i64, i64* @EDMA64_SEEI, align 8
  br label %89

87:                                               ; preds = %69
  %88 = load i64, i64* @EDMA_SEEI, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i64 [ %86, %85 ], [ %88, %87 ]
  %91 = add nsw i64 %77, %90
  %92 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %93 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 12
  store i64 %91, i64* %94, align 8
  %95 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %96 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %99 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @v2, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %89
  %106 = load i64, i64* @EDMA64_CEEI, align 8
  br label %109

107:                                              ; preds = %89
  %108 = load i64, i64* @EDMA_CEEI, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i64 [ %106, %105 ], [ %108, %107 ]
  %111 = add nsw i64 %97, %110
  %112 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %113 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 11
  store i64 %111, i64* %114, align 8
  %115 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %116 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %119 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %118, i32 0, i32 2
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @v2, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %109
  %126 = load i64, i64* @EDMA64_CINT, align 8
  br label %129

127:                                              ; preds = %109
  %128 = load i64, i64* @EDMA_CINT, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i64 [ %126, %125 ], [ %128, %127 ]
  %131 = add nsw i64 %117, %130
  %132 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %133 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 10
  store i64 %131, i64* %134, align 8
  %135 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %136 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %139 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %138, i32 0, i32 2
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @v2, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %129
  %146 = load i64, i64* @EDMA64_CERR, align 8
  br label %149

147:                                              ; preds = %129
  %148 = load i64, i64* @EDMA_CERR, align 8
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i64 [ %146, %145 ], [ %148, %147 ]
  %151 = add nsw i64 %137, %150
  %152 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %153 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 9
  store i64 %151, i64* %154, align 8
  %155 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %156 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %159 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %158, i32 0, i32 2
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @v2, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %149
  %166 = load i64, i64* @EDMA64_SSRT, align 8
  br label %169

167:                                              ; preds = %149
  %168 = load i64, i64* @EDMA_SSRT, align 8
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i64 [ %166, %165 ], [ %168, %167 ]
  %171 = add nsw i64 %157, %170
  %172 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %173 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 8
  store i64 %171, i64* %174, align 8
  %175 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %176 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %179 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %178, i32 0, i32 2
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @v2, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %169
  %186 = load i64, i64* @EDMA64_CDNE, align 8
  br label %189

187:                                              ; preds = %169
  %188 = load i64, i64* @EDMA_CDNE, align 8
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i64 [ %186, %185 ], [ %188, %187 ]
  %191 = add nsw i64 %177, %190
  %192 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %193 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 7
  store i64 %191, i64* %194, align 8
  %195 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %196 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %199 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %198, i32 0, i32 2
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @v2, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %189
  %206 = load i64, i64* @EDMA64_INTL, align 8
  br label %209

207:                                              ; preds = %189
  %208 = load i64, i64* @EDMA_INTR, align 8
  br label %209

209:                                              ; preds = %207, %205
  %210 = phi i64 [ %206, %205 ], [ %208, %207 ]
  %211 = add nsw i64 %197, %210
  %212 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %213 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 6
  store i64 %211, i64* %214, align 8
  %215 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %216 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %219 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %218, i32 0, i32 2
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @v2, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %209
  %226 = load i64, i64* @EDMA64_ERRL, align 8
  br label %229

227:                                              ; preds = %209
  %228 = load i64, i64* @EDMA_ERR, align 8
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i64 [ %226, %225 ], [ %228, %227 ]
  %231 = add nsw i64 %217, %230
  %232 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %233 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 5
  store i64 %231, i64* %234, align 8
  %235 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %236 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %235, i32 0, i32 2
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @v2, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %275

242:                                              ; preds = %229
  %243 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %244 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @EDMA64_ERQH, align 8
  %247 = add nsw i64 %245, %246
  %248 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %249 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 4
  store i64 %247, i64* %250, align 8
  %251 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %252 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @EDMA64_EEIH, align 8
  %255 = add nsw i64 %253, %254
  %256 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %257 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 3
  store i64 %255, i64* %258, align 8
  %259 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %260 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @EDMA64_ERRH, align 8
  %263 = add nsw i64 %261, %262
  %264 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %265 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 2
  store i64 %263, i64* %266, align 8
  %267 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %268 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @EDMA64_INTH, align 8
  %271 = add nsw i64 %269, %270
  %272 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %273 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  store i64 %271, i64* %274, align 8
  br label %275

275:                                              ; preds = %242, %229
  %276 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %277 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @EDMA_TCD, align 8
  %280 = add nsw i64 %278, %279
  %281 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %2, align 8
  %282 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  store i64 %280, i64* %283, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
