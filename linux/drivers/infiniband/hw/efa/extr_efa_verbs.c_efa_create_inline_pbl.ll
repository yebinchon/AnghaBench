; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_create_inline_pbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_create_inline_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { i32 }
%struct.efa_mr = type { i32 }
%struct.efa_com_reg_mr_params = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"inline_pbl_array - pages[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*, %struct.efa_mr*, %struct.efa_com_reg_mr_params*)* @efa_create_inline_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_create_inline_pbl(%struct.efa_dev* %0, %struct.efa_mr* %1, %struct.efa_com_reg_mr_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efa_dev*, align 8
  %6 = alloca %struct.efa_mr*, align 8
  %7 = alloca %struct.efa_com_reg_mr_params*, align 8
  %8 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %5, align 8
  store %struct.efa_mr* %1, %struct.efa_mr** %6, align 8
  store %struct.efa_com_reg_mr_params* %2, %struct.efa_com_reg_mr_params** %7, align 8
  %9 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %7, align 8
  %10 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %12 = load %struct.efa_mr*, %struct.efa_mr** %6, align 8
  %13 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %7, align 8
  %16 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %7, align 8
  %20 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %7, align 8
  %23 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @umem_to_page_list(%struct.efa_dev* %11, i32 %14, i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %37

30:                                               ; preds = %3
  %31 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %32 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %31, i32 0, i32 0
  %33 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %7, align 8
  %34 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ibdev_dbg(i32* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @umem_to_page_list(%struct.efa_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
