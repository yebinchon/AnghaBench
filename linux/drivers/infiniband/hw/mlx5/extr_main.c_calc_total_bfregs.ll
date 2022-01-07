; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_calc_total_bfregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_calc_total_bfregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_alloc_ucontext_req_v2 = type { i32, i64 }
%struct.mlx5_bfreg_info = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX5_MAX_BFREGS = common dso_local global i32 0, align 4
@MLX5_NON_FP_BFREGS_IN_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_NON_FP_BFREGS_PER_UAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"uar_4k: fw support %s, lib support %s, user requested %d bfregs, allocated %d, total bfregs %d, using %d sys pages\0A\00", align 1
@uar_4k = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32, %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_bfreg_info*)* @calc_total_bfregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_total_bfregs(%struct.mlx5_ib_dev* %0, i32 %1, %struct.mlx5_ib_alloc_ucontext_req_v2* %2, %struct.mlx5_bfreg_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_ib_alloc_ucontext_req_v2*, align 8
  %9 = alloca %struct.mlx5_bfreg_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlx5_ib_alloc_ucontext_req_v2* %2, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  store %struct.mlx5_bfreg_info* %3, %struct.mlx5_bfreg_info** %9, align 8
  %13 = load %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_alloc_ucontext_req_v2, %struct.mlx5_ib_alloc_ucontext_req_v2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_alloc_ucontext_req_v2, %struct.mlx5_ib_alloc_ucontext_req_v2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %123

23:                                               ; preds = %4
  %24 = load i32, i32* @MLX5_MAX_BFREGS, align 4
  %25 = load i32, i32* @MLX5_NON_FP_BFREGS_IN_PAGE, align 4
  %26 = srem i32 %24, %25
  %27 = call i32 @BUILD_BUG_ON(i32 %26)
  %28 = load i32, i32* @MLX5_MAX_BFREGS, align 4
  %29 = load i32, i32* @MLX5_NON_FP_BFREGS_IN_PAGE, align 4
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUILD_BUG_ON(i32 %31)
  %33 = load %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_alloc_ucontext_req_v2, %struct.mlx5_ib_alloc_ucontext_req_v2* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MLX5_MAX_BFREGS, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %123

41:                                               ; preds = %23
  %42 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @get_uars_per_sys_page(%struct.mlx5_ib_dev* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @MLX5_NON_FP_BFREGS_PER_UAR, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_alloc_ucontext_req_v2, %struct.mlx5_ib_alloc_ucontext_req_v2* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i8* @ALIGN(i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_alloc_ucontext_req_v2, %struct.mlx5_ib_alloc_ucontext_req_v2* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_alloc_ucontext_req_v2, %struct.mlx5_ib_alloc_ucontext_req_v2* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_alloc_ucontext_req_v2, %struct.mlx5_ib_alloc_ucontext_req_v2* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = icmp sgt i64 %58, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %41
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %123

68:                                               ; preds = %41
  %69 = load %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_alloc_ucontext_req_v2, %struct.mlx5_ib_alloc_ucontext_req_v2* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sdiv i32 %71, %72
  %74 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %9, align 8
  %75 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @calc_dynamic_bfregs(i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = call i8* @ALIGN(i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %9, align 8
  %82 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_alloc_ucontext_req_v2, %struct.mlx5_ib_alloc_ucontext_req_v2* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %9, align 8
  %87 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %9, align 8
  %91 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %9, align 8
  %93 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sdiv i32 %94, %95
  %97 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %9, align 8
  %98 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %100 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @uar_4k, align 4
  %104 = call i64 @MLX5_CAP_GEN(i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.mlx5_ib_alloc_ucontext_req_v2*, %struct.mlx5_ib_alloc_ucontext_req_v2** %8, align 8
  %114 = getelementptr inbounds %struct.mlx5_ib_alloc_ucontext_req_v2, %struct.mlx5_ib_alloc_ucontext_req_v2* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %9, align 8
  %117 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mlx5_bfreg_info*, %struct.mlx5_bfreg_info** %9, align 8
  %120 = getelementptr inbounds %struct.mlx5_bfreg_info, %struct.mlx5_bfreg_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %99, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i8* %107, i8* %111, i32 %112, i32 %115, i32 %118, i32 %121)
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %68, %65, %38, %20
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @get_uars_per_sys_page(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @calc_dynamic_bfregs(i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
