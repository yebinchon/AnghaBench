; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_hw_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_hw_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { i32, i32*, %struct.TYPE_5__*, i32*, i32**, %struct.TYPE_6__*, i32, i64*, i32*, %struct.drm_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.drm_device = type { i32 }

@VBIF_MAX = common dso_local global i64 0, align 8
@VBIF_NRT = common dso_local global i64 0, align 8
@VBIF_RT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_kms*)* @_dpu_kms_hw_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_kms_hw_destroy(%struct.dpu_kms* %0) #0 {
  %2 = alloca %struct.dpu_kms*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dpu_kms* %0, %struct.dpu_kms** %2, align 8
  %6 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %7 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %6, i32 0, i32 9
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = icmp ne %struct.drm_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %177

12:                                               ; preds = %1
  %13 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %14 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %13, i32 0, i32 8
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %19 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @dpu_hw_intr_destroy(i32* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %24 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %23, i32 0, i32 8
  store i32* null, i32** %24, align 8
  %25 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %26 = call i32 @_dpu_kms_mmu_destroy(%struct.dpu_kms* %25)
  %27 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %28 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %27, i32 0, i32 5
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %75

31:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %71, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %35 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %32
  %41 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %42 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %41, i32 0, i32 5
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @VBIF_MAX, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %40
  %55 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %56 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %55, i32 0, i32 7
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %64 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %63, i32 0, i32 7
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dpu_hw_vbif_destroy(i64 %68)
  br label %70

70:                                               ; preds = %62, %54, %40
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %32

74:                                               ; preds = %32
  br label %75

75:                                               ; preds = %74, %22
  %76 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %77 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %82 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %81, i32 0, i32 6
  %83 = call i32 @dpu_rm_destroy(i32* %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %86 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %88 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %87, i32 0, i32 5
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = icmp ne %struct.TYPE_6__* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %93 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %92, i32 0, i32 5
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = call i32 @dpu_hw_catalog_deinit(%struct.TYPE_6__* %94)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %98 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %97, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %98, align 8
  %99 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %100 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %99, i32 0, i32 4
  %101 = load i32**, i32*** %100, align 8
  %102 = load i64, i64* @VBIF_NRT, align 8
  %103 = getelementptr inbounds i32*, i32** %101, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %96
  %107 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %108 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %107, i32 0, i32 2
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %112 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %111, i32 0, i32 4
  %113 = load i32**, i32*** %112, align 8
  %114 = load i64, i64* @VBIF_NRT, align 8
  %115 = getelementptr inbounds i32*, i32** %113, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @devm_iounmap(i32* %110, i32* %116)
  br label %118

118:                                              ; preds = %106, %96
  %119 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %120 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %119, i32 0, i32 4
  %121 = load i32**, i32*** %120, align 8
  %122 = load i64, i64* @VBIF_NRT, align 8
  %123 = getelementptr inbounds i32*, i32** %121, i64 %122
  store i32* null, i32** %123, align 8
  %124 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %125 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %124, i32 0, i32 4
  %126 = load i32**, i32*** %125, align 8
  %127 = load i64, i64* @VBIF_RT, align 8
  %128 = getelementptr inbounds i32*, i32** %126, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %118
  %132 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %133 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %132, i32 0, i32 2
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %137 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %136, i32 0, i32 4
  %138 = load i32**, i32*** %137, align 8
  %139 = load i64, i64* @VBIF_RT, align 8
  %140 = getelementptr inbounds i32*, i32** %138, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @devm_iounmap(i32* %135, i32* %141)
  br label %143

143:                                              ; preds = %131, %118
  %144 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %145 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %144, i32 0, i32 4
  %146 = load i32**, i32*** %145, align 8
  %147 = load i64, i64* @VBIF_RT, align 8
  %148 = getelementptr inbounds i32*, i32** %146, i64 %147
  store i32* null, i32** %148, align 8
  %149 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %150 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %143
  %154 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %155 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @dpu_hw_mdp_destroy(i32* %156)
  br label %158

158:                                              ; preds = %153, %143
  %159 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %160 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %159, i32 0, i32 3
  store i32* null, i32** %160, align 8
  %161 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %162 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %167 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %166, i32 0, i32 2
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %171 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @devm_iounmap(i32* %169, i32* %172)
  br label %174

174:                                              ; preds = %165, %158
  %175 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %176 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %175, i32 0, i32 1
  store i32* null, i32** %176, align 8
  br label %177

177:                                              ; preds = %174, %11
  ret void
}

declare dso_local i32 @dpu_hw_intr_destroy(i32*) #1

declare dso_local i32 @_dpu_kms_mmu_destroy(%struct.dpu_kms*) #1

declare dso_local i32 @dpu_hw_vbif_destroy(i64) #1

declare dso_local i32 @dpu_rm_destroy(i32*) #1

declare dso_local i32 @dpu_hw_catalog_deinit(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_iounmap(i32*, i32*) #1

declare dso_local i32 @dpu_hw_mdp_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
