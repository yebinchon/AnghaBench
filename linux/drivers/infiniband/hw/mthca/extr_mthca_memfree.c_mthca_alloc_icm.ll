; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_alloc_icm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_alloc_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_icm = type { i32, i64 }
%struct.mthca_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mthca_icm_chunk = type { i64, i64, i32*, i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@MTHCA_ICM_ALLOC_SIZE = common dso_local global i32 0, align 4
@MTHCA_ICM_CHUNK_LEN = common dso_local global i64 0, align 8
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mthca_icm* @mthca_alloc_icm(%struct.mthca_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mthca_icm*, align 8
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mthca_icm*, align 8
  %11 = alloca %struct.mthca_icm_chunk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mthca_icm_chunk* null, %struct.mthca_icm_chunk** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @__GFP_HIGHMEM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %4
  %22 = phi i1 [ false, %4 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @__GFP_HIGHMEM, align 4
  %27 = load i32, i32* @__GFP_NOWARN, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = call i8* @kmalloc(i32 16, i32 %30)
  %32 = bitcast i8* %31 to %struct.mthca_icm*
  store %struct.mthca_icm* %32, %struct.mthca_icm** %10, align 8
  %33 = load %struct.mthca_icm*, %struct.mthca_icm** %10, align 8
  %34 = icmp ne %struct.mthca_icm* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %21
  %36 = load %struct.mthca_icm*, %struct.mthca_icm** %10, align 8
  store %struct.mthca_icm* %36, %struct.mthca_icm** %5, align 8
  br label %213

37:                                               ; preds = %21
  %38 = load %struct.mthca_icm*, %struct.mthca_icm** %10, align 8
  %39 = getelementptr inbounds %struct.mthca_icm, %struct.mthca_icm* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.mthca_icm*, %struct.mthca_icm** %10, align 8
  %41 = getelementptr inbounds %struct.mthca_icm, %struct.mthca_icm* %40, i32 0, i32 0
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load i32, i32* @MTHCA_ICM_ALLOC_SIZE, align 4
  %44 = call i32 @get_order(i32 %43)
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %178, %37
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %179

48:                                               ; preds = %45
  %49 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %50 = icmp ne %struct.mthca_icm_chunk* %49, null
  br i1 %50, label %78, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @__GFP_HIGHMEM, align 4
  %54 = load i32, i32* @__GFP_NOWARN, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %52, %56
  %58 = call i8* @kmalloc(i32 32, i32 %57)
  %59 = bitcast i8* %58 to %struct.mthca_icm_chunk*
  store %struct.mthca_icm_chunk* %59, %struct.mthca_icm_chunk** %11, align 8
  %60 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %61 = icmp ne %struct.mthca_icm_chunk* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %51
  br label %208

63:                                               ; preds = %51
  %64 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %65 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @MTHCA_ICM_CHUNK_LEN, align 8
  %68 = call i32 @sg_init_table(i32* %66, i64 %67)
  %69 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %70 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %72 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %74 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %73, i32 0, i32 3
  %75 = load %struct.mthca_icm*, %struct.mthca_icm** %10, align 8
  %76 = getelementptr inbounds %struct.mthca_icm, %struct.mthca_icm* %75, i32 0, i32 0
  %77 = call i32 @list_add_tail(i32* %74, i32* %76)
  br label %78

78:                                               ; preds = %63, %48
  br label %79

79:                                               ; preds = %84, %78
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %12, align 4
  br label %79

87:                                               ; preds = %79
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %92 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %96 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %99 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @mthca_alloc_icm_coherent(i32* %94, i32* %101, i32 %102, i32 %103)
  store i32 %104, i32* %13, align 4
  br label %116

105:                                              ; preds = %87
  %106 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %107 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %110 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @mthca_alloc_icm_pages(i32* %112, i32 %113, i32 %114)
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %105, %90
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %171, label %119

119:                                              ; preds = %116
  %120 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %121 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %128 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  br label %159

131:                                              ; preds = %119
  %132 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %133 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @MTHCA_ICM_CHUNK_LEN, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %131
  %138 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %139 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %142 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %145 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %148 = call i8* @pci_map_sg(%struct.TYPE_2__* %140, i32* %143, i64 %146, i32 %147)
  %149 = ptrtoint i8* %148 to i64
  %150 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %151 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %153 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp sle i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %137
  br label %208

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157, %131
  br label %159

159:                                              ; preds = %158, %126
  %160 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %161 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @MTHCA_ICM_CHUNK_LEN, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  store %struct.mthca_icm_chunk* null, %struct.mthca_icm_chunk** %11, align 8
  br label %166

166:                                              ; preds = %165, %159
  %167 = load i32, i32* %12, align 4
  %168 = shl i32 1, %167
  %169 = load i32, i32* %7, align 4
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* %7, align 4
  br label %178

171:                                              ; preds = %116
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %208

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177, %166
  br label %45

179:                                              ; preds = %45
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %206, label %182

182:                                              ; preds = %179
  %183 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %184 = icmp ne %struct.mthca_icm_chunk* %183, null
  br i1 %184, label %185, label %206

185:                                              ; preds = %182
  %186 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %187 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %190 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %193 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %196 = call i8* @pci_map_sg(%struct.TYPE_2__* %188, i32* %191, i64 %194, i32 %195)
  %197 = ptrtoint i8* %196 to i64
  %198 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %199 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load %struct.mthca_icm_chunk*, %struct.mthca_icm_chunk** %11, align 8
  %201 = getelementptr inbounds %struct.mthca_icm_chunk, %struct.mthca_icm_chunk* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp sle i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %185
  br label %208

205:                                              ; preds = %185
  br label %206

206:                                              ; preds = %205, %182, %179
  %207 = load %struct.mthca_icm*, %struct.mthca_icm** %10, align 8
  store %struct.mthca_icm* %207, %struct.mthca_icm** %5, align 8
  br label %213

208:                                              ; preds = %204, %176, %156, %62
  %209 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %210 = load %struct.mthca_icm*, %struct.mthca_icm** %10, align 8
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @mthca_free_icm(%struct.mthca_dev* %209, %struct.mthca_icm* %210, i32 %211)
  store %struct.mthca_icm* null, %struct.mthca_icm** %5, align 8
  br label %213

213:                                              ; preds = %208, %206, %35
  %214 = load %struct.mthca_icm*, %struct.mthca_icm** %5, align 8
  ret %struct.mthca_icm* %214
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @sg_init_table(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mthca_alloc_icm_coherent(i32*, i32*, i32, i32) #1

declare dso_local i32 @mthca_alloc_icm_pages(i32*, i32, i32) #1

declare dso_local i8* @pci_map_sg(%struct.TYPE_2__*, i32*, i64, i32) #1

declare dso_local i32 @mthca_free_icm(%struct.mthca_dev*, %struct.mthca_icm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
