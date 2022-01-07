; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_key_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_key_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32 }

@SAHARA_HDR_BASE = common dso_local global i32 0, align 4
@SAHARA_HDR_SKHA_ALG_AES = common dso_local global i32 0, align 4
@SAHARA_HDR_FORM_KEY = common dso_local global i32 0, align 4
@SAHARA_HDR_LLO = common dso_local global i32 0, align 4
@SAHARA_HDR_CHA_SKHA = common dso_local global i32 0, align 4
@SAHARA_HDR_PARITY_BIT = common dso_local global i32 0, align 4
@FLAGS_CBC = common dso_local global i32 0, align 4
@SAHARA_HDR_SKHA_MODE_CBC = common dso_local global i32 0, align 4
@FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@SAHARA_HDR_SKHA_OP_ENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sahara_dev*)* @sahara_aes_key_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_aes_key_hdr(%struct.sahara_dev* %0) #0 {
  %2 = alloca %struct.sahara_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.sahara_dev* %0, %struct.sahara_dev** %2, align 8
  %4 = load i32, i32* @SAHARA_HDR_BASE, align 4
  %5 = load i32, i32* @SAHARA_HDR_SKHA_ALG_AES, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @SAHARA_HDR_FORM_KEY, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SAHARA_HDR_LLO, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SAHARA_HDR_CHA_SKHA, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SAHARA_HDR_PARITY_BIT, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %16 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FLAGS_CBC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @SAHARA_HDR_SKHA_MODE_CBC, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @SAHARA_HDR_PARITY_BIT, align 4
  %26 = load i32, i32* %3, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %30 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FLAGS_ENCRYPT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i32, i32* @SAHARA_HDR_SKHA_OP_ENC, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @SAHARA_HDR_PARITY_BIT, align 4
  %40 = load i32, i32* %3, align 4
  %41 = xor i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
