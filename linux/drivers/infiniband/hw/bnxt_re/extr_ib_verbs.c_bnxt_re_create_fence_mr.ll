; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_create_fence_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_create_fence_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_pd = type { i32, i32, %struct.bnxt_re_dev*, %struct.bnxt_re_fence_data }
%struct.bnxt_re_dev = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.bnxt_re_fence_data = type { %struct.ib_mw*, i64, %struct.bnxt_re_mr*, i8* }
%struct.ib_mw = type { i32 }
%struct.bnxt_re_mr = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.bnxt_re_dev* }
%struct.TYPE_9__ = type { i32, i32, i8*, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_MW_BIND = common dso_local global i32 0, align 4
@BNXT_RE_FENCE_BYTES = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to dma-map fence-MR-mem\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMDQ_ALLOCATE_MRW_MRW_FLAGS_PMR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to alloc fence-HW-MR\0A\00", align 1
@BNXT_RE_FENCE_PBL_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to register fence-MR\0A\00", align 1
@IB_MW_TYPE_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to create fence-MW for PD: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_pd*)* @bnxt_re_create_fence_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_create_fence_mr(%struct.bnxt_re_pd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_re_pd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_re_fence_data*, align 8
  %6 = alloca %struct.bnxt_re_dev*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.bnxt_re_mr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ib_mw*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.bnxt_re_pd* %0, %struct.bnxt_re_pd** %3, align 8
  %13 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %14 = load i32, i32* @IB_ACCESS_MW_BIND, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.bnxt_re_pd*, %struct.bnxt_re_pd** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt_re_pd, %struct.bnxt_re_pd* %16, i32 0, i32 3
  store %struct.bnxt_re_fence_data* %17, %struct.bnxt_re_fence_data** %5, align 8
  %18 = load %struct.bnxt_re_pd*, %struct.bnxt_re_pd** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt_re_pd, %struct.bnxt_re_pd* %18, i32 0, i32 2
  %20 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %19, align 8
  store %struct.bnxt_re_dev* %20, %struct.bnxt_re_dev** %6, align 8
  %21 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %22 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.device* %26, %struct.device** %7, align 8
  store %struct.bnxt_re_mr* null, %struct.bnxt_re_mr** %8, align 8
  store i8* null, i8** %9, align 8
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %5, align 8
  %29 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @BNXT_RE_FENCE_BYTES, align 4
  %32 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %33 = call i8* @dma_map_single(%struct.device* %27, i64 %30, i32 %31, i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @dma_mapping_error(%struct.device* %34, i8* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %1
  %40 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %41 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %40)
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %5, align 8
  %46 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %45, i32 0, i32 3
  store i8* null, i8** %46, align 8
  br label %151

47:                                               ; preds = %1
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %5, align 8
  %50 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.bnxt_re_mr* @kzalloc(i32 56, i32 %51)
  store %struct.bnxt_re_mr* %52, %struct.bnxt_re_mr** %8, align 8
  %53 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %54 = icmp ne %struct.bnxt_re_mr* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %151

58:                                               ; preds = %47
  %59 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %60 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %5, align 8
  %61 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %60, i32 0, i32 2
  store %struct.bnxt_re_mr* %59, %struct.bnxt_re_mr** %61, align 8
  %62 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %63 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %64 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %63, i32 0, i32 2
  store %struct.bnxt_re_dev* %62, %struct.bnxt_re_dev** %64, align 8
  %65 = load %struct.bnxt_re_pd*, %struct.bnxt_re_pd** %3, align 8
  %66 = getelementptr inbounds %struct.bnxt_re_pd, %struct.bnxt_re_pd* %65, i32 0, i32 1
  %67 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %68 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 6
  store i32* %66, i32** %69, align 8
  %70 = load i32, i32* @CMDQ_ALLOCATE_MRW_MRW_FLAGS_PMR, align 4
  %71 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %72 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 5
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @__from_ib_access_flags(i32 %74)
  %76 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %77 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 4
  %79 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %80 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %79, i32 0, i32 0
  %81 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %82 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %81, i32 0, i32 0
  %83 = call i32 @bnxt_qplib_alloc_mrw(i32* %80, %struct.TYPE_9__* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %58
  %87 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %88 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %87)
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %151

90:                                               ; preds = %58
  %91 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %92 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %96 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %5, align 8
  %99 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %103 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  store i8* %101, i8** %104, align 8
  %105 = load i32, i32* @BNXT_RE_FENCE_BYTES, align 4
  %106 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %107 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load i8*, i8** %9, align 8
  store i8* %109, i8** %11, align 8
  %110 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %111 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %110, i32 0, i32 0
  %112 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %113 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %112, i32 0, i32 0
  %114 = load i32, i32* @BNXT_RE_FENCE_PBL_SIZE, align 4
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = call i32 @bnxt_qplib_reg_mr(i32* %111, %struct.TYPE_9__* %113, i8** %11, i32 %114, i32 0, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %90
  %120 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %121 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %120)
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %151

123:                                              ; preds = %90
  %124 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %125 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %8, align 8
  %129 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.bnxt_re_pd*, %struct.bnxt_re_pd** %3, align 8
  %132 = getelementptr inbounds %struct.bnxt_re_pd, %struct.bnxt_re_pd* %131, i32 0, i32 0
  %133 = load i32, i32* @IB_MW_TYPE_1, align 4
  %134 = call %struct.ib_mw* @bnxt_re_alloc_mw(i32* %132, i32 %133, i32* null)
  store %struct.ib_mw* %134, %struct.ib_mw** %10, align 8
  %135 = load %struct.ib_mw*, %struct.ib_mw** %10, align 8
  %136 = call i64 @IS_ERR(%struct.ib_mw* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %123
  %139 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %6, align 8
  %140 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %139)
  %141 = load %struct.bnxt_re_pd*, %struct.bnxt_re_pd** %3, align 8
  %142 = call i32 (i32, i8*, ...) @dev_err(i32 %140, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %struct.bnxt_re_pd* %141)
  %143 = load %struct.ib_mw*, %struct.ib_mw** %10, align 8
  %144 = call i32 @PTR_ERR(%struct.ib_mw* %143)
  store i32 %144, i32* %12, align 4
  br label %151

145:                                              ; preds = %123
  %146 = load %struct.ib_mw*, %struct.ib_mw** %10, align 8
  %147 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %5, align 8
  %148 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %147, i32 0, i32 0
  store %struct.ib_mw* %146, %struct.ib_mw** %148, align 8
  %149 = load %struct.bnxt_re_pd*, %struct.bnxt_re_pd** %3, align 8
  %150 = call i32 @bnxt_re_create_fence_wqe(%struct.bnxt_re_pd* %149)
  store i32 0, i32* %2, align 4
  br label %155

151:                                              ; preds = %138, %119, %86, %55, %39
  %152 = load %struct.bnxt_re_pd*, %struct.bnxt_re_pd** %3, align 8
  %153 = call i32 @bnxt_re_destroy_fence_mr(%struct.bnxt_re_pd* %152)
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %151, %145
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i8* @dma_map_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #1

declare dso_local %struct.bnxt_re_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @__from_ib_access_flags(i32) #1

declare dso_local i32 @bnxt_qplib_alloc_mrw(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @bnxt_qplib_reg_mr(i32*, %struct.TYPE_9__*, i8**, i32, i32, i32) #1

declare dso_local %struct.ib_mw* @bnxt_re_alloc_mw(i32*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ib_mw*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mw*) #1

declare dso_local i32 @bnxt_re_create_fence_wqe(%struct.bnxt_re_pd*) #1

declare dso_local i32 @bnxt_re_destroy_fence_mr(%struct.bnxt_re_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
