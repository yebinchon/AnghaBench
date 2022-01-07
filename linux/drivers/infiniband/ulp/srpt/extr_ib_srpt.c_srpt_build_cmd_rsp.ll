; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_build_cmd_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_build_cmd_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_rdma_ch = type { i32, i32 }
%struct.srpt_send_ioctx = type { %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.srp_rsp* }
%struct.srp_rsp = type { i32, i8*, i32, i32, i8*, i32 }

@SRP_RSP = common dso_local global i32 0, align 4
@MIN_MAX_RSP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"truncated sense data from %d to %d bytes\0A\00", align 1
@SRP_RSP_FLAG_SNSVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srpt_rdma_ch*, %struct.srpt_send_ioctx*, i32, i32)* @srpt_build_cmd_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_build_cmd_rsp(%struct.srpt_rdma_ch* %0, %struct.srpt_send_ioctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.srpt_rdma_ch*, align 8
  %6 = alloca %struct.srpt_send_ioctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.srp_rsp*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.srpt_rdma_ch* %0, %struct.srpt_rdma_ch** %5, align 8
  store %struct.srpt_send_ioctx* %1, %struct.srpt_send_ioctx** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 1
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %17 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.srp_rsp*, %struct.srp_rsp** %18, align 8
  store %struct.srp_rsp* %19, %struct.srp_rsp** %9, align 8
  %20 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %21 = icmp ne %struct.srp_rsp* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %26 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %29 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 8
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %38 = call i32 @memset(%struct.srp_rsp* %37, i32 0, i32 40)
  %39 = load i32, i32* @SRP_RSP, align 4
  %40 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %41 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  %43 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %42, i32 0, i32 1
  %44 = call i32 @atomic_xchg(i32* %43, i32 0)
  %45 = add nsw i32 1, %44
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %48 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %51 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %54 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %4
  %58 = load i32, i32* @MIN_MAX_RSP_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ule i64 %59, 40
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUILD_BUG_ON(i32 %61)
  %63 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  %64 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 40
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %57
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %72, %57
  %78 = load i32, i32* @SRP_RSP_FLAG_SNSVALID, align 4
  %79 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %80 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %86 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.srp_rsp*, %struct.srp_rsp** %9, align 8
  %88 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %87, i64 1
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @memcpy(%struct.srp_rsp* %88, i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %77, %4
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 40, %94
  %96 = trunc i64 %95 to i32
  ret i32 %96
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.srp_rsp*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.srp_rsp*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
