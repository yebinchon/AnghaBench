; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_ev.c_dump_err_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_ev.c_dump_err_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.t4_cqe = type { i32 }

@.str = private unnamed_addr constant [77 x i8] c"AE qpid %d opcode %d status 0x%x type %d len 0x%x wrid.hi 0x%x wrid.lo 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"%016llx %016llx %016llx %016llx - %016llx %016llx %016llx %016llx\0A\00", align 1
@FW_RI_RDMA_WRITE = common dso_local global i64 0, align 8
@FW_RI_READ_RESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_dev*, %struct.t4_cqe*)* @dump_err_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_err_cqe(%struct.c4iw_dev* %0, %struct.t4_cqe* %1) #0 {
  %3 = alloca %struct.c4iw_dev*, align 8
  %4 = alloca %struct.t4_cqe*, align 8
  %5 = alloca i32*, align 8
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %3, align 8
  store %struct.t4_cqe* %1, %struct.t4_cqe** %4, align 8
  %6 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %7 = bitcast %struct.t4_cqe* %6 to i8*
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %10 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %16 = call i32 @CQE_QPID(%struct.t4_cqe* %15)
  %17 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %18 = call i64 @CQE_OPCODE(%struct.t4_cqe* %17)
  %19 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %20 = call i32 @CQE_STATUS(%struct.t4_cqe* %19)
  %21 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %22 = call i32 @CQE_TYPE(%struct.t4_cqe* %21)
  %23 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %24 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohl(i32 %25)
  %27 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %28 = call i32 @CQE_WRID_HI(%struct.t4_cqe* %27)
  %29 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %30 = call i32 @CQE_WRID_LOW(%struct.t4_cqe* %29)
  %31 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %18, i32 %20, i32 %22, i32 %26, i32 %28, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be64_to_cpu(i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be64_to_cpu(i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be64_to_cpu(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be64_to_cpu(i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be64_to_cpu(i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be64_to_cpu(i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be64_to_cpu(i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @be64_to_cpu(i32 %62)
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %59, i32 %63)
  %65 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %66 = call i64 @RQ_TYPE(%struct.t4_cqe* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %2
  %69 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %70 = call i64 @CQE_OPCODE(%struct.t4_cqe* %69)
  %71 = load i64, i64* @FW_RI_RDMA_WRITE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %75 = call i64 @CQE_OPCODE(%struct.t4_cqe* %74)
  %76 = load i64, i64* @FW_RI_READ_RESP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73, %68
  %79 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %80 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %81 = call i32 @CQE_WRID_STAG(%struct.t4_cqe* %80)
  %82 = call i32 @print_tpte(%struct.c4iw_dev* %79, i32 %81)
  br label %83

83:                                               ; preds = %78, %73, %2
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CQE_QPID(%struct.t4_cqe*) #1

declare dso_local i64 @CQE_OPCODE(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_STATUS(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_TYPE(%struct.t4_cqe*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @CQE_WRID_HI(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_WRID_LOW(%struct.t4_cqe*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @RQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i32 @print_tpte(%struct.c4iw_dev*, i32) #1

declare dso_local i32 @CQE_WRID_STAG(%struct.t4_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
