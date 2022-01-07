; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_hfi1_make_bth_deth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_hfi1_make_bth_deth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.rvt_swqe = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ib_other_headers = type { %struct.TYPE_9__, i8** }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8**, i32 }
%struct.hfi1_ibport = type { i32 }

@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@IB_BTH_SOLICITED = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QPT_SMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, %struct.rvt_swqe*, %struct.ib_other_headers*, i32*, i32, i32)* @hfi1_make_bth_deth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_make_bth_deth(%struct.rvt_qp* %0, %struct.rvt_swqe* %1, %struct.ib_other_headers* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rvt_qp*, align 8
  %8 = alloca %struct.rvt_swqe*, align 8
  %9 = alloca %struct.ib_other_headers*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hfi1_ibport*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %7, align 8
  store %struct.rvt_swqe* %1, %struct.rvt_swqe** %8, align 8
  store %struct.ib_other_headers* %2, %struct.ib_other_headers** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %20 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.hfi1_ibport* @to_iport(i32 %18, i32 %21)
  store %struct.hfi1_ibport* %22, %struct.hfi1_ibport** %14, align 8
  %23 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %24 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %6
  %30 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %31 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ib_other_headers*, %struct.ib_other_headers** %9, align 8
  %36 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 8
  %39 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE, align 4
  %40 = shl i32 %39, 24
  store i32 %40, i32* %13, align 4
  br label %44

41:                                               ; preds = %6
  %42 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %43 = shl i32 %42, 24
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %41, %29
  %45 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %46 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @IB_BTH_SOLICITED, align 4
  %54 = load i32, i32* %13, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 %57, 20
  %59 = load i32, i32* %13, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %62 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IB_QPT_GSI, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %56
  %68 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %69 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IB_QPT_SMI, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %67, %56
  %75 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %14, align 8
  %76 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %77 = call i32 @rvt_get_swqe_pkey_index(%struct.rvt_swqe* %76)
  %78 = call i32 @hfi1_get_pkey(%struct.hfi1_ibport* %75, i32 %77)
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %87

80:                                               ; preds = %67
  %81 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %14, align 8
  %82 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %83 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @hfi1_get_pkey(%struct.hfi1_ibport* %81, i32 %84)
  %86 = load i32*, i32** %10, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %74
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %13, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32, i32* %13, align 4
  %97 = call i8* @cpu_to_be32(i32 %96)
  %98 = load %struct.ib_other_headers*, %struct.ib_other_headers** %9, align 8
  %99 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  store i8* %97, i8** %101, align 8
  %102 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %103 = call i32 @rvt_get_swqe_remote_qpn(%struct.rvt_swqe* %102)
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = load %struct.ib_other_headers*, %struct.ib_other_headers** %9, align 8
  %106 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  store i8* %104, i8** %108, align 8
  %109 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %110 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @mask_psn(i32 %111)
  %113 = call i8* @cpu_to_be32(i32 %112)
  %114 = load %struct.ib_other_headers*, %struct.ib_other_headers** %9, align 8
  %115 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 2
  store i8* %113, i8** %117, align 8
  %118 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %119 = call i32 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe* %118)
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %95
  %122 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %123 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  br label %128

125:                                              ; preds = %95
  %126 = load %struct.rvt_swqe*, %struct.rvt_swqe** %8, align 8
  %127 = call i32 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe* %126)
  br label %128

128:                                              ; preds = %125, %121
  %129 = phi i32 [ %124, %121 ], [ %127, %125 ]
  %130 = call i8* @cpu_to_be32(i32 %129)
  %131 = load %struct.ib_other_headers*, %struct.ib_other_headers** %9, align 8
  %132 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  store i8* %130, i8** %136, align 8
  %137 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %138 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @cpu_to_be32(i32 %140)
  %142 = load %struct.ib_other_headers*, %struct.ib_other_headers** %9, align 8
  %143 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 1
  store i8* %141, i8** %147, align 8
  ret void
}

declare dso_local %struct.hfi1_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @hfi1_get_pkey(%struct.hfi1_ibport*, i32) #1

declare dso_local i32 @rvt_get_swqe_pkey_index(%struct.rvt_swqe*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @rvt_get_swqe_remote_qpn(%struct.rvt_swqe*) #1

declare dso_local i32 @mask_psn(i32) #1

declare dso_local i32 @rvt_get_swqe_remote_qkey(%struct.rvt_swqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
