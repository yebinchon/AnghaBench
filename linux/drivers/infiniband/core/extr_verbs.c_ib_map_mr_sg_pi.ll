; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_map_mr_sg_pi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_map_mr_sg_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*)* }
%struct.scatterlist = type { i32 }

@IB_MR_TYPE_INTEGRITY = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_map_mr_sg_pi(%struct.ib_mr* %0, %struct.scatterlist* %1, i32 %2, i32* %3, %struct.scatterlist* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_mr*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %10, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store %struct.scatterlist* %4, %struct.scatterlist** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %18 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %19 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*)*, i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*)** %22, align 8
  %24 = icmp ne i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*)* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %8
  %26 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %27 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IB_MR_TYPE_INTEGRITY, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %25, %8
  %35 = phi i1 [ true, %8 ], [ %33, %25 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %60

42:                                               ; preds = %34
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %45 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %47 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*)*, i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*)** %50, align 8
  %52 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %53 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 %51(%struct.ib_mr* %52, %struct.scatterlist* %53, i32 %54, i32* %55, %struct.scatterlist* %56, i32 %57, i32* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %42, %39
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
