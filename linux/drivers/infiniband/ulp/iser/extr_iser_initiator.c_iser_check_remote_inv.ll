; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_check_remote_inv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_check_remote_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, i32 }
%struct.ib_wc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_hdr = type { %struct.iser_conn* }
%struct.iscsi_task = type { %struct.iscsi_iser_task* }
%struct.iscsi_iser_task = type { %struct.TYPE_4__*, i64* }
%struct.TYPE_4__ = type { %struct.iser_fr_desc* }
%struct.iser_fr_desc = type { i32 }

@IB_WC_WITH_INVALIDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"conn %p: remote invalidation for rkey %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"conn %p: unexpected remote invalidation, terminating connection\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@ISER_DIR_IN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ISER_DIR_OUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to get task for itt=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iser_conn*, %struct.ib_wc*, %struct.iscsi_hdr*)* @iser_check_remote_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_check_remote_inv(%struct.iser_conn* %0, %struct.ib_wc* %1, %struct.iscsi_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iser_conn*, align 8
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.iscsi_hdr*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_iser_task*, align 8
  %11 = alloca %struct.iser_fr_desc*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %5, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %6, align 8
  store %struct.iscsi_hdr* %2, %struct.iscsi_hdr** %7, align 8
  %12 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %13 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IB_WC_WITH_INVALIDATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %112

18:                                               ; preds = %3
  %19 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %20 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @iser_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %23, i32 %24)
  %26 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %27 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %36 = call i32 @iser_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), %struct.iser_conn* %35)
  %37 = load i32, i32* @EPROTO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %113

39:                                               ; preds = %18
  %40 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %41 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %44 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %43, i32 0, i32 0
  %45 = load %struct.iser_conn*, %struct.iser_conn** %44, align 8
  %46 = call %struct.iscsi_task* @iscsi_itt_to_ctask(i32 %42, %struct.iser_conn* %45)
  store %struct.iscsi_task* %46, %struct.iscsi_task** %8, align 8
  %47 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %48 = call i64 @likely(%struct.iscsi_task* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %104

50:                                               ; preds = %39
  %51 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %52 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %51, i32 0, i32 0
  %53 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %52, align 8
  store %struct.iscsi_iser_task* %53, %struct.iscsi_iser_task** %10, align 8
  %54 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %55 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @ISER_DIR_IN, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %50
  %62 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %63 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* @ISER_DIR_IN, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %67, align 8
  store %struct.iser_fr_desc* %68, %struct.iser_fr_desc** %11, align 8
  %69 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %11, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @iser_inv_desc(%struct.iser_fr_desc* %69, i32 %70)
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %113

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %50
  %79 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %80 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @ISER_DIR_OUT, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %78
  %87 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %88 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* @ISER_DIR_OUT, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %92, align 8
  store %struct.iser_fr_desc* %93, %struct.iser_fr_desc** %11, align 8
  %94 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %11, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @iser_inv_desc(%struct.iser_fr_desc* %94, i32 %95)
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %113

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %78
  br label %111

104:                                              ; preds = %39
  %105 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %106 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %105, i32 0, i32 0
  %107 = load %struct.iser_conn*, %struct.iser_conn** %106, align 8
  %108 = call i32 @iser_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.iser_conn* %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %113

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %3
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %104, %99, %74, %34
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @iser_dbg(i8*, %struct.iser_conn*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iser_err(i8*, %struct.iser_conn*) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_ctask(i32, %struct.iser_conn*) #1

declare dso_local i64 @likely(%struct.iscsi_task*) #1

declare dso_local i32 @iser_inv_desc(%struct.iser_fr_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
