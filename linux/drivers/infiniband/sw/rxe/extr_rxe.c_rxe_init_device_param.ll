; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_init_device_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_init_device_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RXE_MAX_INLINE_DATA = common dso_local global i32 0, align 4
@RXE_FW_VER = common dso_local global i32 0, align 4
@RXE_MAX_MR_SIZE = common dso_local global i32 0, align 4
@RXE_PAGE_SIZE_CAP = common dso_local global i32 0, align 4
@RXE_VENDOR_ID = common dso_local global i32 0, align 4
@RXE_VENDOR_PART_ID = common dso_local global i32 0, align 4
@RXE_HW_VER = common dso_local global i32 0, align 4
@RXE_MAX_QP = common dso_local global i32 0, align 4
@RXE_MAX_QP_WR = common dso_local global i32 0, align 4
@RXE_DEVICE_CAP_FLAGS = common dso_local global i32 0, align 4
@RXE_MAX_SGE = common dso_local global i8* null, align 8
@RXE_MAX_SGE_RD = common dso_local global i32 0, align 4
@RXE_MAX_CQ = common dso_local global i32 0, align 4
@RXE_MAX_LOG_CQE = common dso_local global i32 0, align 4
@RXE_MAX_MR = common dso_local global i32 0, align 4
@RXE_MAX_PD = common dso_local global i32 0, align 4
@RXE_MAX_QP_RD_ATOM = common dso_local global i32 0, align 4
@RXE_MAX_EE_RD_ATOM = common dso_local global i32 0, align 4
@RXE_MAX_RES_RD_ATOM = common dso_local global i32 0, align 4
@RXE_MAX_QP_INIT_RD_ATOM = common dso_local global i32 0, align 4
@RXE_MAX_EE_INIT_RD_ATOM = common dso_local global i32 0, align 4
@IB_ATOMIC_HCA = common dso_local global i32 0, align 4
@RXE_MAX_EE = common dso_local global i32 0, align 4
@RXE_MAX_RDD = common dso_local global i32 0, align 4
@RXE_MAX_MW = common dso_local global i32 0, align 4
@RXE_MAX_RAW_IPV6_QP = common dso_local global i32 0, align 4
@RXE_MAX_RAW_ETHY_QP = common dso_local global i32 0, align 4
@RXE_MAX_MCAST_GRP = common dso_local global i32 0, align 4
@RXE_MAX_MCAST_QP_ATTACH = common dso_local global i32 0, align 4
@RXE_MAX_TOT_MCAST_QP_ATTACH = common dso_local global i32 0, align 4
@RXE_MAX_AH = common dso_local global i32 0, align 4
@RXE_MAX_FMR = common dso_local global i32 0, align 4
@RXE_MAX_MAP_PER_FMR = common dso_local global i32 0, align 4
@RXE_MAX_SRQ = common dso_local global i32 0, align 4
@RXE_MAX_SRQ_WR = common dso_local global i32 0, align 4
@RXE_MAX_SRQ_SGE = common dso_local global i32 0, align 4
@RXE_MAX_FMR_PAGE_LIST_LEN = common dso_local global i32 0, align 4
@RXE_MAX_PKEYS = common dso_local global i32 0, align 4
@RXE_LOCAL_CA_ACK_DELAY = common dso_local global i32 0, align 4
@RXE_MAX_UCONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_dev*)* @rxe_init_device_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_init_device_param(%struct.rxe_dev* %0) #0 {
  %2 = alloca %struct.rxe_dev*, align 8
  store %struct.rxe_dev* %0, %struct.rxe_dev** %2, align 8
  %3 = load i32, i32* @RXE_MAX_INLINE_DATA, align 4
  %4 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @RXE_FW_VER, align 4
  %7 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 38
  store i32 %6, i32* %9, align 8
  %10 = load i32, i32* @RXE_MAX_MR_SIZE, align 4
  %11 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 37
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @RXE_PAGE_SIZE_CAP, align 4
  %15 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 36
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @RXE_VENDOR_ID, align 4
  %19 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %20 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 35
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @RXE_VENDOR_PART_ID, align 4
  %23 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %24 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 34
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @RXE_HW_VER, align 4
  %27 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %28 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 33
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @RXE_MAX_QP, align 4
  %31 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %32 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 32
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @RXE_MAX_QP_WR, align 4
  %35 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %36 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 31
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @RXE_DEVICE_CAP_FLAGS, align 4
  %39 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %40 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 30
  store i32 %38, i32* %41, align 8
  %42 = load i8*, i8** @RXE_MAX_SGE, align 8
  %43 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %44 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 29
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** @RXE_MAX_SGE, align 8
  %47 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %48 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 28
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* @RXE_MAX_SGE_RD, align 4
  %51 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %52 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 27
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @RXE_MAX_CQ, align 4
  %55 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %56 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 26
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @RXE_MAX_LOG_CQE, align 4
  %59 = shl i32 1, %58
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %62 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @RXE_MAX_MR, align 4
  %65 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %66 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 25
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @RXE_MAX_PD, align 4
  %69 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %70 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 24
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @RXE_MAX_QP_RD_ATOM, align 4
  %73 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %74 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 23
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @RXE_MAX_EE_RD_ATOM, align 4
  %77 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %78 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 22
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @RXE_MAX_RES_RD_ATOM, align 4
  %81 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %82 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 21
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @RXE_MAX_QP_INIT_RD_ATOM, align 4
  %85 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %86 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 20
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @RXE_MAX_EE_INIT_RD_ATOM, align 4
  %89 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %90 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 19
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @IB_ATOMIC_HCA, align 4
  %93 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %94 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 18
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @RXE_MAX_EE, align 4
  %97 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %98 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 17
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @RXE_MAX_RDD, align 4
  %101 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %102 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 16
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* @RXE_MAX_MW, align 4
  %105 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %106 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 15
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @RXE_MAX_RAW_IPV6_QP, align 4
  %109 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %110 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 14
  store i32 %108, i32* %111, align 8
  %112 = load i32, i32* @RXE_MAX_RAW_ETHY_QP, align 4
  %113 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %114 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 13
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @RXE_MAX_MCAST_GRP, align 4
  %117 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %118 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 12
  store i32 %116, i32* %119, align 8
  %120 = load i32, i32* @RXE_MAX_MCAST_QP_ATTACH, align 4
  %121 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %122 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 11
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @RXE_MAX_TOT_MCAST_QP_ATTACH, align 4
  %125 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %126 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 10
  store i32 %124, i32* %127, align 8
  %128 = load i32, i32* @RXE_MAX_AH, align 4
  %129 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %130 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 9
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* @RXE_MAX_FMR, align 4
  %133 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %134 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 8
  store i32 %132, i32* %135, align 8
  %136 = load i32, i32* @RXE_MAX_MAP_PER_FMR, align 4
  %137 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %138 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 7
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @RXE_MAX_SRQ, align 4
  %141 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %142 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 6
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* @RXE_MAX_SRQ_WR, align 4
  %145 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %146 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 5
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @RXE_MAX_SRQ_SGE, align 4
  %149 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %150 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 4
  store i32 %148, i32* %151, align 8
  %152 = load i32, i32* @RXE_MAX_FMR_PAGE_LIST_LEN, align 4
  %153 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %154 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* @RXE_MAX_PKEYS, align 4
  %157 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %158 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* @RXE_LOCAL_CA_ACK_DELAY, align 4
  %161 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %162 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @RXE_MAX_UCONTEXT, align 4
  %165 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %166 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
