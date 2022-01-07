; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_hdr = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"wrong datalen %d (hdr), %d (IB)\0A\00", align 1
@ISCSI_ERR_DATALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"aligned datalen (%d) hdr, %d (IB)\0A\00", align 1
@ISCSI_ERR_NO_SCSI_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_iser_recv(%struct.iscsi_conn* %0, %struct.iscsi_hdr* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_hdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %12 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntoh24(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18, %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @iser_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @ISCSI_ERR_DATALEN, align 4
  store i32 %27, i32* %9, align 4
  br label %50

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @iser_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %38 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @iscsi_complete_pdu(%struct.iscsi_conn* %37, %struct.iscsi_hdr* %38, i8* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @ISCSI_ERR_NO_SCSI_CMD, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %50

49:                                               ; preds = %44, %36
  br label %54

50:                                               ; preds = %48, %23
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %49
  ret void
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @iser_err(i8*, i32, i32) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32) #1

declare dso_local i32 @iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i8*, i32) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
