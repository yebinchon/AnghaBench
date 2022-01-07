; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_reg_sig_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_reg_sig_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { i32, %struct.TYPE_6__*, %struct.iser_tx_desc }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ib_cqe }
%struct.ib_cqe = type { i32 }
%struct.iser_tx_desc = type { i32, i32, %struct.ib_sig_attrs }
%struct.ib_sig_attrs = type { i32, i32, %struct.ib_mr*, %struct.TYPE_8__, i32 }
%struct.ib_mr = type { i32, i32, i32, i32, %struct.ib_sig_attrs* }
%struct.TYPE_8__ = type { i64, i64, %struct.ib_cqe*, i32, i32* }
%struct.iser_data_buf = type { i64, i32 }
%struct.iser_reg_resources = type { i32, %struct.ib_mr* }
%struct.iser_mem_reg = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ib_reg_wr = type { i32, i32, %struct.ib_mr*, %struct.TYPE_8__, i32 }

@SZ_4K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to map PI sg (%d)\0A\00", align 1
@IB_WR_REG_MR_INTEGRITY = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"lkey=0x%x rkey=0x%x addr=0x%llx length=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_iser_task*, %struct.iser_data_buf*, %struct.iser_data_buf*, %struct.iser_reg_resources*, %struct.iser_mem_reg*)* @iser_reg_sig_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_reg_sig_mr(%struct.iscsi_iser_task* %0, %struct.iser_data_buf* %1, %struct.iser_data_buf* %2, %struct.iser_reg_resources* %3, %struct.iser_mem_reg* %4) #0 {
  %6 = alloca %struct.iscsi_iser_task*, align 8
  %7 = alloca %struct.iser_data_buf*, align 8
  %8 = alloca %struct.iser_data_buf*, align 8
  %9 = alloca %struct.iser_reg_resources*, align 8
  %10 = alloca %struct.iser_mem_reg*, align 8
  %11 = alloca %struct.iser_tx_desc*, align 8
  %12 = alloca %struct.ib_cqe*, align 8
  %13 = alloca %struct.ib_mr*, align 8
  %14 = alloca %struct.ib_sig_attrs*, align 8
  %15 = alloca %struct.ib_reg_wr*, align 8
  %16 = alloca i32, align 4
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %6, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %7, align 8
  store %struct.iser_data_buf* %2, %struct.iser_data_buf** %8, align 8
  store %struct.iser_reg_resources* %3, %struct.iser_reg_resources** %9, align 8
  store %struct.iser_mem_reg* %4, %struct.iser_mem_reg** %10, align 8
  %17 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %17, i32 0, i32 2
  store %struct.iser_tx_desc* %18, %struct.iser_tx_desc** %11, align 8
  %19 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.ib_cqe* %23, %struct.ib_cqe** %12, align 8
  %24 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %9, align 8
  %25 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %24, i32 0, i32 1
  %26 = load %struct.ib_mr*, %struct.ib_mr** %25, align 8
  store %struct.ib_mr* %26, %struct.ib_mr** %13, align 8
  %27 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %28 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %27, i32 0, i32 4
  %29 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %28, align 8
  store %struct.ib_sig_attrs* %29, %struct.ib_sig_attrs** %14, align 8
  %30 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %11, align 8
  %31 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %30, i32 0, i32 2
  %32 = bitcast %struct.ib_sig_attrs* %31 to %struct.ib_reg_wr*
  store %struct.ib_reg_wr* %32, %struct.ib_reg_wr** %15, align 8
  %33 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %14, align 8
  %34 = call i32 @memset(%struct.ib_sig_attrs* %33, i32 0, i32 64)
  %35 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %36 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %14, align 8
  %39 = call i32 @iser_set_sig_attrs(i32 %37, %struct.ib_sig_attrs* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  br label %175

43:                                               ; preds = %5
  %44 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  %45 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %14, align 8
  %48 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %47, i32 0, i32 4
  %49 = call i32 @iser_set_prot_checks(i32 %46, i32* %48)
  %50 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %9, align 8
  %51 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %43
  %55 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %11, align 8
  %56 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %55, i32 0, i32 1
  %57 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %58 = load %struct.ib_cqe*, %struct.ib_cqe** %12, align 8
  %59 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %60 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %59, i32 0, i32 3
  %61 = call i32 @iser_inv_rkey(i32* %56, %struct.ib_mr* %57, %struct.ib_cqe* %58, %struct.TYPE_8__* %60)
  br label %62

62:                                               ; preds = %54, %43
  %63 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %64 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %65 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ib_inc_rkey(i32 %66)
  %68 = call i32 @ib_update_fast_reg_key(%struct.ib_mr* %63, i32 %67)
  %69 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %70 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %71 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %74 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.iser_data_buf*, %struct.iser_data_buf** %8, align 8
  %77 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.iser_data_buf*, %struct.iser_data_buf** %8, align 8
  %80 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @SZ_4K, align 4
  %83 = call i32 @ib_map_mr_sg_pi(%struct.ib_mr* %69, i32 %72, i64 %75, i32* null, i32 %78, i64 %81, i32* null, i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %62
  %88 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %89 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.iser_data_buf*, %struct.iser_data_buf** %8, align 8
  %92 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = call i32 @iser_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %94)
  br label %175

96:                                               ; preds = %62
  %97 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %98 = bitcast %struct.ib_reg_wr* %97 to %struct.ib_sig_attrs*
  %99 = call i32 @memset(%struct.ib_sig_attrs* %98, i32 0, i32 64)
  %100 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %11, align 8
  %101 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %100, i32 0, i32 0
  %102 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %103 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  store i32* %101, i32** %104, align 8
  %105 = load i32, i32* @IB_WR_REG_MR_INTEGRITY, align 4
  %106 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %107 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 8
  %109 = load %struct.ib_cqe*, %struct.ib_cqe** %12, align 8
  %110 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %111 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store %struct.ib_cqe* %109, %struct.ib_cqe** %112, align 8
  %113 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %114 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %117 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %120 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %121 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %120, i32 0, i32 2
  store %struct.ib_mr* %119, %struct.ib_mr** %121, align 8
  %122 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %123 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %126 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %128 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %15, align 8
  %133 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %9, align 8
  %135 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %137 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %10, align 8
  %140 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 4
  %142 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %143 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %10, align 8
  %146 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %148 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %10, align 8
  %151 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  %153 = load %struct.ib_mr*, %struct.ib_mr** %13, align 8
  %154 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %10, align 8
  %157 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 4
  %159 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %10, align 8
  %160 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %10, align 8
  %164 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %10, align 8
  %167 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %10, align 8
  %171 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @iser_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %165, i32 %169, i32 %173)
  br label %175

175:                                              ; preds = %96, %87, %42
  %176 = load i32, i32* %16, align 4
  ret i32 %176
}

declare dso_local i32 @memset(%struct.ib_sig_attrs*, i32, i32) #1

declare dso_local i32 @iser_set_sig_attrs(i32, %struct.ib_sig_attrs*) #1

declare dso_local i32 @iser_set_prot_checks(i32, i32*) #1

declare dso_local i32 @iser_inv_rkey(i32*, %struct.ib_mr*, %struct.ib_cqe*, %struct.TYPE_8__*) #1

declare dso_local i32 @ib_update_fast_reg_key(%struct.ib_mr*, i32) #1

declare dso_local i32 @ib_inc_rkey(i32) #1

declare dso_local i32 @ib_map_mr_sg_pi(%struct.ib_mr*, i32, i64, i32*, i32, i64, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iser_err(i8*, i64) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
