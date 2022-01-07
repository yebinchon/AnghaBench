; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_init_context_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_init_context_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_domain = type { %struct.TYPE_5__*, %struct.arm_smmu_cfg }
%struct.TYPE_5__ = type { %struct.arm_smmu_cb* }
%struct.arm_smmu_cb = type { i32*, i32*, i32*, %struct.arm_smmu_cfg* }
%struct.arm_smmu_cfg = type { i64, i64, i64, i32 }
%struct.io_pgtable_cfg = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CBAR_TYPE_S2_TRANS = common dso_local global i64 0, align 8
@ARM_SMMU_CTX_FMT_AARCH32_S = common dso_local global i64 0, align 8
@TCR2_SEP = common dso_local global i32 0, align 4
@TCR2_SEP_UPSTREAM = common dso_local global i32 0, align 4
@ARM_SMMU_CTX_FMT_AARCH64 = common dso_local global i64 0, align 8
@TCR2_AS = common dso_local global i32 0, align 4
@TTBRn_ASID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_domain*, %struct.io_pgtable_cfg*)* @arm_smmu_init_context_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_init_context_bank(%struct.arm_smmu_domain* %0, %struct.io_pgtable_cfg* %1) #0 {
  %3 = alloca %struct.arm_smmu_domain*, align 8
  %4 = alloca %struct.io_pgtable_cfg*, align 8
  %5 = alloca %struct.arm_smmu_cfg*, align 8
  %6 = alloca %struct.arm_smmu_cb*, align 8
  %7 = alloca i32, align 4
  store %struct.arm_smmu_domain* %0, %struct.arm_smmu_domain** %3, align 8
  store %struct.io_pgtable_cfg* %1, %struct.io_pgtable_cfg** %4, align 8
  %8 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %9 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %8, i32 0, i32 1
  store %struct.arm_smmu_cfg* %9, %struct.arm_smmu_cfg** %5, align 8
  %10 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %13, align 8
  %15 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %16 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %14, i64 %17
  store %struct.arm_smmu_cb* %18, %struct.arm_smmu_cb** %6, align 8
  %19 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %20 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CBAR_TYPE_S2_TRANS, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %26 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %27 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %26, i32 0, i32 3
  store %struct.arm_smmu_cfg* %25, %struct.arm_smmu_cfg** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %2
  %31 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %32 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ARM_SMMU_CTX_FMT_AARCH32_S, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %38 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %42 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  br label %86

45:                                               ; preds = %30
  %46 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %47 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %51 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %55 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 32
  %59 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %60 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @TCR2_SEP, align 4
  %64 = load i32, i32* @TCR2_SEP_UPSTREAM, align 4
  %65 = call i32 @FIELD_PREP(i32 %63, i32 %64)
  %66 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %67 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %73 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ARM_SMMU_CTX_FMT_AARCH64, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %45
  %78 = load i32, i32* @TCR2_AS, align 4
  %79 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %80 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %77, %45
  br label %86

86:                                               ; preds = %85, %36
  br label %96

87:                                               ; preds = %2
  %88 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %89 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %93 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %86
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %170

99:                                               ; preds = %96
  %100 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %101 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ARM_SMMU_CTX_FMT_AARCH32_S, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %99
  %106 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %107 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %113 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %111, i32* %115, align 4
  %116 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %117 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %123 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %121, i32* %125, align 4
  br label %169

126:                                              ; preds = %99
  %127 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %128 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %134 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* @TTBRn_ASID, align 4
  %138 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %139 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @FIELD_PREP(i32 %137, i32 %140)
  %142 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %143 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %141
  store i32 %147, i32* %145, align 4
  %148 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %149 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %155 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  store i32 %153, i32* %157, align 4
  %158 = load i32, i32* @TTBRn_ASID, align 4
  %159 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %160 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @FIELD_PREP(i32 %158, i32 %161)
  %163 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %164 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %162
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %126, %105
  br label %179

170:                                              ; preds = %96
  %171 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %172 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %176 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 %174, i32* %178, align 4
  br label %179

179:                                              ; preds = %170, %169
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %227

182:                                              ; preds = %179
  %183 = load %struct.arm_smmu_cfg*, %struct.arm_smmu_cfg** %5, align 8
  %184 = getelementptr inbounds %struct.arm_smmu_cfg, %struct.arm_smmu_cfg* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ARM_SMMU_CTX_FMT_AARCH32_S, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %205

188:                                              ; preds = %182
  %189 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %190 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %194 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 %192, i32* %196, align 4
  %197 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %198 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %202 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 %200, i32* %204, align 4
  br label %226

205:                                              ; preds = %182
  %206 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %207 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %213 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 %211, i32* %215, align 4
  %216 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %217 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.arm_smmu_cb*, %struct.arm_smmu_cb** %6, align 8
  %223 = getelementptr inbounds %struct.arm_smmu_cb, %struct.arm_smmu_cb* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  store i32 %221, i32* %225, align 4
  br label %226

226:                                              ; preds = %205, %188
  br label %227

227:                                              ; preds = %226, %179
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
