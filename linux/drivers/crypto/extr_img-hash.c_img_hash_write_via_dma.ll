; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_write_via_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_write_via_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i32, i32, i32, i32 }
%struct.img_hash_request_ctx = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"xmit dma size: %d\0A\00", align 1
@DRIVER_FLAGS_FINAL = common dso_local global i32 0, align 4
@DRIVER_FLAGS_DMA_ACTIVE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_hash_dev*)* @img_hash_write_via_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_hash_write_via_dma(%struct.img_hash_dev* %0) #0 {
  %2 = alloca %struct.img_hash_dev*, align 8
  %3 = alloca %struct.img_hash_request_ctx*, align 8
  store %struct.img_hash_dev* %0, %struct.img_hash_dev** %2, align 8
  %4 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %5 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.img_hash_request_ctx* @ahash_request_ctx(i32 %6)
  store %struct.img_hash_request_ctx* %7, %struct.img_hash_request_ctx** %3, align 8
  %8 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %9 = call i32 @img_hash_start(%struct.img_hash_dev* %8, i32 1)
  %10 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %11 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @DRIVER_FLAGS_FINAL, align 4
  %23 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %24 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* @DRIVER_FLAGS_DMA_ACTIVE, align 4
  %29 = load i32, i32* @DRIVER_FLAGS_FINAL, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %32 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %36 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %35, i32 0, i32 1
  %37 = call i32 @tasklet_schedule(i32* %36)
  %38 = load i32, i32* @EINPROGRESS, align 4
  %39 = sub nsw i32 0, %38
  ret i32 %39
}

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @img_hash_start(%struct.img_hash_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
