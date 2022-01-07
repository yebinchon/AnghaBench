; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_flexi_cipher_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_flexi_cipher_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_cipher = type { i32, i64 }

@flexi_cipher_table = common dso_local global %struct.nitrox_cipher* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @flexi_cipher_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexi_cipher_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nitrox_cipher*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.nitrox_cipher*, %struct.nitrox_cipher** @flexi_cipher_table, align 8
  store %struct.nitrox_cipher* %4, %struct.nitrox_cipher** %3, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.nitrox_cipher*, %struct.nitrox_cipher** %3, align 8
  %7 = getelementptr inbounds %struct.nitrox_cipher, %struct.nitrox_cipher* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.nitrox_cipher*, %struct.nitrox_cipher** %3, align 8
  %12 = getelementptr inbounds %struct.nitrox_cipher, %struct.nitrox_cipher* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @strcmp(i64 %13, i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %21

18:                                               ; preds = %10
  %19 = load %struct.nitrox_cipher*, %struct.nitrox_cipher** %3, align 8
  %20 = getelementptr inbounds %struct.nitrox_cipher, %struct.nitrox_cipher* %19, i32 1
  store %struct.nitrox_cipher* %20, %struct.nitrox_cipher** %3, align 8
  br label %5

21:                                               ; preds = %17, %5
  %22 = load %struct.nitrox_cipher*, %struct.nitrox_cipher** %3, align 8
  %23 = getelementptr inbounds %struct.nitrox_cipher, %struct.nitrox_cipher* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  ret i32 %24
}

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
