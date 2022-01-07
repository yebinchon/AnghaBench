; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_dma.c_qce_sgtable_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_dma.c_qce_sgtable_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scatterlist* @qce_sgtable_add(%struct.sg_table* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  store %struct.sg_table* %0, %struct.sg_table** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  %8 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %9 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %8, i32 0, i32 0
  %10 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %10, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %7, align 8
  br label %11

11:                                               ; preds = %19, %2
  %12 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %13 = icmp ne %struct.scatterlist* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %16 = call i32 @sg_page(%struct.scatterlist* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %22

19:                                               ; preds = %14
  %20 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %21 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %20)
  store %struct.scatterlist* %21, %struct.scatterlist** %6, align 8
  br label %11

22:                                               ; preds = %18, %11
  %23 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %24 = icmp ne %struct.scatterlist* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.scatterlist* @ERR_PTR(i32 %27)
  store %struct.scatterlist* %28, %struct.scatterlist** %3, align 8
  br label %56

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %38, %29
  %31 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %32 = icmp ne %struct.scatterlist* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %35 = icmp ne %struct.scatterlist* %34, null
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  br i1 %37, label %38, label %54

38:                                               ; preds = %36
  %39 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %40 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %41 = call i32 @sg_page(%struct.scatterlist* %40)
  %42 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %43 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %46 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sg_set_page(%struct.scatterlist* %39, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %49, %struct.scatterlist** %7, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %51 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %50)
  store %struct.scatterlist* %51, %struct.scatterlist** %6, align 8
  %52 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %53 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %52)
  store %struct.scatterlist* %53, %struct.scatterlist** %5, align 8
  br label %30

54:                                               ; preds = %36
  %55 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %55, %struct.scatterlist** %3, align 8
  br label %56

56:                                               ; preds = %54, %25
  %57 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  ret %struct.scatterlist* %57
}

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @ERR_PTR(i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
