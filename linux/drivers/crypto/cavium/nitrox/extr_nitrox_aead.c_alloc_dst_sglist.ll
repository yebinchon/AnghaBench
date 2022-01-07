; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_alloc_dst_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_alloc_dst_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_kcrypt_request = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_kcrypt_request*, %struct.scatterlist*, i32, i32)* @alloc_dst_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dst_sglist(%struct.nitrox_kcrypt_request* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nitrox_kcrypt_request*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nitrox_kcrypt_request* %0, %struct.nitrox_kcrypt_request** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @sg_nents_for_len(%struct.scatterlist* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %40

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 3
  store i32 %21, i32* %10, align 4
  %22 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @alloc_dst_req_buf(%struct.nitrox_kcrypt_request* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %6, align 8
  %31 = call i32 @nitrox_creq_set_orh(%struct.nitrox_kcrypt_request* %30)
  %32 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %6, align 8
  %33 = call i32 @nitrox_creq_set_comp(%struct.nitrox_kcrypt_request* %32)
  %34 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @nitrox_creq_set_dst_sg(%struct.nitrox_kcrypt_request* %34, i32 %35, i32 %36, %struct.scatterlist* %37, i32 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %29, %27, %17
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i32) #1

declare dso_local i32 @alloc_dst_req_buf(%struct.nitrox_kcrypt_request*, i32) #1

declare dso_local i32 @nitrox_creq_set_orh(%struct.nitrox_kcrypt_request*) #1

declare dso_local i32 @nitrox_creq_set_comp(%struct.nitrox_kcrypt_request*) #1

declare dso_local i32 @nitrox_creq_set_dst_sg(%struct.nitrox_kcrypt_request*, i32, i32, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
