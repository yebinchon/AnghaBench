; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_alloc_src_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_alloc_src_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_kcrypt_request = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_kcrypt_request*, %struct.scatterlist*, i8*, i32, i32)* @alloc_src_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_src_sglist(%struct.nitrox_kcrypt_request* %0, %struct.scatterlist* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nitrox_kcrypt_request*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nitrox_kcrypt_request* %0, %struct.nitrox_kcrypt_request** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @sg_nents_for_len(%struct.scatterlist* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %6, align 4
  br label %45

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %12, align 4
  %24 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %7, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @alloc_src_req_buf(%struct.nitrox_kcrypt_request* %24, i32 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %45

32:                                               ; preds = %21
  %33 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %7, align 8
  %34 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @nitrox_creq_copy_iv(i32 %35, i8* %36, i32 %37)
  %39 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @nitrox_creq_set_src_sg(%struct.nitrox_kcrypt_request* %39, i32 %40, i32 %41, %struct.scatterlist* %42, i32 %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %32, %30, %19
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i32) #1

declare dso_local i32 @alloc_src_req_buf(%struct.nitrox_kcrypt_request*, i32, i32) #1

declare dso_local i32 @nitrox_creq_copy_iv(i32, i8*, i32) #1

declare dso_local i32 @nitrox_creq_set_src_sg(%struct.nitrox_kcrypt_request*, i32, i32, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
