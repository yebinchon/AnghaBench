; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_3__, %struct.device* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { %struct.ib_mr, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HNS_ROCE_FRMR_MAX_PA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"max_num_sg larger than %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MR_TYPE_FRMR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @hns_roce_alloc_mr(%struct.ib_pd* %0, i32 %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.hns_roce_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.hns_roce_mr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %16 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %17 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hns_roce_dev* @to_hr_dev(i32 %18)
  store %struct.hns_roce_dev* %19, %struct.hns_roce_dev** %10, align 8
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 1
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %11, align 8
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %24 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = add nsw i32 %26, %27
  %29 = shl i32 1, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %14, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.ib_mr* @ERR_PTR(i32 %38)
  store %struct.ib_mr* %39, %struct.ib_mr** %5, align 8
  br label %109

40:                                               ; preds = %4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @HNS_ROCE_FRMR_MAX_PA, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.device*, %struct.device** %11, align 8
  %46 = load i32, i32* @HNS_ROCE_FRMR_MAX_PA, align 4
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.ib_mr* @ERR_PTR(i32 %49)
  store %struct.ib_mr* %50, %struct.ib_mr** %5, align 8
  br label %109

51:                                               ; preds = %40
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.hns_roce_mr* @kzalloc(i32 24, i32 %52)
  store %struct.hns_roce_mr* %53, %struct.hns_roce_mr** %12, align 8
  %54 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %55 = icmp ne %struct.hns_roce_mr* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.ib_mr* @ERR_PTR(i32 %58)
  store %struct.ib_mr* %59, %struct.ib_mr** %5, align 8
  br label %109

60:                                               ; preds = %51
  %61 = load i32, i32* @MR_TYPE_FRMR, align 4
  %62 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %63 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %65 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %66 = call %struct.TYPE_4__* @to_hr_pd(%struct.ib_pd* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %72 = call i32 @hns_roce_mr_alloc(%struct.hns_roce_dev* %64, i32 %68, i32 0, i32 %69, i32 0, i32 %70, %struct.hns_roce_mr* %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  br label %104

76:                                               ; preds = %60
  %77 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %78 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %79 = call i32 @hns_roce_mr_enable(%struct.hns_roce_dev* %77, %struct.hns_roce_mr* %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %97

83:                                               ; preds = %76
  %84 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %85 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %88 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %91 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %91, i32 0, i32 1
  store i32 %86, i32* %92, align 4
  %93 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %94 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  %95 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %96 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %95, i32 0, i32 0
  store %struct.ib_mr* %96, %struct.ib_mr** %5, align 8
  br label %109

97:                                               ; preds = %82
  %98 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %99 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.hns_roce_dev* @to_hr_dev(i32 %100)
  %102 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %103 = call i32 @hns_roce_mr_free(%struct.hns_roce_dev* %101, %struct.hns_roce_mr* %102)
  br label %104

104:                                              ; preds = %97, %75
  %105 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %12, align 8
  %106 = call i32 @kfree(%struct.hns_roce_mr* %105)
  %107 = load i32, i32* %15, align 4
  %108 = call %struct.ib_mr* @ERR_PTR(i32 %107)
  store %struct.ib_mr* %108, %struct.ib_mr** %5, align 8
  br label %109

109:                                              ; preds = %104, %83, %56, %44, %36
  %110 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  ret %struct.ib_mr* %110
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.hns_roce_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @hns_roce_mr_alloc(%struct.hns_roce_dev*, i32, i32, i32, i32, i32, %struct.hns_roce_mr*) #1

declare dso_local %struct.TYPE_4__* @to_hr_pd(%struct.ib_pd*) #1

declare dso_local i32 @hns_roce_mr_enable(%struct.hns_roce_dev*, %struct.hns_roce_mr*) #1

declare dso_local i32 @hns_roce_mr_free(%struct.hns_roce_dev*, %struct.hns_roce_mr*) #1

declare dso_local i32 @kfree(%struct.hns_roce_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
