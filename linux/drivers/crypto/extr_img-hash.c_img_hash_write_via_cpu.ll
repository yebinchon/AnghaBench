; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_write_via_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_write_via_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_hash_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.img_hash_request_ctx = type { i32, i32, i64, i32 }

@DRIVER_FLAGS_CPU = common dso_local global i32 0, align 4
@DRIVER_FLAGS_FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_hash_dev*)* @img_hash_write_via_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_hash_write_via_cpu(%struct.img_hash_dev* %0) #0 {
  %2 = alloca %struct.img_hash_dev*, align 8
  %3 = alloca %struct.img_hash_request_ctx*, align 8
  store %struct.img_hash_dev* %0, %struct.img_hash_dev** %2, align 8
  %4 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %5 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = call %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.TYPE_2__* %6)
  store %struct.img_hash_request_ctx* %7, %struct.img_hash_request_ctx** %3, align 8
  %8 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %9 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sg_nents(i32 %15)
  %17 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %21 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @sg_copy_to_buffer(i32 %12, i32 %16, i32 %19, i32 %24)
  %26 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %29 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @DRIVER_FLAGS_CPU, align 4
  %38 = load i32, i32* @DRIVER_FLAGS_FINAL, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %41 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %45 = call i32 @img_hash_start(%struct.img_hash_dev* %44, i32 0)
  %46 = load %struct.img_hash_dev*, %struct.img_hash_dev** %2, align 8
  %47 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @img_hash_xmit_cpu(%struct.img_hash_dev* %46, i32 %49, i32 %52, i32 1)
  ret i32 %53
}

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.TYPE_2__*) #1

declare dso_local i64 @sg_copy_to_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local i32 @img_hash_start(%struct.img_hash_dev*, i32) #1

declare dso_local i32 @img_hash_xmit_cpu(%struct.img_hash_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
