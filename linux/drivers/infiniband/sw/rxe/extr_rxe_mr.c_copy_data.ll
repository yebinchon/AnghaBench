; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_copy_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pd = type { i32 }
%struct.rxe_dma_info = type { i64, i32, i32, i64, %struct.rxe_sge* }
%struct.rxe_sge = type { i32, i64, i32 }
%struct.rxe_mem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@lookup_local = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_data(%struct.rxe_pd* %0, i32 %1, %struct.rxe_dma_info* %2, i8* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.rxe_pd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxe_dma_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.rxe_sge*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.rxe_mem*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.rxe_pd* %0, %struct.rxe_pd** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.rxe_dma_info* %2, %struct.rxe_dma_info** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %23 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %11, align 8
  %24 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %23, i32 0, i32 4
  %25 = load %struct.rxe_sge*, %struct.rxe_sge** %24, align 8
  %26 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %11, align 8
  %27 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %25, i64 %28
  store %struct.rxe_sge* %29, %struct.rxe_sge** %17, align 8
  %30 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %11, align 8
  %31 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %18, align 4
  %33 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %11, align 8
  %34 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %19, align 4
  store %struct.rxe_mem* null, %struct.rxe_mem** %20, align 8
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %197

39:                                               ; preds = %7
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %22, align 4
  br label %188

46:                                               ; preds = %39
  %47 = load %struct.rxe_sge*, %struct.rxe_sge** %17, align 8
  %48 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load i32, i32* %18, align 4
  %53 = load %struct.rxe_sge*, %struct.rxe_sge** %17, align 8
  %54 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load %struct.rxe_pd*, %struct.rxe_pd** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.rxe_sge*, %struct.rxe_sge** %17, align 8
  %61 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @lookup_local, align 4
  %64 = call %struct.rxe_mem* @lookup_mem(%struct.rxe_pd* %58, i32 %59, i32 %62, i32 %63)
  store %struct.rxe_mem* %64, %struct.rxe_mem** %20, align 8
  %65 = load %struct.rxe_mem*, %struct.rxe_mem** %20, align 8
  %66 = icmp ne %struct.rxe_mem* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %22, align 4
  br label %195

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %51, %46
  br label %72

72:                                               ; preds = %174, %124, %71
  %73 = load i32, i32* %13, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %175

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load %struct.rxe_sge*, %struct.rxe_sge** %17, align 8
  %79 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %126

82:                                               ; preds = %75
  %83 = load %struct.rxe_mem*, %struct.rxe_mem** %20, align 8
  %84 = icmp ne %struct.rxe_mem* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.rxe_mem*, %struct.rxe_mem** %20, align 8
  %87 = call i32 @rxe_drop_ref(%struct.rxe_mem* %86)
  store %struct.rxe_mem* null, %struct.rxe_mem** %20, align 8
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.rxe_sge*, %struct.rxe_sge** %17, align 8
  %90 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %89, i32 1
  store %struct.rxe_sge* %90, %struct.rxe_sge** %17, align 8
  %91 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %11, align 8
  %92 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  store i32 0, i32* %18, align 4
  %95 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %11, align 8
  %96 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %11, align 8
  %99 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp uge i64 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %88
  %103 = load i32, i32* @ENOSPC, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %22, align 4
  br label %188

105:                                              ; preds = %88
  %106 = load %struct.rxe_sge*, %struct.rxe_sge** %17, align 8
  %107 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load %struct.rxe_pd*, %struct.rxe_pd** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.rxe_sge*, %struct.rxe_sge** %17, align 8
  %114 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @lookup_local, align 4
  %117 = call %struct.rxe_mem* @lookup_mem(%struct.rxe_pd* %111, i32 %112, i32 %115, i32 %116)
  store %struct.rxe_mem* %117, %struct.rxe_mem** %20, align 8
  %118 = load %struct.rxe_mem*, %struct.rxe_mem** %20, align 8
  %119 = icmp ne %struct.rxe_mem* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %110
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %22, align 4
  br label %195

123:                                              ; preds = %110
  br label %125

124:                                              ; preds = %105
  br label %72

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %75
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.rxe_sge*, %struct.rxe_sge** %17, align 8
  %129 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sub nsw i32 %130, %131
  %133 = icmp sgt i32 %127, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = load %struct.rxe_sge*, %struct.rxe_sge** %17, align 8
  %136 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %18, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %16, align 4
  br label %140

140:                                              ; preds = %134, %126
  %141 = load i32, i32* %16, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %174

143:                                              ; preds = %140
  %144 = load %struct.rxe_sge*, %struct.rxe_sge** %17, align 8
  %145 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  store i64 %149, i64* %21, align 8
  %150 = load %struct.rxe_mem*, %struct.rxe_mem** %20, align 8
  %151 = load i64, i64* %21, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = call i32 @rxe_mem_copy(%struct.rxe_mem* %150, i64 %151, i8* %152, i32 %153, i32 %154, i32* %155)
  store i32 %156, i32* %22, align 4
  %157 = load i32, i32* %22, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %143
  br label %188

160:                                              ; preds = %143
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %19, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %13, align 4
  %169 = sub nsw i32 %168, %167
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i8*, i8** %12, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr i8, i8* %171, i64 %172
  store i8* %173, i8** %12, align 8
  br label %174

174:                                              ; preds = %160, %140
  br label %72

175:                                              ; preds = %72
  %176 = load i32, i32* %18, align 4
  %177 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %11, align 8
  %178 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %19, align 4
  %180 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %11, align 8
  %181 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load %struct.rxe_mem*, %struct.rxe_mem** %20, align 8
  %183 = icmp ne %struct.rxe_mem* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = load %struct.rxe_mem*, %struct.rxe_mem** %20, align 8
  %186 = call i32 @rxe_drop_ref(%struct.rxe_mem* %185)
  br label %187

187:                                              ; preds = %184, %175
  store i32 0, i32* %8, align 4
  br label %197

188:                                              ; preds = %159, %102, %43
  %189 = load %struct.rxe_mem*, %struct.rxe_mem** %20, align 8
  %190 = icmp ne %struct.rxe_mem* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load %struct.rxe_mem*, %struct.rxe_mem** %20, align 8
  %193 = call i32 @rxe_drop_ref(%struct.rxe_mem* %192)
  br label %194

194:                                              ; preds = %191, %188
  br label %195

195:                                              ; preds = %194, %120, %67
  %196 = load i32, i32* %22, align 4
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %195, %187, %38
  %198 = load i32, i32* %8, align 4
  ret i32 %198
}

declare dso_local %struct.rxe_mem* @lookup_mem(%struct.rxe_pd*, i32, i32, i32) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_mem*) #1

declare dso_local i32 @rxe_mem_copy(%struct.rxe_mem*, i64, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
