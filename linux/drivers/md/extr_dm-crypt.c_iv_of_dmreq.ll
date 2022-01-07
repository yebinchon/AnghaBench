; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_iv_of_dmreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_iv_of_dmreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32 }
%struct.dm_crypt_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.crypt_config*, %struct.dm_crypt_request*)* @iv_of_dmreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @iv_of_dmreq(%struct.crypt_config* %0, %struct.dm_crypt_request* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.crypt_config*, align 8
  %5 = alloca %struct.dm_crypt_request*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %4, align 8
  store %struct.dm_crypt_request* %1, %struct.dm_crypt_request** %5, align 8
  %6 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %7 = call i64 @crypt_integrity_aead(%struct.crypt_config* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %5, align 8
  %11 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %10, i64 1
  %12 = ptrtoint %struct.dm_crypt_request* %11 to i64
  %13 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %14 = call i32 @any_tfm_aead(%struct.crypt_config* %13)
  %15 = call i64 @crypto_aead_alignmask(i32 %14)
  %16 = add nsw i64 %15, 1
  %17 = call i64 @ALIGN(i64 %12, i64 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %3, align 8
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %5, align 8
  %21 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %20, i64 1
  %22 = ptrtoint %struct.dm_crypt_request* %21 to i64
  %23 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %24 = call i32 @any_tfm(%struct.crypt_config* %23)
  %25 = call i64 @crypto_skcipher_alignmask(i32 %24)
  %26 = add nsw i64 %25, 1
  %27 = call i64 @ALIGN(i64 %22, i64 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %3, align 8
  br label %29

29:                                               ; preds = %19, %9
  %30 = load i32*, i32** %3, align 8
  ret i32* %30
}

declare dso_local i64 @crypt_integrity_aead(%struct.crypt_config*) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @crypto_aead_alignmask(i32) #1

declare dso_local i32 @any_tfm_aead(%struct.crypt_config*) #1

declare dso_local i64 @crypto_skcipher_alignmask(i32) #1

declare dso_local i32 @any_tfm(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
