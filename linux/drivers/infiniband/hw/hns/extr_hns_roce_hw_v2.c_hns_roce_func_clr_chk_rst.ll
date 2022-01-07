; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_func_clr_chk_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_func_clr_chk_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, i64 }
%struct.hns_roce_v2_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i64 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_func_clr_chk_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_func_clr_chk_rst(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_v2_priv*, align 8
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca %struct.hnae3_ae_ops*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %13, %struct.hns_roce_v2_priv** %4, align 8
  %14 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %4, align 8
  %15 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %14, i32 0, i32 0
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %15, align 8
  store %struct.hnae3_handle* %16, %struct.hnae3_handle** %5, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %20, align 8
  store %struct.hnae3_ae_ops* %21, %struct.hnae3_ae_ops** %6, align 8
  %22 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %6, align 8
  %23 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %22, i32 0, i32 0
  %24 = load i64 (%struct.hnae3_handle*)*, i64 (%struct.hnae3_handle*)** %23, align 8
  %25 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %26 = call i64 %24(%struct.hnae3_handle* %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %6, align 8
  %28 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %27, i32 0, i32 1
  %29 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %28, align 8
  %30 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %31 = call i32 %29(%struct.hnae3_handle* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %6, align 8
  %33 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %32, i32 0, i32 2
  %34 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %33, align 8
  %35 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %36 = call i32 %34(%struct.hnae3_handle* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %1
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %42, %1
  store i32 1, i32* %2, align 4
  br label %50

49:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
