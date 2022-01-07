; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_fast_reg_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_fast_reg_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ib_conn }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { i32 }
%struct.iser_data_buf = type { i32, i32 }
%struct.iser_reg_resources = type { %struct.ib_fmr_pool*, %struct.iser_page_vec* }
%struct.ib_fmr_pool = type { i32 }
%struct.iser_page_vec = type { %struct.TYPE_8__, i32*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.iser_mem_reg = type { %struct.TYPE_7__, i32, %struct.ib_pool_fmr* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ib_pool_fmr = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@SIZE_4K = common dso_local global i32 0, align 4
@iser_set_page = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"page vec too short to hold this SG\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ib_fmr_pool_map_phys failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"fmr reg: lkey=0x%x, rkey=0x%x, addr=0x%llx, length=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_iser_task*, %struct.iser_data_buf*, %struct.iser_reg_resources*, %struct.iser_mem_reg*)* @iser_fast_reg_fmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_fast_reg_fmr(%struct.iscsi_iser_task* %0, %struct.iser_data_buf* %1, %struct.iser_reg_resources* %2, %struct.iser_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_iser_task*, align 8
  %7 = alloca %struct.iser_data_buf*, align 8
  %8 = alloca %struct.iser_reg_resources*, align 8
  %9 = alloca %struct.iser_mem_reg*, align 8
  %10 = alloca %struct.ib_conn*, align 8
  %11 = alloca %struct.iser_device*, align 8
  %12 = alloca %struct.iser_page_vec*, align 8
  %13 = alloca %struct.ib_fmr_pool*, align 8
  %14 = alloca %struct.ib_pool_fmr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %6, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %7, align 8
  store %struct.iser_reg_resources* %2, %struct.iser_reg_resources** %8, align 8
  store %struct.iser_mem_reg* %3, %struct.iser_mem_reg** %9, align 8
  %17 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.ib_conn* %20, %struct.ib_conn** %10, align 8
  %21 = load %struct.ib_conn*, %struct.ib_conn** %10, align 8
  %22 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %21, i32 0, i32 0
  %23 = load %struct.iser_device*, %struct.iser_device** %22, align 8
  store %struct.iser_device* %23, %struct.iser_device** %11, align 8
  %24 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %8, align 8
  %25 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %24, i32 0, i32 1
  %26 = load %struct.iser_page_vec*, %struct.iser_page_vec** %25, align 8
  store %struct.iser_page_vec* %26, %struct.iser_page_vec** %12, align 8
  %27 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %8, align 8
  %28 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %27, i32 0, i32 0
  %29 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %28, align 8
  store %struct.ib_fmr_pool* %29, %struct.ib_fmr_pool** %13, align 8
  %30 = load %struct.iser_page_vec*, %struct.iser_page_vec** %12, align 8
  %31 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @SIZE_4K, align 4
  %33 = load %struct.iser_page_vec*, %struct.iser_page_vec** %12, align 8
  %34 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load %struct.iser_page_vec*, %struct.iser_page_vec** %12, align 8
  %37 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %36, i32 0, i32 0
  %38 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %39 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %42 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @iser_set_page, align 4
  %45 = call i32 @ib_sg_to_pages(%struct.TYPE_8__* %37, i32 %40, i32 %43, i32* null, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %48 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %4
  %55 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %57 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  %58 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @iser_data_buf_dump(%struct.iser_data_buf* %56, i32 %59)
  %61 = load %struct.iser_page_vec*, %struct.iser_page_vec** %12, align 8
  %62 = call i32 @iser_dump_page_vec(%struct.iser_page_vec* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %137

65:                                               ; preds = %4
  %66 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %13, align 8
  %67 = load %struct.iser_page_vec*, %struct.iser_page_vec** %12, align 8
  %68 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.iser_page_vec*, %struct.iser_page_vec** %12, align 8
  %71 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.iser_page_vec*, %struct.iser_page_vec** %12, align 8
  %74 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.ib_pool_fmr* @ib_fmr_pool_map_phys(%struct.ib_fmr_pool* %66, i32* %69, i64 %72, i32 %77)
  store %struct.ib_pool_fmr* %78, %struct.ib_pool_fmr** %14, align 8
  %79 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %14, align 8
  %80 = call i64 @IS_ERR(%struct.ib_pool_fmr* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %65
  %83 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %14, align 8
  %84 = call i32 @PTR_ERR(%struct.ib_pool_fmr* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %5, align 4
  br label %137

88:                                               ; preds = %65
  %89 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %14, align 8
  %90 = getelementptr inbounds %struct.ib_pool_fmr, %struct.ib_pool_fmr* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %95 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %14, align 8
  %98 = getelementptr inbounds %struct.ib_pool_fmr, %struct.ib_pool_fmr* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %103 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.iser_page_vec*, %struct.iser_page_vec** %12, align 8
  %105 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %109 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.iser_page_vec*, %struct.iser_page_vec** %12, align 8
  %112 = getelementptr inbounds %struct.iser_page_vec, %struct.iser_page_vec* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %116 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %14, align 8
  %119 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %120 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %119, i32 0, i32 2
  store %struct.ib_pool_fmr* %118, %struct.ib_pool_fmr** %120, align 8
  %121 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %122 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %126 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %129 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %133 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @iser_dbg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %127, i32 %131, i32 %135)
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %88, %82, %54
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @ib_sg_to_pages(%struct.TYPE_8__*, i32, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iser_err(i8*, ...) #1

declare dso_local i32 @iser_data_buf_dump(%struct.iser_data_buf*, i32) #1

declare dso_local i32 @iser_dump_page_vec(%struct.iser_page_vec*) #1

declare dso_local %struct.ib_pool_fmr* @ib_fmr_pool_map_phys(%struct.ib_fmr_pool*, i32*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_pool_fmr*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_pool_fmr*) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
