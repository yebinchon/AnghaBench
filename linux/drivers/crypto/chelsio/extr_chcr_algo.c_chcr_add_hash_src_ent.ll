; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_add_hash_src_ent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_add_hash_src_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.ulptx_sgl = type { i32 }
%struct.hash_wr_param = type { i32, i32 }
%struct.ulptx_walk = type { i32, i32 }
%struct.chcr_ahash_req_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chcr_add_hash_src_ent(%struct.ahash_request* %0, %struct.ulptx_sgl* %1, %struct.hash_wr_param* %2) #0 {
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.ulptx_sgl*, align 8
  %6 = alloca %struct.hash_wr_param*, align 8
  %7 = alloca %struct.ulptx_walk, align 4
  %8 = alloca %struct.chcr_ahash_req_ctx*, align 8
  %9 = alloca i32*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store %struct.ulptx_sgl* %1, %struct.ulptx_sgl** %5, align 8
  store %struct.hash_wr_param* %2, %struct.hash_wr_param** %6, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %11 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.chcr_ahash_req_ctx* %11, %struct.chcr_ahash_req_ctx** %8, align 8
  %12 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %3
  %18 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %5, align 8
  %19 = bitcast %struct.ulptx_sgl* %18 to i32*
  store i32* %19, i32** %9, align 8
  %20 = load %struct.hash_wr_param*, %struct.hash_wr_param** %6, align 8
  %21 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hash_wr_param*, %struct.hash_wr_param** %6, align 8
  %30 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32* %25, i32 %28, i32 %31)
  %33 = load %struct.hash_wr_param*, %struct.hash_wr_param** %6, align 8
  %34 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %9, align 8
  br label %39

39:                                               ; preds = %24, %17
  %40 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sg_nents(i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.hash_wr_param*, %struct.hash_wr_param** %6, align 8
  %51 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sg_pcopy_to_buffer(i32 %43, i32 %48, i32* %49, i32 %52, i32 0)
  br label %94

54:                                               ; preds = %3
  %55 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %5, align 8
  %56 = call i32 @ulptx_walk_init(%struct.ulptx_walk* %7, %struct.ulptx_sgl* %55)
  %57 = load %struct.hash_wr_param*, %struct.hash_wr_param** %6, align 8
  %58 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.hash_wr_param*, %struct.hash_wr_param** %6, align 8
  %63 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ulptx_walk_add_page(%struct.ulptx_walk* %7, i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %61, %54
  %71 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hash_wr_param*, %struct.hash_wr_param** %6, align 8
  %76 = getelementptr inbounds %struct.hash_wr_param, %struct.hash_wr_param* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ulptx_walk_add_sg(%struct.ulptx_walk* %7, i32 %74, i32 %77, i32 %81)
  %83 = getelementptr inbounds %struct.ulptx_walk, %struct.ulptx_walk* %7, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %8, align 8
  %86 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = getelementptr inbounds %struct.ulptx_walk, %struct.ulptx_walk* %7, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = call i32 @ulptx_walk_end(%struct.ulptx_walk* %7)
  br label %94

94:                                               ; preds = %70, %39
  ret void
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local i32 @ulptx_walk_init(%struct.ulptx_walk*, %struct.ulptx_sgl*) #1

declare dso_local i32 @ulptx_walk_add_page(%struct.ulptx_walk*, i32, i32) #1

declare dso_local i32 @ulptx_walk_add_sg(%struct.ulptx_walk*, i32, i32, i32) #1

declare dso_local i32 @ulptx_walk_end(%struct.ulptx_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
