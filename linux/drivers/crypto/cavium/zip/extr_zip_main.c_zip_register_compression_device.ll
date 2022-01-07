; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_main.c_zip_register_compression_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_main.c_zip_register_compression_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zip_comp_deflate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Deflate algorithm registration failed\0A\00", align 1
@zip_comp_lzs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"LZS algorithm registration failed\0A\00", align 1
@zip_scomp_deflate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Deflate scomp algorithm registration failed\0A\00", align 1
@zip_scomp_lzs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"LZS scomp algorithm registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @zip_register_compression_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_register_compression_device() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @crypto_register_alg(i32* @zip_comp_deflate)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @zip_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %36

9:                                                ; preds = %0
  %10 = call i32 @crypto_register_alg(i32* @zip_comp_lzs)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @zip_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %33

15:                                               ; preds = %9
  %16 = call i32 @crypto_register_scomp(i32* @zip_scomp_deflate)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @zip_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %31

21:                                               ; preds = %15
  %22 = call i32 @crypto_register_scomp(i32* @zip_scomp_lzs)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @zip_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %1, align 4
  br label %36

29:                                               ; preds = %25
  %30 = call i32 @crypto_unregister_scomp(i32* @zip_scomp_deflate)
  br label %31

31:                                               ; preds = %29, %19
  %32 = call i32 @crypto_unregister_alg(i32* @zip_comp_lzs)
  br label %33

33:                                               ; preds = %31, %13
  %34 = call i32 @crypto_unregister_alg(i32* @zip_comp_deflate)
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %33, %27, %6
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @crypto_register_alg(i32*) #1

declare dso_local i32 @zip_err(i8*) #1

declare dso_local i32 @crypto_register_scomp(i32*) #1

declare dso_local i32 @crypto_unregister_scomp(i32*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
