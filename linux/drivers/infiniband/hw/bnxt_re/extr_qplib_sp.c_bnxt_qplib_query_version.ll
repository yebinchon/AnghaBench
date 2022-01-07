; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_query_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_query_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { i32 }
%struct.cmdq_query_version = type { i32 }
%struct.creq_query_version_resp = type { i8, i8, i8, i8 }

@QUERY_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_qplib_rcfw*, i8*)* @bnxt_qplib_query_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_qplib_query_version(%struct.bnxt_qplib_rcfw* %0, i8* %1) #0 {
  %3 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cmdq_query_version, align 4
  %6 = alloca %struct.creq_query_version_resp, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @QUERY_VERSION, align 4
  %10 = load i32, i32* %7, align 4
  %11 = getelementptr inbounds %struct.cmdq_query_version, %struct.cmdq_query_version* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @RCFW_CMD_PREP(i32 %12, i32 %9, i32 %10)
  %14 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %15 = bitcast %struct.cmdq_query_version* %5 to i8*
  %16 = bitcast %struct.creq_query_version_resp* %6 to i8*
  %17 = call i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %14, i8* %15, i8* %16, i32* null, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %38

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.creq_query_version_resp, %struct.creq_query_version_resp* %6, i32 0, i32 0
  %23 = load i8, i8* %22, align 1
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %23, i8* %25, align 1
  %26 = getelementptr inbounds %struct.creq_query_version_resp, %struct.creq_query_version_resp* %6, i32 0, i32 1
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %27, i8* %29, align 1
  %30 = getelementptr inbounds %struct.creq_query_version_resp, %struct.creq_query_version_resp* %6, i32 0, i32 2
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 %31, i8* %33, align 1
  %34 = getelementptr inbounds %struct.creq_query_version_resp, %struct.creq_query_version_resp* %6, i32 0, i32 3
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8 %35, i8* %37, align 1
  br label %38

38:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @RCFW_CMD_PREP(i32, i32, i32) #1

declare dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw*, i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
