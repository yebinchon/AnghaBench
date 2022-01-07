; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_res_spec_satisfied.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_res_spec_satisfied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_vnic_res_spec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@USNIC_VNIC_RES_TYPE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_vnic_res_spec_satisfied(%struct.usnic_vnic_res_spec* %0, %struct.usnic_vnic_res_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usnic_vnic_res_spec*, align 8
  %5 = alloca %struct.usnic_vnic_res_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usnic_vnic_res_spec* %0, %struct.usnic_vnic_res_spec** %4, align 8
  store %struct.usnic_vnic_res_spec* %1, %struct.usnic_vnic_res_spec** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %69, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @USNIC_VNIC_RES_TYPE_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %72

13:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %59, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @USNIC_VNIC_RES_TYPE_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %5, align 8
  %20 = getelementptr inbounds %struct.usnic_vnic_res_spec, %struct.usnic_vnic_res_spec* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %4, align 8
  %28 = getelementptr inbounds %struct.usnic_vnic_res_spec, %struct.usnic_vnic_res_spec* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %26, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %59

37:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  %38 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %4, align 8
  %39 = getelementptr inbounds %struct.usnic_vnic_res_spec, %struct.usnic_vnic_res_spec* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %5, align 8
  %47 = getelementptr inbounds %struct.usnic_vnic_res_spec, %struct.usnic_vnic_res_spec* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %45, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %37
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %73

58:                                               ; preds = %37
  br label %62

59:                                               ; preds = %36
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %14

62:                                               ; preds = %58, %14
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %9

72:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %65, %55
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
