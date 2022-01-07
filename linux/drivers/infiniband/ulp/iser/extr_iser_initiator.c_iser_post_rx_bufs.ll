; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_post_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_post_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_session*, %struct.iser_conn* }
%struct.iscsi_session = type { i64 }
%struct.iser_conn = type { i32, %struct.ib_conn }
%struct.ib_conn = type { i32 }
%struct.iscsi_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"req op %x flags %x\0A\00", align 1
@ISCSI_FULL_FEATURE_PHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Discovery session, re-using login RX buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Normal session, posting batch of RX %d buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_hdr*)* @iser_post_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_post_rx_bufs(%struct.iscsi_conn* %0, %struct.iscsi_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_hdr*, align 8
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca %struct.ib_conn*, align 8
  %8 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %5, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 1
  %11 = load %struct.iser_conn*, %struct.iser_conn** %10, align 8
  store %struct.iser_conn* %11, %struct.iser_conn** %6, align 8
  %12 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %13 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %12, i32 0, i32 1
  store %struct.ib_conn* %13, %struct.ib_conn** %7, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  %16 = load %struct.iscsi_session*, %struct.iscsi_session** %15, align 8
  store %struct.iscsi_session* %16, %struct.iscsi_session** %8, align 8
  %17 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iser_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ISCSI_FULL_FEATURE_PHASE, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @ISCSI_FULL_FEATURE_PHASE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

32:                                               ; preds = %2
  %33 = load %struct.ib_conn*, %struct.ib_conn** %7, align 8
  %34 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %40 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = call i32 (i8*, ...) @iser_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %61

45:                                               ; preds = %32
  %46 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %47 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @iser_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45
  %51 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %52 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %53 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @iser_post_recvm(%struct.iser_conn* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57, %43, %31
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @iser_dbg(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iser_info(i8*, ...) #1

declare dso_local i64 @iser_post_recvm(%struct.iser_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
