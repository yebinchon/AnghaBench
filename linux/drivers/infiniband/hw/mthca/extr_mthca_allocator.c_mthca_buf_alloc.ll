; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_allocator.c_mthca_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_allocator.c_mthca_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%union.mthca_buf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.mthca_pd = type { i32 }
%struct.mthca_mr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MTHCA_MPT_FLAG_LOCAL_READ = common dso_local global i32 0, align 4
@MTHCA_MPT_FLAG_LOCAL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_buf_alloc(%struct.mthca_dev* %0, i32 %1, i32 %2, %union.mthca_buf* %3, i32* %4, %struct.mthca_pd* %5, i32 %6, %struct.mthca_mr* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mthca_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.mthca_buf*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mthca_pd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mthca_mr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %union.mthca_buf* %3, %union.mthca_buf** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.mthca_pd* %5, %struct.mthca_pd** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.mthca_mr* %7, %struct.mthca_mr** %17, align 8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %18, align 4
  store i32* null, i32** %21, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %100

29:                                               ; preds = %8
  %30 = load i32*, i32** %14, align 8
  store i32 1, i32* %30, align 4
  store i32 1, i32* %19, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @get_order(i32 %31)
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %20, align 4
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %36 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @dma_alloc_coherent(i32* %38, i32 %39, i32* %22, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %44 = bitcast %union.mthca_buf* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %47 = bitcast %union.mthca_buf* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %29
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %242

54:                                               ; preds = %29
  %55 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %56 = bitcast %union.mthca_buf* %55 to %struct.TYPE_4__*
  %57 = load i32, i32* @mapping, align 4
  %58 = load i32, i32* %22, align 4
  %59 = call i32 @dma_unmap_addr_set(%struct.TYPE_4__* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %67, %54
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %20, align 4
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32, i32* %20, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %19, align 4
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* %19, align 4
  br label %60

72:                                               ; preds = %60
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kmalloc_array(i32 %73, i32 4, i32 %74)
  %76 = bitcast i8* %75 to i32*
  store i32* %76, i32** %21, align 8
  %77 = load i32*, i32** %21, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %231

80:                                               ; preds = %72
  store i32 0, i32* %23, align 4
  br label %81

81:                                               ; preds = %96, %80
  %82 = load i32, i32* %23, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %20, align 4
  %89 = shl i32 1, %88
  %90 = mul nsw i32 %87, %89
  %91 = add nsw i32 %86, %90
  %92 = load i32*, i32** %21, align 8
  %93 = load i32, i32* %23, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %23, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %23, align 4
  br label %81

99:                                               ; preds = %81
  br label %205

100:                                              ; preds = %8
  %101 = load i32*, i32** %14, align 8
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = add nsw i32 %102, %103
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = sdiv i32 %105, %106
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i8* @kmalloc_array(i32 %109, i32 4, i32 %110)
  %112 = bitcast i8* %111 to i32*
  store i32* %112, i32** %21, align 8
  %113 = load i32*, i32** %21, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %100
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %242

118:                                              ; preds = %100
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i8* @kmalloc_array(i32 %119, i32 8, i32 %120)
  %122 = bitcast i8* %121 to %struct.TYPE_4__*
  %123 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %124 = bitcast %union.mthca_buf* %123 to %struct.TYPE_4__**
  store %struct.TYPE_4__* %122, %struct.TYPE_4__** %124, align 8
  %125 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %126 = bitcast %union.mthca_buf* %125 to %struct.TYPE_4__**
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = icmp ne %struct.TYPE_4__* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %118
  br label %238

130:                                              ; preds = %118
  store i32 0, i32* %23, align 4
  br label %131

131:                                              ; preds = %143, %130
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %19, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %137 = bitcast %union.mthca_buf* %136 to %struct.TYPE_4__**
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %23, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32* null, i32** %142, align 8
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %23, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %23, align 4
  br label %131

146:                                              ; preds = %131
  store i32 0, i32* %23, align 4
  br label %147

147:                                              ; preds = %201, %146
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %19, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %204

151:                                              ; preds = %147
  %152 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %153 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* @PAGE_SIZE, align 4
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i8* @dma_alloc_coherent(i32* %155, i32 %156, i32* %22, i32 %157)
  %159 = bitcast i8* %158 to i32*
  %160 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %161 = bitcast %union.mthca_buf* %160 to %struct.TYPE_4__**
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %23, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i32* %159, i32** %166, align 8
  %167 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %168 = bitcast %union.mthca_buf* %167 to %struct.TYPE_4__**
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i32, i32* %23, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %151
  br label %231

177:                                              ; preds = %151
  %178 = load i32, i32* %22, align 4
  %179 = load i32*, i32** %21, align 8
  %180 = load i32, i32* %23, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %178, i32* %182, align 4
  %183 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %184 = bitcast %union.mthca_buf* %183 to %struct.TYPE_4__**
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = load i32, i32* %23, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %187
  %189 = load i32, i32* @mapping, align 4
  %190 = load i32, i32* %22, align 4
  %191 = call i32 @dma_unmap_addr_set(%struct.TYPE_4__* %188, i32 %189, i32 %190)
  %192 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %193 = bitcast %union.mthca_buf* %192 to %struct.TYPE_4__**
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i32, i32* %23, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @clear_page(i32* %199)
  br label %201

201:                                              ; preds = %177
  %202 = load i32, i32* %23, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %23, align 4
  br label %147

204:                                              ; preds = %147
  br label %205

205:                                              ; preds = %204, %99
  %206 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %207 = load %struct.mthca_pd*, %struct.mthca_pd** %15, align 8
  %208 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %21, align 8
  %211 = load i32, i32* %20, align 4
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* @MTHCA_MPT_FLAG_LOCAL_READ, align 4
  %215 = load i32, i32* %16, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %205
  %218 = load i32, i32* @MTHCA_MPT_FLAG_LOCAL_WRITE, align 4
  br label %220

219:                                              ; preds = %205
  br label %220

220:                                              ; preds = %219, %217
  %221 = phi i32 [ %218, %217 ], [ 0, %219 ]
  %222 = or i32 %214, %221
  %223 = load %struct.mthca_mr*, %struct.mthca_mr** %17, align 8
  %224 = call i32 @mthca_mr_alloc_phys(%struct.mthca_dev* %206, i32 %209, i32* %210, i32 %211, i32 %212, i32 0, i32 %213, i32 %222, %struct.mthca_mr* %223)
  store i32 %224, i32* %18, align 4
  %225 = load i32, i32* %18, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  br label %231

228:                                              ; preds = %220
  %229 = load i32*, i32** %21, align 8
  %230 = call i32 @kfree(i32* %229)
  store i32 0, i32* %9, align 4
  br label %242

231:                                              ; preds = %227, %176, %79
  %232 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %233 = load i32, i32* %11, align 4
  %234 = load %union.mthca_buf*, %union.mthca_buf** %13, align 8
  %235 = load i32*, i32** %14, align 8
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @mthca_buf_free(%struct.mthca_dev* %232, i32 %233, %union.mthca_buf* %234, i32 %236, i32* null)
  br label %238

238:                                              ; preds = %231, %129
  %239 = load i32*, i32** %21, align 8
  %240 = call i32 @kfree(i32* %239)
  %241 = load i32, i32* %18, align 4
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %238, %228, %115, %51
  %243 = load i32, i32* %9, align 4
  ret i32 %243
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @clear_page(i32*) #1

declare dso_local i32 @mthca_mr_alloc_phys(%struct.mthca_dev*, i32, i32*, i32, i32, i32, i32, i32, %struct.mthca_mr*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mthca_buf_free(%struct.mthca_dev*, i32, %union.mthca_buf*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
