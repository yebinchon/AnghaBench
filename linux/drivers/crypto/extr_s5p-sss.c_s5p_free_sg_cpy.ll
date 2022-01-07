; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_free_sg_cpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_free_sg_cpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_aes_dev*, %struct.scatterlist**)* @s5p_free_sg_cpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_free_sg_cpy(%struct.s5p_aes_dev* %0, %struct.scatterlist** %1) #0 {
  %3 = alloca %struct.s5p_aes_dev*, align 8
  %4 = alloca %struct.scatterlist**, align 8
  %5 = alloca i32, align 4
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %3, align 8
  store %struct.scatterlist** %1, %struct.scatterlist*** %4, align 8
  %6 = load %struct.scatterlist**, %struct.scatterlist*** %4, align 8
  %7 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %8 = icmp ne %struct.scatterlist* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %12 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %17 = call i32 @ALIGN(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.scatterlist**, %struct.scatterlist*** %4, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %20 = call i64 @sg_virt(%struct.scatterlist* %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @get_order(i32 %21)
  %23 = call i32 @free_pages(i64 %20, i32 %22)
  %24 = load %struct.scatterlist**, %struct.scatterlist*** %4, align 8
  %25 = load %struct.scatterlist*, %struct.scatterlist** %24, align 8
  %26 = call i32 @kfree(%struct.scatterlist* %25)
  %27 = load %struct.scatterlist**, %struct.scatterlist*** %4, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %27, align 8
  br label %28

28:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
