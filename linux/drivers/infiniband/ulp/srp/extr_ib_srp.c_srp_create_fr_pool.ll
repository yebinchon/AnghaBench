; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_create_fr_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_create_fr_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_fr_pool = type { i32, i32, i32, %struct.srp_fr_desc*, i32 }
%struct.srp_fr_desc = type { i32, %struct.ib_mr* }
%struct.ib_mr = type { i32 }
%struct.ib_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ib_pd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@desc = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_DEVICE_SG_GAPS_REG = common dso_local global i32 0, align 4
@IB_MR_TYPE_SG_GAPS = common dso_local global i32 0, align 4
@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"%s: ib_alloc_mr() failed. Try to reduce max_cmd_per_lun, max_sect or ch_count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.srp_fr_pool* (%struct.ib_device*, %struct.ib_pd*, i32, i32)* @srp_create_fr_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.srp_fr_pool* @srp_create_fr_pool(%struct.ib_device* %0, %struct.ib_pd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.srp_fr_pool*, align 8
  %10 = alloca %struct.srp_fr_desc*, align 8
  %11 = alloca %struct.ib_mr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %108

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  %24 = load i32, i32* @desc, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @struct_size(%struct.srp_fr_pool* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.srp_fr_pool* @kzalloc(i32 %26, i32 %27)
  store %struct.srp_fr_pool* %28, %struct.srp_fr_pool** %9, align 8
  %29 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  %30 = icmp ne %struct.srp_fr_pool* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %108

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  %35 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  %38 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  %40 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %39, i32 0, i32 4
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  %43 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %42, i32 0, i32 2
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %46 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IB_DEVICE_SG_GAPS_REG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* @IB_MR_TYPE_SG_GAPS, align 4
  store i32 %53, i32* %14, align 4
  br label %56

54:                                               ; preds = %32
  %55 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %52
  store i32 0, i32* %12, align 4
  %57 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  %58 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %57, i32 0, i32 3
  %59 = load %struct.srp_fr_desc*, %struct.srp_fr_desc** %58, align 8
  %60 = getelementptr inbounds %struct.srp_fr_desc, %struct.srp_fr_desc* %59, i64 0
  store %struct.srp_fr_desc* %60, %struct.srp_fr_desc** %10, align 8
  br label %61

61:                                               ; preds = %97, %56
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  %64 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call %struct.ib_mr* @ib_alloc_mr(%struct.ib_pd* %68, i32 %69, i32 %70)
  store %struct.ib_mr* %71, %struct.ib_mr** %11, align 8
  %72 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %73 = call i64 @IS_ERR(%struct.ib_mr* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %67
  %76 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %77 = call i32 @PTR_ERR(%struct.ib_mr* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %84 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %83, i32 0, i32 0
  %85 = call i32 @dev_name(i32* %84)
  %86 = call i32 @pr_info(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %82, %75
  br label %105

88:                                               ; preds = %67
  %89 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %90 = load %struct.srp_fr_desc*, %struct.srp_fr_desc** %10, align 8
  %91 = getelementptr inbounds %struct.srp_fr_desc, %struct.srp_fr_desc* %90, i32 0, i32 1
  store %struct.ib_mr* %89, %struct.ib_mr** %91, align 8
  %92 = load %struct.srp_fr_desc*, %struct.srp_fr_desc** %10, align 8
  %93 = getelementptr inbounds %struct.srp_fr_desc, %struct.srp_fr_desc* %92, i32 0, i32 0
  %94 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  %95 = getelementptr inbounds %struct.srp_fr_pool, %struct.srp_fr_pool* %94, i32 0, i32 2
  %96 = call i32 @list_add_tail(i32* %93, i32* %95)
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  %100 = load %struct.srp_fr_desc*, %struct.srp_fr_desc** %10, align 8
  %101 = getelementptr inbounds %struct.srp_fr_desc, %struct.srp_fr_desc* %100, i32 1
  store %struct.srp_fr_desc* %101, %struct.srp_fr_desc** %10, align 8
  br label %61

102:                                              ; preds = %61
  br label %103

103:                                              ; preds = %108, %102
  %104 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  ret %struct.srp_fr_pool* %104

105:                                              ; preds = %87
  %106 = load %struct.srp_fr_pool*, %struct.srp_fr_pool** %9, align 8
  %107 = call i32 @srp_destroy_fr_pool(%struct.srp_fr_pool* %106)
  br label %108

108:                                              ; preds = %105, %31, %19
  %109 = load i32, i32* %13, align 4
  %110 = call %struct.srp_fr_pool* @ERR_PTR(i32 %109)
  store %struct.srp_fr_pool* %110, %struct.srp_fr_pool** %9, align 8
  br label %103
}

declare dso_local %struct.srp_fr_pool* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.srp_fr_pool*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.ib_mr* @ib_alloc_mr(%struct.ib_pd*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mr*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mr*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @srp_destroy_fr_pool(%struct.srp_fr_pool*) #1

declare dso_local %struct.srp_fr_pool* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
