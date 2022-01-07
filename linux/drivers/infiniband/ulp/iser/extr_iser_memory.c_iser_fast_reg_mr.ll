; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_fast_reg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_fast_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { %struct.TYPE_6__*, %struct.iser_tx_desc }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ib_cqe }
%struct.ib_cqe = type { i32 }
%struct.iser_tx_desc = type { i32, i32, %struct.ib_reg_wr }
%struct.ib_reg_wr = type { i32, i32, %struct.ib_mr*, %struct.TYPE_8__ }
%struct.ib_mr = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.ib_cqe*, i32, i32* }
%struct.iser_data_buf = type { i32, i32 }
%struct.iser_reg_resources = type { i32, %struct.ib_mr* }
%struct.iser_mem_reg = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@SIZE_4K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to map sg (%d/%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_WR_REG_MR = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"lkey=0x%x rkey=0x%x addr=0x%llx length=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_iser_task*, %struct.iser_data_buf*, %struct.iser_reg_resources*, %struct.iser_mem_reg*)* @iser_fast_reg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_fast_reg_mr(%struct.iscsi_iser_task* %0, %struct.iser_data_buf* %1, %struct.iser_reg_resources* %2, %struct.iser_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_iser_task*, align 8
  %7 = alloca %struct.iser_data_buf*, align 8
  %8 = alloca %struct.iser_reg_resources*, align 8
  %9 = alloca %struct.iser_mem_reg*, align 8
  %10 = alloca %struct.iser_tx_desc*, align 8
  %11 = alloca %struct.ib_cqe*, align 8
  %12 = alloca %struct.ib_mr*, align 8
  %13 = alloca %struct.ib_reg_wr*, align 8
  %14 = alloca i32, align 4
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %6, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %7, align 8
  store %struct.iser_reg_resources* %2, %struct.iser_reg_resources** %8, align 8
  store %struct.iser_mem_reg* %3, %struct.iser_mem_reg** %9, align 8
  %15 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %15, i32 0, i32 1
  store %struct.iser_tx_desc* %16, %struct.iser_tx_desc** %10, align 8
  %17 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.ib_cqe* %21, %struct.ib_cqe** %11, align 8
  %22 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %8, align 8
  %23 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %22, i32 0, i32 1
  %24 = load %struct.ib_mr*, %struct.ib_mr** %23, align 8
  store %struct.ib_mr* %24, %struct.ib_mr** %12, align 8
  %25 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %10, align 8
  %26 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %25, i32 0, i32 2
  store %struct.ib_reg_wr* %26, %struct.ib_reg_wr** %13, align 8
  %27 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %8, align 8
  %28 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %10, align 8
  %33 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %32, i32 0, i32 1
  %34 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %35 = load %struct.ib_cqe*, %struct.ib_cqe** %11, align 8
  %36 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %13, align 8
  %37 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %36, i32 0, i32 3
  %38 = call i32 @iser_inv_rkey(i32* %33, %struct.ib_mr* %34, %struct.ib_cqe* %35, %struct.TYPE_8__* %37)
  br label %39

39:                                               ; preds = %31, %4
  %40 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %41 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %42 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ib_inc_rkey(i32 %43)
  %45 = call i32 @ib_update_fast_reg_key(%struct.ib_mr* %40, i32 %44)
  %46 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %47 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %48 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %51 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SIZE_4K, align 4
  %54 = call i32 @ib_map_mr_sg(%struct.ib_mr* %46, i32 %49, i32 %52, i32* null, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %57 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %39
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %66 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @iser_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %14, align 4
  br label %76

73:                                               ; preds = %63
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i32 [ %72, %71 ], [ %75, %73 ]
  store i32 %77, i32* %5, align 4
  br label %154

78:                                               ; preds = %39
  %79 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %10, align 8
  %80 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %79, i32 0, i32 0
  %81 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %13, align 8
  %82 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  store i32* %80, i32** %83, align 8
  %84 = load i32, i32* @IB_WR_REG_MR, align 4
  %85 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %13, align 8
  %86 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 8
  %88 = load %struct.ib_cqe*, %struct.ib_cqe** %11, align 8
  %89 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %13, align 8
  %90 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store %struct.ib_cqe* %88, %struct.ib_cqe** %91, align 8
  %92 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %13, align 8
  %93 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %13, align 8
  %96 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %99 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %13, align 8
  %100 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %99, i32 0, i32 2
  store %struct.ib_mr* %98, %struct.ib_mr** %100, align 8
  %101 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %102 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %13, align 8
  %105 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %107 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %13, align 8
  %112 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %8, align 8
  %114 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %116 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %119 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 4
  %121 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %122 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %125 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %127 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %130 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %133 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %136 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 4
  %138 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %139 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %143 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %146 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %150 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @iser_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %144, i32 %148, i32 %152)
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %78, %76
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @iser_inv_rkey(i32*, %struct.ib_mr*, %struct.ib_cqe*, %struct.TYPE_8__*) #1

declare dso_local i32 @ib_update_fast_reg_key(%struct.ib_mr*, i32) #1

declare dso_local i32 @ib_inc_rkey(i32) #1

declare dso_local i32 @ib_map_mr_sg(%struct.ib_mr*, i32, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iser_err(i8*, i32, i32) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
