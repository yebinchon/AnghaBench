; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_send_check_ntoh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_send_check_ntoh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_rx_stream = type { i64*, i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iwarp_send_inv }
%struct.iwarp_send_inv = type { i32, i32, i32, i32 }
%struct.siw_rx_fpdu = type { i64, i64, i64, i64, %struct.siw_wqe }
%struct.siw_wqe = type { i64, i64, i32 }

@RDMAP_UNTAGGED_QN_SEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"siw: [QP %u]: invalid ddp qn %d for send\0A\00", align 1
@DDP_ECODE_UT_INVALID_QN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"siw: [QP %u]: send msn: %u != %u\0A\00", align 1
@DDP_ECODE_UT_INVALID_MSN_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"siw: [QP %u], send mo: %u != %u\0A\00", align 1
@DDP_ECODE_UT_INVALID_MO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"receive space short: %d - %d < %d\0A\00", align 1
@SIW_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@DDP_ECODE_UT_INVALID_MSN_NOBUF = common dso_local global i32 0, align 4
@TERM_ERROR_LAYER_DDP = common dso_local global i32 0, align 4
@DDP_ETYPE_UNTAGGED_BUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_rx_stream*, %struct.siw_rx_fpdu*)* @siw_send_check_ntoh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_send_check_ntoh(%struct.siw_rx_stream* %0, %struct.siw_rx_fpdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siw_rx_stream*, align 8
  %5 = alloca %struct.siw_rx_fpdu*, align 8
  %6 = alloca %struct.iwarp_send_inv*, align 8
  %7 = alloca %struct.siw_wqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.siw_rx_stream* %0, %struct.siw_rx_stream** %4, align 8
  store %struct.siw_rx_fpdu* %1, %struct.siw_rx_fpdu** %5, align 8
  %12 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %13 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.iwarp_send_inv* %14, %struct.iwarp_send_inv** %6, align 8
  %15 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %16 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %15, i32 0, i32 4
  store %struct.siw_wqe* %16, %struct.siw_wqe** %7, align 8
  %17 = load %struct.iwarp_send_inv*, %struct.iwarp_send_inv** %6, align 8
  %18 = getelementptr inbounds %struct.iwarp_send_inv, %struct.iwarp_send_inv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @be32_to_cpu(i32 %19)
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load %struct.iwarp_send_inv*, %struct.iwarp_send_inv** %6, align 8
  %23 = getelementptr inbounds %struct.iwarp_send_inv, %struct.iwarp_send_inv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @be32_to_cpu(i32 %24)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load %struct.iwarp_send_inv*, %struct.iwarp_send_inv** %6, align 8
  %28 = getelementptr inbounds %struct.iwarp_send_inv, %struct.iwarp_send_inv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @be32_to_cpu(i32 %29)
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @RDMAP_UNTAGGED_QN_SEND, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %40 = call i32 @rx_qp(%struct.siw_rx_stream* %39)
  %41 = call i32 @qp_id(i32 %40)
  %42 = load i64, i64* %11, align 8
  %43 = call i32 (i8*, i32, i64, ...) @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42)
  %44 = load i32, i32* @DDP_ECODE_UT_INVALID_QN, align 4
  store i32 %44, i32* %8, align 4
  br label %140

45:                                               ; preds = %2
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %48 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @RDMAP_UNTAGGED_QN_SEND, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %46, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %45
  %58 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %59 = call i32 @rx_qp(%struct.siw_rx_stream* %58)
  %60 = call i32 @qp_id(i32 %59)
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %63 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @RDMAP_UNTAGGED_QN_SEND, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, i32, i64, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %61, i64 %67)
  %69 = load i32, i32* @DDP_ECODE_UT_INVALID_MSN_RANGE, align 4
  store i32 %69, i32* %8, align 4
  br label %140

70:                                               ; preds = %45
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %73 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %70
  %80 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %81 = call i32 @rx_qp(%struct.siw_rx_stream* %80)
  %82 = call i32 @qp_id(i32 %81)
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %85 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i8*, i32, i64, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %82, i64 %83, i64 %86)
  %88 = load i32, i32* @DDP_ECODE_UT_INVALID_MO, align 4
  store i32 %88, i32* %8, align 4
  br label %140

89:                                               ; preds = %70
  %90 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %91 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %96 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %98 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %100 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load %struct.iwarp_send_inv*, %struct.iwarp_send_inv** %6, align 8
  %102 = getelementptr inbounds %struct.iwarp_send_inv, %struct.iwarp_send_inv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @be32_to_cpu(i32 %103)
  %105 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %106 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %94, %89
  %108 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %109 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %112 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %115 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %113, %116
  %118 = icmp ult i64 %110, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %107
  %123 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %124 = call i32 @rx_qp(%struct.siw_rx_stream* %123)
  %125 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %126 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %129 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %132 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @siw_dbg_qp(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %127, i64 %130, i64 %133)
  %135 = load i32, i32* @SIW_WC_LOC_LEN_ERR, align 4
  %136 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %137 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @DDP_ECODE_UT_INVALID_MSN_NOBUF, align 4
  store i32 %138, i32* %8, align 4
  br label %140

139:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %149

140:                                              ; preds = %122, %79, %57, %38
  %141 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %142 = call i32 @rx_qp(%struct.siw_rx_stream* %141)
  %143 = load i32, i32* @TERM_ERROR_LAYER_DDP, align 4
  %144 = load i32, i32* @DDP_ETYPE_UNTAGGED_BUF, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @siw_init_terminate(i32 %142, i32 %143, i32 %144, i32 %145, i32 0)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %140, %139
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, ...) #1

declare dso_local i32 @qp_id(i32) #1

declare dso_local i32 @rx_qp(%struct.siw_rx_stream*) #1

declare dso_local i32 @siw_dbg_qp(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @siw_init_terminate(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
