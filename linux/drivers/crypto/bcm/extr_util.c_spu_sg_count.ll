; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_util.c_spu_sg_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_util.c_spu_sg_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_sg_count(%struct.scatterlist* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %12 = icmp ne %struct.scatterlist* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

14:                                               ; preds = %3
  %15 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @spu_sg_at_offset(%struct.scatterlist* %15, i32 %16, %struct.scatterlist** %8, i32* %10)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %43

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %29, %20
  %22 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %23 = icmp ne %struct.scatterlist* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = sub i32 %37, %36
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %39 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %40 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %39)
  store %struct.scatterlist* %40, %struct.scatterlist** %8, align 8
  br label %21

41:                                               ; preds = %27
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %19, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @spu_sg_at_offset(%struct.scatterlist*, i32, %struct.scatterlist**, i32*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
