; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_free_ae_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_free_ae_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_uclo_aedata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@.str = private unnamed_addr constant [37 x i8] c"QAT: bad argument, ae_data is NULL\0A \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_uclo_aedata*)* @qat_uclo_free_ae_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_free_ae_data(%struct.icp_qat_uclo_aedata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icp_qat_uclo_aedata*, align 8
  %4 = alloca i32, align 4
  store %struct.icp_qat_uclo_aedata* %0, %struct.icp_qat_uclo_aedata** %3, align 8
  %5 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %3, align 8
  %6 = icmp ne %struct.icp_qat_uclo_aedata* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %51, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %3, align 8
  %15 = getelementptr inbounds %struct.icp_qat_uclo_aedata, %struct.icp_qat_uclo_aedata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %12
  %19 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %3, align 8
  %20 = getelementptr inbounds %struct.icp_qat_uclo_aedata, %struct.icp_qat_uclo_aedata* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %3, align 8
  %29 = getelementptr inbounds %struct.icp_qat_uclo_aedata, %struct.icp_qat_uclo_aedata* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %3, align 8
  %36 = getelementptr inbounds %struct.icp_qat_uclo_aedata, %struct.icp_qat_uclo_aedata* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %3, align 8
  %45 = getelementptr inbounds %struct.icp_qat_uclo_aedata, %struct.icp_qat_uclo_aedata* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %18
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %12

54:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %7
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
