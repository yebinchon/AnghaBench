; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_finish_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_finish_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.s5p_hash_reqctx = type { i32, %struct.TYPE_5__*, %struct.s5p_aes_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.s5p_aes_dev = type { i32, i32 }

@HASH_FLAGS_SGS_COPIED = common dso_local global i32 0, align 4
@HASH_FLAGS_SGS_ALLOCED = common dso_local global i32 0, align 4
@HASH_FLAGS_FINAL = common dso_local global i32 0, align 4
@HASH_FLAGS_BUSY = common dso_local global i32 0, align 4
@HASH_FLAGS_DMA_READY = common dso_local global i32 0, align 4
@HASH_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i32)* @s5p_hash_finish_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_hash_finish_req(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_hash_reqctx*, align 8
  %6 = alloca %struct.s5p_aes_dev*, align 8
  %7 = alloca i64, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.s5p_hash_reqctx* %9, %struct.s5p_hash_reqctx** %5, align 8
  %10 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %11 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %10, i32 0, i32 2
  %12 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %11, align 8
  store %struct.s5p_aes_dev* %12, %struct.s5p_aes_dev** %6, align 8
  %13 = load i32, i32* @HASH_FLAGS_SGS_COPIED, align 4
  %14 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %15 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %20 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i64 @sg_virt(%struct.TYPE_5__* %21)
  %23 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %24 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_order(i32 %27)
  %29 = call i32 @free_pages(i64 %22, i32 %28)
  br label %30

30:                                               ; preds = %18, %2
  %31 = load i32, i32* @HASH_FLAGS_SGS_ALLOCED, align 4
  %32 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %33 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %38 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @kfree(%struct.TYPE_5__* %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %43 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %42, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %43, align 8
  %44 = load i32, i32* @HASH_FLAGS_SGS_ALLOCED, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* @HASH_FLAGS_SGS_COPIED, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = or i32 %45, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %51 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %41
  %57 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %58 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %63 = call i32 @s5p_hash_read_msg(%struct.ahash_request* %62)
  %64 = load i32, i32* @HASH_FLAGS_FINAL, align 4
  %65 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %66 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %65, i32 0, i32 0
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %71 = call i32 @s5p_hash_finish(%struct.ahash_request* %70)
  br label %72

72:                                               ; preds = %69, %61
  br label %76

73:                                               ; preds = %56, %41
  %74 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %75 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %72
  %77 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %78 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %77, i32 0, i32 1
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load i32, i32* @HASH_FLAGS_BUSY, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = load i32, i32* @HASH_FLAGS_FINAL, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = or i32 %82, %84
  %86 = load i32, i32* @HASH_FLAGS_DMA_READY, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = or i32 %85, %87
  %89 = load i32, i32* @HASH_FLAGS_OUTPUT_READY, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = or i32 %88, %90
  %92 = xor i32 %91, -1
  %93 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %94 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %98 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %97, i32 0, i32 1
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %102 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %103, align 8
  %105 = icmp ne i32 (%struct.TYPE_4__*, i32)* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %76
  %107 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %108 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %109, align 8
  %111 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %112 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %111, i32 0, i32 0
  %113 = load i32, i32* %4, align 4
  %114 = call i32 %110(%struct.TYPE_4__* %112, i32 %113)
  br label %115

115:                                              ; preds = %106, %76
  ret void
}

declare dso_local %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @sg_virt(%struct.TYPE_5__*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @s5p_hash_read_msg(%struct.ahash_request*) #1

declare dso_local i32 @s5p_hash_finish(%struct.ahash_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
