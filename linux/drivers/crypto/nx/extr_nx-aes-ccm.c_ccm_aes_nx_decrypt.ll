; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-ccm.c_ccm_aes_nx_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-ccm.c_ccm_aes_nx_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.blkcipher_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @ccm_aes_nx_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_aes_nx_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.blkcipher_desc, align 4
  %5 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %6 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %7 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @crypto_ccm_check_iv(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %20 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ccm_nx_decrypt(%struct.aead_request* %18, %struct.blkcipher_desc* %4, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @crypto_ccm_check_iv(i32) #1

declare dso_local i32 @ccm_nx_decrypt(%struct.aead_request*, %struct.blkcipher_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
