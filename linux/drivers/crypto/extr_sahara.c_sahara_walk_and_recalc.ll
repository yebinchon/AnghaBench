; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_walk_and_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_walk_and_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32)* @sahara_walk_and_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_walk_and_recalc(%struct.scatterlist* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %7 = icmp ne %struct.scatterlist* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %10 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %21 = icmp ne %struct.scatterlist* %20, null
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %44

24:                                               ; preds = %22
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %27 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ule i32 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %35 = call i32 @sg_mark_end(%struct.scatterlist* %34)
  br label %44

36:                                               ; preds = %24
  %37 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %38 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %43 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %42)
  store %struct.scatterlist* %43, %struct.scatterlist** %4, align 8
  br label %16

44:                                               ; preds = %30, %22
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
