; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_dma_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_dma_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i64, i32, i32 }
%struct.img_hash_request_ctx = type { i64, i32, %struct.TYPE_3__*, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"DMA failed, falling back to CPU\00", align 1
@DRIVER_FLAGS_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @img_hash_dma_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_hash_dma_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.img_hash_dev*, align 8
  %4 = alloca %struct.img_hash_request_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.scatterlist, align 4
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.img_hash_dev*
  store %struct.img_hash_dev* %13, %struct.img_hash_dev** %3, align 8
  %14 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %15 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.img_hash_request_ctx* @ahash_request_ctx(i32 %16)
  store %struct.img_hash_request_ctx* %17, %struct.img_hash_request_ctx** %4, align 8
  %18 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %19 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %1
  br label %234

28:                                               ; preds = %22
  %29 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32* @sg_virt(%struct.TYPE_3__* %31)
  store i32* %32, i32** %5, align 8
  %33 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = urem i64 %42, 4
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = udiv i64 %44, 4
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %95

48:                                               ; preds = %28
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i64, i64* %8, align 8
  %55 = mul i64 %54, 4
  %56 = call i32 @sg_init_one(%struct.scatterlist* %11, i32* %53, i64 %55)
  %57 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %58 = call i64 @img_hash_xmit_dma(%struct.img_hash_dev* %57, %struct.scatterlist* %11)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %48
  %61 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %62 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @DRIVER_FLAGS_CPU, align 4
  %66 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %71 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %75 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i64, i64* %8, align 8
  %79 = mul i64 %78, 4
  %80 = call i32 @img_hash_xmit_cpu(%struct.img_hash_dev* %72, i32* %77, i64 %79, i32 0)
  %81 = load i64, i64* %8, align 8
  %82 = mul i64 %81, 4
  %83 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %82
  store i64 %86, i64* %84, align 8
  store i64 0, i64* %8, align 8
  br label %94

87:                                               ; preds = %48
  %88 = load i64, i64* %8, align 8
  %89 = mul i64 %88, 4
  %90 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %87, %60
  br label %95

95:                                               ; preds = %94, %28
  %96 = load i64, i64* %7, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %224

98:                                               ; preds = %95
  %99 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %100 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %103 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %106 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %110 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i8* @sg_pcopy_to_buffer(i32 %101, i32 %104, i64 %107, i64 %108, i64 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %115 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  store i64 0, i64* %10, align 8
  %116 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %117 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %116, i32 0, i32 2
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = call i8* @sg_next(%struct.TYPE_3__* %118)
  %120 = bitcast i8* %119 to %struct.TYPE_3__*
  %121 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %122 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %121, i32 0, i32 2
  store %struct.TYPE_3__* %120, %struct.TYPE_3__** %122, align 8
  br label %123

123:                                              ; preds = %205, %98
  %124 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %125 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %124, i32 0, i32 2
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = icmp ne %struct.TYPE_3__* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %130 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %131, 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = phi i1 [ false, %123 ], [ %132, %128 ]
  br i1 %134, label %135, label %206

135:                                              ; preds = %133
  %136 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %137 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %136, i32 0, i32 2
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %9, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %143 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 4, %144
  %146 = sext i32 %145 to i64
  %147 = icmp ugt i64 %141, %146
  %148 = zext i1 %147 to i32
  %149 = call i64 @likely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %135
  %152 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %153 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 4, %154
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %9, align 8
  br label %157

157:                                              ; preds = %151, %135
  %158 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %159 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %162 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %165 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %168 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %166, %170
  %172 = load i64, i64* %9, align 8
  %173 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %174 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %177 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %175, %179
  %181 = call i8* @sg_pcopy_to_buffer(i32 %160, i32 %163, i64 %171, i64 %172, i64 %180)
  %182 = ptrtoint i8* %181 to i64
  store i64 %182, i64* %10, align 8
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %185 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = add i64 %187, %183
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 8
  %190 = load i64, i64* %10, align 8
  %191 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %192 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %191, i32 0, i32 2
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp uge i64 %190, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %157
  %198 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %199 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %198, i32 0, i32 2
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = call i8* @sg_next(%struct.TYPE_3__* %200)
  %202 = bitcast i8* %201 to %struct.TYPE_3__*
  %203 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %204 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %203, i32 0, i32 2
  store %struct.TYPE_3__* %202, %struct.TYPE_3__** %204, align 8
  store i64 0, i64* %10, align 8
  br label %205

205:                                              ; preds = %197, %157
  br label %123

206:                                              ; preds = %133
  %207 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %208 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %212 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, %210
  store i64 %214, i64* %212, align 8
  %215 = load i64, i64* %10, align 8
  %216 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %217 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  %218 = load i64, i64* %8, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %206
  %221 = load %struct.img_hash_dev*, %struct.img_hash_dev** %3, align 8
  %222 = call i32 @img_hash_dma_callback(%struct.img_hash_dev* %221)
  br label %223

223:                                              ; preds = %220, %206
  br label %234

224:                                              ; preds = %95
  %225 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %226 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %228 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %227, i32 0, i32 2
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %228, align 8
  %230 = call i8* @sg_next(%struct.TYPE_3__* %229)
  %231 = bitcast i8* %230 to %struct.TYPE_3__*
  %232 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %233 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %232, i32 0, i32 2
  store %struct.TYPE_3__* %231, %struct.TYPE_3__** %233, align 8
  br label %234

234:                                              ; preds = %27, %224, %223
  ret void
}

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(i32) #1

declare dso_local i32* @sg_virt(%struct.TYPE_3__*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i64) #1

declare dso_local i64 @img_hash_xmit_dma(%struct.img_hash_dev*, %struct.scatterlist*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @img_hash_xmit_cpu(%struct.img_hash_dev*, i32*, i64, i32) #1

declare dso_local i8* @sg_pcopy_to_buffer(i32, i32, i64, i64, i64) #1

declare dso_local i8* @sg_next(%struct.TYPE_3__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @img_hash_dma_callback(%struct.img_hash_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
