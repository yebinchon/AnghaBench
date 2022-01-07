; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_dma_out_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_dma_out_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_aes_dev = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.omap_aes_reqctx = type { i64 }

@FLAGS_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_aes_gcm_dma_out_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.omap_aes_dev*, align 8
  %4 = alloca %struct.omap_aes_reqctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [4 x i32], align 16
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.omap_aes_dev*
  store %struct.omap_aes_dev* %10, %struct.omap_aes_dev** %3, align 8
  %11 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %12 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FLAGS_ENCRYPT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %19 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %20 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %25 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %28 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %34 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @scatterwalk_map_and_copy(i32* %18, i32 %23, i64 %32, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %17, %1
  %38 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %39 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call %struct.omap_aes_reqctx* @aead_request_ctx(%struct.TYPE_2__* %40)
  store %struct.omap_aes_reqctx* %41, %struct.omap_aes_reqctx** %4, align 8
  %42 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %4, align 8
  %43 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %88, %37
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %91

49:                                               ; preds = %46
  %50 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %51 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @AES_REG_TAG_N(%struct.omap_aes_dev* %51, i32 %52)
  %54 = call i32 @omap_aes_read(%struct.omap_aes_dev* %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %55, %60
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %67 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FLAGS_ENCRYPT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %49
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %77, %81
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %72, %49
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %46

91:                                               ; preds = %46
  %92 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %93 = call i32 @omap_aes_gcm_done_task(%struct.omap_aes_dev* %92)
  ret void
}

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i64, i32, i32) #1

declare dso_local %struct.omap_aes_reqctx* @aead_request_ctx(%struct.TYPE_2__*) #1

declare dso_local i32 @omap_aes_read(%struct.omap_aes_dev*, i32) #1

declare dso_local i32 @AES_REG_TAG_N(%struct.omap_aes_dev*, i32) #1

declare dso_local i32 @omap_aes_gcm_done_task(%struct.omap_aes_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
