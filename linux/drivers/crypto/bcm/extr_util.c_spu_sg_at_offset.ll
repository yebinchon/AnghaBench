; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_util.c_spu_sg_at_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_util.c_spu_sg_at_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_sg_at_offset(%struct.scatterlist* %0, i32 %1, %struct.scatterlist** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scatterlist** %2, %struct.scatterlist*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %13 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %28, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ule i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %21 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %20)
  store %struct.scatterlist* %21, %struct.scatterlist** %6, align 8
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %24 = icmp ne %struct.scatterlist* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %41

28:                                               ; preds = %19
  %29 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %30 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub i32 %35, %36
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %40 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  store %struct.scatterlist* %39, %struct.scatterlist** %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %25
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
