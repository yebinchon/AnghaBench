; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.etnaviv_drm_private* }
%struct.etnaviv_drm_private = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ETNAVIV_IOMMU_V2 = common dso_local global i32 0, align 4
@ETNAVIV_SOFTPIN_START_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s: invalid param: %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_gpu_get_param(%struct.etnaviv_gpu* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.etnaviv_gpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.etnaviv_drm_private*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %10 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %12, align 8
  store %struct.etnaviv_drm_private* %13, %struct.etnaviv_drm_private** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %185 [
    i32 139, label %15
    i32 134, label %21
    i32 153, label %27
    i32 152, label %33
    i32 148, label %39
    i32 147, label %45
    i32 146, label %51
    i32 145, label %57
    i32 144, label %63
    i32 143, label %69
    i32 142, label %75
    i32 141, label %81
    i32 151, label %87
    i32 150, label %93
    i32 149, label %99
    i32 132, label %105
    i32 135, label %111
    i32 131, label %117
    i32 130, label %123
    i32 133, label %129
    i32 136, label %135
    i32 129, label %141
    i32 154, label %147
    i32 140, label %153
    i32 138, label %159
    i32 137, label %165
    i32 128, label %171
  ]

15:                                               ; preds = %3
  %16 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %17 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  br label %194

21:                                               ; preds = %3
  %22 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %23 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  br label %194

27:                                               ; preds = %3
  %28 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %29 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  br label %194

33:                                               ; preds = %3
  %34 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %35 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  br label %194

39:                                               ; preds = %3
  %40 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %41 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  br label %194

45:                                               ; preds = %3
  %46 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %47 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %7, align 8
  store i64 %49, i64* %50, align 8
  br label %194

51:                                               ; preds = %3
  %52 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %53 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  br label %194

57:                                               ; preds = %3
  %58 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %59 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  br label %194

63:                                               ; preds = %3
  %64 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %65 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  br label %194

69:                                               ; preds = %3
  %70 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %71 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 9
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %7, align 8
  store i64 %73, i64* %74, align 8
  br label %194

75:                                               ; preds = %3
  %76 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %77 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 10
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %7, align 8
  store i64 %79, i64* %80, align 8
  br label %194

81:                                               ; preds = %3
  %82 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %83 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 11
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %7, align 8
  store i64 %85, i64* %86, align 8
  br label %194

87:                                               ; preds = %3
  %88 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %89 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 12
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %7, align 8
  store i64 %91, i64* %92, align 8
  br label %194

93:                                               ; preds = %3
  %94 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %95 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 13
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %7, align 8
  store i64 %97, i64* %98, align 8
  br label %194

99:                                               ; preds = %3
  %100 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %101 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 14
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %7, align 8
  store i64 %103, i64* %104, align 8
  br label %194

105:                                              ; preds = %3
  %106 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %107 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 15
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %7, align 8
  store i64 %109, i64* %110, align 8
  br label %194

111:                                              ; preds = %3
  %112 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %113 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 16
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %7, align 8
  store i64 %115, i64* %116, align 8
  br label %194

117:                                              ; preds = %3
  %118 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %119 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 17
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %7, align 8
  store i64 %121, i64* %122, align 8
  br label %194

123:                                              ; preds = %3
  %124 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %125 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 18
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %7, align 8
  store i64 %127, i64* %128, align 8
  br label %194

129:                                              ; preds = %3
  %130 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %131 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 19
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %7, align 8
  store i64 %133, i64* %134, align 8
  br label %194

135:                                              ; preds = %3
  %136 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %137 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 20
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %7, align 8
  store i64 %139, i64* %140, align 8
  br label %194

141:                                              ; preds = %3
  %142 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %143 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 21
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %7, align 8
  store i64 %145, i64* %146, align 8
  br label %194

147:                                              ; preds = %3
  %148 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %149 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 22
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %7, align 8
  store i64 %151, i64* %152, align 8
  br label %194

153:                                              ; preds = %3
  %154 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %155 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 23
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %7, align 8
  store i64 %157, i64* %158, align 8
  br label %194

159:                                              ; preds = %3
  %160 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %161 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 24
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %7, align 8
  store i64 %163, i64* %164, align 8
  br label %194

165:                                              ; preds = %3
  %166 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %167 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 25
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %7, align 8
  store i64 %169, i64* %170, align 8
  br label %194

171:                                              ; preds = %3
  %172 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %8, align 8
  %173 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %172, i32 0, i32 0
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @ETNAVIV_IOMMU_V2, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load i64, i64* @ETNAVIV_SOFTPIN_START_ADDRESS, align 8
  %181 = load i64*, i64** %7, align 8
  store i64 %180, i64* %181, align 8
  br label %184

182:                                              ; preds = %171
  %183 = load i64*, i64** %7, align 8
  store i64 -1, i64* %183, align 8
  br label %184

184:                                              ; preds = %182, %179
  br label %194

185:                                              ; preds = %3
  %186 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %187 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @dev_name(i32 %188)
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %189, i32 %190)
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  br label %195

194:                                              ; preds = %184, %165, %159, %153, %147, %141, %135, %129, %123, %117, %111, %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27, %21, %15
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %185
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
