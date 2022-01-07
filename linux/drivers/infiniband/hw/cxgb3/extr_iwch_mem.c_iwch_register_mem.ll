; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_mem.c_iwch_register_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_mem.c_iwch_register_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwch_dev = type { i32 }
%struct.iwch_pd = type { i32 }
%struct.iwch_mr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwch_register_mem(%struct.iwch_dev* %0, %struct.iwch_pd* %1, %struct.iwch_mr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwch_dev*, align 8
  %7 = alloca %struct.iwch_pd*, align 8
  %8 = alloca %struct.iwch_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwch_dev* %0, %struct.iwch_dev** %6, align 8
  store %struct.iwch_pd* %1, %struct.iwch_pd** %7, align 8
  store %struct.iwch_mr* %2, %struct.iwch_mr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iwch_dev*, %struct.iwch_dev** %6, align 8
  %13 = getelementptr inbounds %struct.iwch_dev, %struct.iwch_dev* %12, i32 0, i32 0
  %14 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %15 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %19 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %23 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %27 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %31 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 12
  %36 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %37 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %41 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @cxio_register_phys_mem(i32* %13, i32* %10, i32 %17, i32 %21, i32 %25, i32 %29, i32 %33, i32 %35, i32 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %4
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %73

49:                                               ; preds = %4
  %50 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @iwch_finish_mem_reg(%struct.iwch_mr* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.iwch_dev*, %struct.iwch_dev** %6, align 8
  %57 = getelementptr inbounds %struct.iwch_dev, %struct.iwch_dev* %56, i32 0, i32 0
  %58 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %59 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %63 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.iwch_mr*, %struct.iwch_mr** %8, align 8
  %67 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cxio_dereg_mem(i32* %57, i32 %61, i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %55, %49
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %46
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @cxio_register_phys_mem(i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iwch_finish_mem_reg(%struct.iwch_mr*, i32) #1

declare dso_local i32 @cxio_dereg_mem(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
