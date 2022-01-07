; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_add_aead_src_ent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_add_aead_src_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64, i32 }
%struct.ulptx_sgl = type { i32 }
%struct.ulptx_walk = type { i32 }
%struct.chcr_aead_reqctx = type { i32, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chcr_add_aead_src_ent(%struct.aead_request* %0, %struct.ulptx_sgl* %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.ulptx_sgl*, align 8
  %5 = alloca %struct.ulptx_walk, align 4
  %6 = alloca %struct.chcr_aead_reqctx*, align 8
  %7 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store %struct.ulptx_sgl* %1, %struct.ulptx_sgl** %4, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %8)
  store %struct.chcr_aead_reqctx* %9, %struct.chcr_aead_reqctx** %6, align 8
  %10 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %11 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  %15 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %4, align 8
  %16 = bitcast %struct.ulptx_sgl* %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %18 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %24 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %27 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memcpy(i32* %22, i32 %25, i64 %28)
  %30 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %31 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 %32
  store i32* %34, i32** %7, align 8
  br label %35

35:                                               ; preds = %21, %14
  %36 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %37 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sg_nents(i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %45 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %48 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @sg_pcopy_to_buffer(i32 %38, i32 %42, i32* %43, i64 %50, i32 0)
  br label %80

52:                                               ; preds = %2
  %53 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %4, align 8
  %54 = call i32 @ulptx_walk_init(%struct.ulptx_walk* %5, %struct.ulptx_sgl* %53)
  %55 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %56 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %61 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %6, align 8
  %64 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ulptx_walk_add_page(%struct.ulptx_walk* %5, i64 %62, i32 %65)
  br label %67

67:                                               ; preds = %59, %52
  %68 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %69 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %72 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %75 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = call i32 @ulptx_walk_add_sg(%struct.ulptx_walk* %5, i32 %70, i64 %77, i32 0)
  %79 = call i32 @ulptx_walk_end(%struct.ulptx_walk* %5)
  br label %80

80:                                               ; preds = %67, %35
  ret void
}

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i32*, i64, i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local i32 @ulptx_walk_init(%struct.ulptx_walk*, %struct.ulptx_sgl*) #1

declare dso_local i32 @ulptx_walk_add_page(%struct.ulptx_walk*, i64, i32) #1

declare dso_local i32 @ulptx_walk_add_sg(%struct.ulptx_walk*, i32, i64, i32) #1

declare dso_local i32 @ulptx_walk_end(%struct.ulptx_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
