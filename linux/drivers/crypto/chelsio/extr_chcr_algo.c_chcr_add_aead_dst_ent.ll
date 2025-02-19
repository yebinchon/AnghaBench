; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_add_aead_dst_ent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_add_aead_dst_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i64, i64 }
%struct.cpl_rx_phys_dsgl = type { i32 }
%struct.chcr_aead_reqctx = type { i64, i32, i64 }
%struct.crypto_aead = type { i32 }
%struct.dsgl_walk = type { i32 }
%struct.chcr_context = type { i32 }

@IV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chcr_add_aead_dst_ent(%struct.aead_request* %0, %struct.cpl_rx_phys_dsgl* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cpl_rx_phys_dsgl*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.chcr_aead_reqctx*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca %struct.dsgl_walk, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.chcr_context*, align 8
  %12 = alloca i64, align 8
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.cpl_rx_phys_dsgl* %1, %struct.cpl_rx_phys_dsgl** %5, align 8
  store i16 %2, i16* %6, align 2
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = call %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request* %13)
  store %struct.chcr_aead_reqctx* %14, %struct.chcr_aead_reqctx** %7, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %16 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %8, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %18 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %20 = call %struct.chcr_context* @a_ctx(%struct.crypto_aead* %19)
  store %struct.chcr_context* %20, %struct.chcr_context** %11, align 8
  %21 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %5, align 8
  %22 = call i32 @dsgl_walk_init(%struct.dsgl_walk* %9, %struct.cpl_rx_phys_dsgl* %21)
  %23 = load i64, i64* @IV, align 8
  %24 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %7, align 8
  %25 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %7, align 8
  %29 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dsgl_walk_add_page(%struct.dsgl_walk* %9, i64 %27, i32 %30)
  %32 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.chcr_aead_reqctx*, %struct.chcr_aead_reqctx** %7, align 8
  %40 = getelementptr inbounds %struct.chcr_aead_reqctx, %struct.chcr_aead_reqctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load i32, i32* %10, align 4
  %45 = sub i32 0, %44
  br label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i32 [ %45, %43 ], [ %47, %46 ]
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %38, %50
  store i64 %51, i64* %12, align 8
  %52 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %53 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @dsgl_walk_add_sg(%struct.dsgl_walk* %9, i32 %54, i64 %55, i32 0)
  %57 = load i16, i16* %6, align 2
  %58 = load %struct.chcr_context*, %struct.chcr_context** %11, align 8
  %59 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dsgl_walk_end(%struct.dsgl_walk* %9, i16 zeroext %57, i32 %60)
  ret void
}

declare dso_local %struct.chcr_aead_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.chcr_context* @a_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @dsgl_walk_init(%struct.dsgl_walk*, %struct.cpl_rx_phys_dsgl*) #1

declare dso_local i32 @dsgl_walk_add_page(%struct.dsgl_walk*, i64, i32) #1

declare dso_local i32 @dsgl_walk_add_sg(%struct.dsgl_walk*, i32, i64, i32) #1

declare dso_local i32 @dsgl_walk_end(%struct.dsgl_walk*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
