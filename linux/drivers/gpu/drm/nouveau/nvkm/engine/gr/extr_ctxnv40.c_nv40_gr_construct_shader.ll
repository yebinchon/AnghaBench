; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.c_nv40_gr_construct_shader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.c_nv40_gr_construct_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { i32, i64, %struct.nvkm_device*, %struct.nvkm_gpuobj* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_gpuobj = type { i32 }

@NVKM_GRCTX_VALS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv40_gr_construct_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_gr_construct_shader(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_gpuobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %14 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %15 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %14, i32 0, i32 2
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %3, align 8
  %17 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %18 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %17, i32 0, i32 3
  %19 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %18, align 8
  store %struct.nvkm_gpuobj* %19, %struct.nvkm_gpuobj** %4, align 8
  %20 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %21 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %20, i32 0, i32 2
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %21, align 8
  %23 = call i32 @nv40_gr_vs_count(%struct.nvkm_device* %22)
  store i32 %23, i32* %6, align 4
  store i32 363, i32* %8, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 64
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 128, i32 64
  store i32 %29, i32* %9, align 4
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 64
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  store i32 2176, i32* %10, align 4
  store i32 5480, i32* %11, align 4
  store i32 6824, i32* %7, align 4
  br label %53

35:                                               ; preds = %1
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 65
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %42 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 66
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %35
  store i32 2176, i32* %10, align 4
  store i32 4352, i32* %11, align 4
  store i32 5056, i32* %7, align 4
  br label %52

46:                                               ; preds = %40
  store i32 1872, i32* %10, align 4
  store i32 4048, i32* %11, align 4
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %48 = call i64 @nv44_gr_class(%struct.nvkm_device* %47)
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 4704, i32 4752
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %46, %45
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %57, 192
  %59 = call i32 @cp_lsr(%struct.nvkm_grctx* %54, i32 %58)
  %60 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %62 = call i64 @nv44_gr_class(%struct.nvkm_device* %61)
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 8388649, i32 8388673
  %66 = call i32 @cp_out(%struct.nvkm_grctx* %60, i32 %65)
  %67 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %68 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %70, %71
  %73 = add nsw i32 192, %72
  %74 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %75 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %79 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NVKM_GRCTX_VALS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %53
  br label %148

84:                                               ; preds = %53
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 160
  store i32 %86, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %95, %84
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 16
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %4, align 8
  %92 = load i32, i32* %12, align 4
  %93 = mul nsw i32 %92, 4
  %94 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %91, i32 %93, i32 1065353216)
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %12, align 4
  br label %87

100:                                              ; preds = %87
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %142, %100
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %148

105:                                              ; preds = %101
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %120, %105
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %108, 6
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %4, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %115, %116
  %118 = mul nsw i32 %117, 4
  %119 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %112, i32 %118, i32 1)
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 6
  store i32 %122, i32* %13, align 4
  br label %106

123:                                              ; preds = %106
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %138, %123
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %126, 4
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %4, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %133, %134
  %136 = mul nsw i32 %135, 4
  %137 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %130, i32 %136, i32 1065353216)
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %13, align 4
  br label %124

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %12, align 4
  br label %101

148:                                              ; preds = %83, %101
  ret void
}

declare dso_local i32 @nv40_gr_vs_count(%struct.nvkm_device*) #1

declare dso_local i64 @nv44_gr_class(%struct.nvkm_device*) #1

declare dso_local i32 @cp_lsr(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_out(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
