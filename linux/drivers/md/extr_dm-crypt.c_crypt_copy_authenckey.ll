; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_copy_authenckey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_copy_authenckey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_authenc_key_param = type { i32 }
%struct.rtattr = type { i32, i32 }

@CRYPTO_AUTHENC_KEYA_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @crypt_copy_authenckey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_copy_authenckey(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_authenc_key_param*, align 8
  %10 = alloca %struct.rtattr*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.rtattr*
  store %struct.rtattr* %12, %struct.rtattr** %10, align 8
  %13 = load %struct.rtattr*, %struct.rtattr** %10, align 8
  %14 = call %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr* %13)
  store %struct.crypto_authenc_key_param* %14, %struct.crypto_authenc_key_param** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @cpu_to_be32(i32 %15)
  %17 = load %struct.crypto_authenc_key_param*, %struct.crypto_authenc_key_param** %9, align 8
  %18 = getelementptr inbounds %struct.crypto_authenc_key_param, %struct.crypto_authenc_key_param* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = call i32 @RTA_LENGTH(i32 4)
  %20 = load %struct.rtattr*, %struct.rtattr** %10, align 8
  %21 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @CRYPTO_AUTHENC_KEYA_PARAM, align 4
  %23 = load %struct.rtattr*, %struct.rtattr** %10, align 8
  %24 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call i32 @RTA_SPACE(i32 4)
  %26 = load i8*, i8** %5, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @memcpy(i8* %29, i8* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @memcpy(i8* %40, i8* %41, i32 %42)
  ret void
}

declare dso_local %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @RTA_LENGTH(i32) #1

declare dso_local i32 @RTA_SPACE(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
