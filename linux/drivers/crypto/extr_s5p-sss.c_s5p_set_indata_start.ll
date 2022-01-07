; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_set_indata_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_set_indata_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }
%struct.ablkcipher_request = type { %struct.scatterlist* }

@.str = private unnamed_addr constant [59 x i8] c"At least one unaligned source scatter list, making a copy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_aes_dev*, %struct.ablkcipher_request*)* @s5p_set_indata_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_set_indata_start(%struct.s5p_aes_dev* %0, %struct.ablkcipher_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_aes_dev*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %4, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %5, align 8
  %8 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %9 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %8, i32 0, i32 0
  store %struct.scatterlist* null, %struct.scatterlist** %9, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %11 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %10, i32 0, i32 0
  %12 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %12, %struct.scatterlist** %6, align 8
  %13 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %14 = call i32 @s5p_is_sg_aligned(%struct.scatterlist* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %2
  %17 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %18 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %23 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %24 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %23, i32 0, i32 0
  %25 = call i32 @s5p_make_sg_cpy(%struct.s5p_aes_dev* %21, %struct.scatterlist* %22, %struct.scatterlist** %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %16
  %31 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %32 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %31, i32 0, i32 0
  %33 = load %struct.scatterlist*, %struct.scatterlist** %32, align 8
  store %struct.scatterlist* %33, %struct.scatterlist** %6, align 8
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %37 = call i32 @s5p_set_indata(%struct.s5p_aes_dev* %35, %struct.scatterlist* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %42 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %43 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %42, i32 0, i32 0
  %44 = call i32 @s5p_free_sg_cpy(%struct.s5p_aes_dev* %41, %struct.scatterlist** %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %40, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @s5p_is_sg_aligned(%struct.scatterlist*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @s5p_make_sg_cpy(%struct.s5p_aes_dev*, %struct.scatterlist*, %struct.scatterlist**) #1

declare dso_local i32 @s5p_set_indata(%struct.s5p_aes_dev*, %struct.scatterlist*) #1

declare dso_local i32 @s5p_free_sg_cpy(%struct.s5p_aes_dev*, %struct.scatterlist**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
