; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_nx842_crypto_add_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_nx842_crypto_add_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx842_crypto_header = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Internal error: no space for header\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"header \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nx842_crypto_header*, i32*)* @nx842_crypto_add_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx842_crypto_add_header(%struct.nx842_crypto_header* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nx842_crypto_header*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.nx842_crypto_header* %0, %struct.nx842_crypto_header** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %4, align 8
  %8 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @NX842_CRYPTO_HEADER_SIZE(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %4, align 8
  %13 = getelementptr inbounds %struct.nx842_crypto_header, %struct.nx842_crypto_header* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be16_to_cpu(i32 %17)
  %19 = icmp sgt i32 %11, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.nx842_crypto_header*, %struct.nx842_crypto_header** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @memcpy(i32* %25, %struct.nx842_crypto_header* %26, i32 %27)
  %29 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 16, i32 1, i32* %30, i32 %31, i32 0)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @NX842_CRYPTO_HEADER_SIZE(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.nx842_crypto_header*, i32) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
