; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_buf_write_mtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_buf_write_mtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_mtt = type { i32 }
%struct.hns_roce_buf = type { i64, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_buf_write_mtt(%struct.hns_roce_dev* %0, %struct.hns_roce_mtt* %1, %struct.hns_roce_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_mtt*, align 8
  %7 = alloca %struct.hns_roce_buf*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_mtt* %1, %struct.hns_roce_mtt** %6, align 8
  store %struct.hns_roce_buf* %2, %struct.hns_roce_buf** %7, align 8
  %11 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %7, align 8
  %12 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64* @kmalloc_array(i64 %13, i32 8, i32 %14)
  store i64* %15, i64** %8, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %73

21:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %59, %21
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %7, align 8
  %25 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %22
  %29 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %7, align 8
  %30 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %7, align 8
  %35 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %7, align 8
  %40 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = shl i64 %38, %41
  %43 = add i64 %37, %42
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  br label %58

47:                                               ; preds = %28
  %48 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %7, align 8
  %49 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %47, %33
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %22

62:                                               ; preds = %22
  %63 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %64 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %6, align 8
  %65 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %7, align 8
  %66 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = call i32 @hns_roce_write_mtt(%struct.hns_roce_dev* %63, %struct.hns_roce_mtt* %64, i32 0, i64 %67, i64* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i64*, i64** %8, align 8
  %71 = call i32 @kfree(i64* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %62, %18
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @hns_roce_write_mtt(%struct.hns_roce_dev*, %struct.hns_roce_mtt*, i32, i64, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
