; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_token.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_skcipher_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_cipher_ctx = type { i32 }
%struct.safexcel_command_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.safexcel_token = type { i32, i32, i32, i32 }

@EIP197_TOKEN_OPCODE_DIRECTION = common dso_local global i32 0, align 4
@EIP197_TOKEN_STAT_LAST_PACKET = common dso_local global i32 0, align 4
@EIP197_TOKEN_STAT_LAST_HASH = common dso_local global i32 0, align 4
@EIP197_TOKEN_INS_LAST = common dso_local global i32 0, align 4
@EIP197_TOKEN_INS_TYPE_CRYPTO = common dso_local global i32 0, align 4
@EIP197_TOKEN_INS_TYPE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_cipher_ctx*, i32*, %struct.safexcel_command_desc*, i32)* @safexcel_skcipher_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safexcel_skcipher_token(%struct.safexcel_cipher_ctx* %0, i32* %1, %struct.safexcel_command_desc* %2, i32 %3) #0 {
  %5 = alloca %struct.safexcel_cipher_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.safexcel_command_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.safexcel_token*, align 8
  store %struct.safexcel_cipher_ctx* %0, %struct.safexcel_cipher_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.safexcel_command_desc* %2, %struct.safexcel_command_desc** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %7, align 8
  %13 = call i32 @safexcel_cipher_token(%struct.safexcel_cipher_ctx* %10, i32* %11, %struct.safexcel_command_desc* %12)
  %14 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %7, align 8
  %15 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 4
  %19 = inttoptr i64 %18 to %struct.safexcel_token*
  store %struct.safexcel_token* %19, %struct.safexcel_token** %9, align 8
  %20 = load i32, i32* @EIP197_TOKEN_OPCODE_DIRECTION, align 4
  %21 = load %struct.safexcel_token*, %struct.safexcel_token** %9, align 8
  %22 = getelementptr inbounds %struct.safexcel_token, %struct.safexcel_token* %21, i64 0
  %23 = getelementptr inbounds %struct.safexcel_token, %struct.safexcel_token* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.safexcel_token*, %struct.safexcel_token** %9, align 8
  %26 = getelementptr inbounds %struct.safexcel_token, %struct.safexcel_token* %25, i64 0
  %27 = getelementptr inbounds %struct.safexcel_token, %struct.safexcel_token* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @EIP197_TOKEN_STAT_LAST_PACKET, align 4
  %29 = load i32, i32* @EIP197_TOKEN_STAT_LAST_HASH, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.safexcel_token*, %struct.safexcel_token** %9, align 8
  %32 = getelementptr inbounds %struct.safexcel_token, %struct.safexcel_token* %31, i64 0
  %33 = getelementptr inbounds %struct.safexcel_token, %struct.safexcel_token* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @EIP197_TOKEN_INS_LAST, align 4
  %35 = load i32, i32* @EIP197_TOKEN_INS_TYPE_CRYPTO, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @EIP197_TOKEN_INS_TYPE_OUTPUT, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.safexcel_token*, %struct.safexcel_token** %9, align 8
  %40 = getelementptr inbounds %struct.safexcel_token, %struct.safexcel_token* %39, i64 0
  %41 = getelementptr inbounds %struct.safexcel_token, %struct.safexcel_token* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  ret void
}

declare dso_local i32 @safexcel_cipher_token(%struct.safexcel_cipher_ctx*, i32*, %struct.safexcel_command_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
