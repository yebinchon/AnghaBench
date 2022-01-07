; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_make_sg_cpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_make_sg_cpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_aes_dev*, %struct.scatterlist*, %struct.scatterlist**)* @s5p_make_sg_cpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_make_sg_cpy(%struct.s5p_aes_dev* %0, %struct.scatterlist* %1, %struct.scatterlist** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_aes_dev*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist** %2, %struct.scatterlist*** %7, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.scatterlist* @kmalloc(i32 4, i32 %10)
  %12 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  store %struct.scatterlist* %11, %struct.scatterlist** %12, align 8
  %13 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %15 = icmp ne %struct.scatterlist* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %21 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %26 = call i32 @ALIGN(i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @get_order(i32 %28)
  %30 = call i64 @__get_free_pages(i32 %27, i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %19
  %35 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %35, align 8
  %37 = call i32 @kfree(%struct.scatterlist* %36)
  %38 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %38, align 8
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %19
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %44 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %5, align 8
  %45 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @s5p_sg_copy_buf(i8* %42, %struct.scatterlist* %43, i32 %48, i32 0)
  %50 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  %51 = load %struct.scatterlist*, %struct.scatterlist** %50, align 8
  %52 = call i32 @sg_init_table(%struct.scatterlist* %51, i32 1)
  %53 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  %54 = load %struct.scatterlist*, %struct.scatterlist** %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @sg_set_buf(%struct.scatterlist* %54, i8* %55, i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %41, %34, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.scatterlist* @kmalloc(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

declare dso_local i32 @s5p_sg_copy_buf(i8*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
