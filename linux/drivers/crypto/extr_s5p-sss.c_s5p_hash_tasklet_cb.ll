; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_tasklet_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_tasklet_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { i32, i32 }

@HASH_FLAGS_BUSY = common dso_local global i32 0, align 4
@HASH_FLAGS_DMA_READY = common dso_local global i32 0, align 4
@HASH_FLAGS_DMA_ACTIVE = common dso_local global i32 0, align 4
@HASH_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @s5p_hash_tasklet_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_hash_tasklet_cb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.s5p_aes_dev*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.s5p_aes_dev*
  store %struct.s5p_aes_dev* %5, %struct.s5p_aes_dev** %3, align 8
  %6 = load i32, i32* @HASH_FLAGS_BUSY, align 4
  %7 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %7, i32 0, i32 0
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %13 = call i32 @s5p_hash_handle_queue(%struct.s5p_aes_dev* %12, i32* null)
  br label %55

14:                                               ; preds = %1
  %15 = load i32, i32* @HASH_FLAGS_DMA_READY, align 4
  %16 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %17 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load i32, i32* @HASH_FLAGS_DMA_ACTIVE, align 4
  %22 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %23 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %22, i32 0, i32 0
  %24 = call i64 @test_and_clear_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %28 = call i32 @s5p_hash_update_dma_stop(%struct.s5p_aes_dev* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* @HASH_FLAGS_OUTPUT_READY, align 4
  %31 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %32 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %31, i32 0, i32 0
  %33 = call i64 @test_and_clear_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @HASH_FLAGS_DMA_READY, align 4
  %37 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %38 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  br label %42

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %14
  br label %55

42:                                               ; preds = %35
  %43 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %44 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @s5p_hash_finish_req(i32 %45, i32 0)
  %47 = load i32, i32* @HASH_FLAGS_BUSY, align 4
  %48 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %49 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %48, i32 0, i32 0
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %54 = call i32 @s5p_hash_handle_queue(%struct.s5p_aes_dev* %53, i32* null)
  br label %55

55:                                               ; preds = %11, %41, %52, %42
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @s5p_hash_handle_queue(%struct.s5p_aes_dev*, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @s5p_hash_update_dma_stop(%struct.s5p_aes_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @s5p_hash_finish_req(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
