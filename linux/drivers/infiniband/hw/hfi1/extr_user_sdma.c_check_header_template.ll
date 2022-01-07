; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_check_header_template.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_check_header_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_sdma_request = type { i32*, i64, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hfi1_pkt_header = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXPECTED = common dso_local global i64 0, align 8
@LEN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@IDX = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@OM = common dso_local global i32 0, align 4
@KDETH_OM_LARGE = common dso_local global i32 0, align 4
@KDETH_OM_SMALL = common dso_local global i32 0, align 4
@TIDCTRL = common dso_local global i32 0, align 4
@TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_sdma_request*, %struct.hfi1_pkt_header*, i32, i32)* @check_header_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_header_template(%struct.user_sdma_request* %0, %struct.hfi1_pkt_header* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_sdma_request*, align 8
  %7 = alloca %struct.hfi1_pkt_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.user_sdma_request* %0, %struct.user_sdma_request** %6, align 8
  store %struct.hfi1_pkt_header* %1, %struct.hfi1_pkt_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.user_sdma_request*, %struct.user_sdma_request** %6, align 8
  %17 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PIO_BLOCK_SIZE, align 4
  %21 = srem i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %7, align 8
  %30 = load %struct.user_sdma_request*, %struct.user_sdma_request** %6, align 8
  %31 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %29, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_lrh_len(i32 %36, i32 %33)
  %38 = icmp sgt i32 %28, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27, %23, %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %114

42:                                               ; preds = %27
  %43 = load %struct.user_sdma_request*, %struct.user_sdma_request** %6, align 8
  %44 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @req_opcode(i32 %46)
  %48 = load i64, i64* @EXPECTED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %113

50:                                               ; preds = %42
  %51 = load %struct.user_sdma_request*, %struct.user_sdma_request** %6, align 8
  %52 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.user_sdma_request*, %struct.user_sdma_request** %6, align 8
  %55 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @LEN, align 4
  %61 = call i32 @EXP_TID_GET(i32 %59, i32 %60)
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @IDX, align 4
  %66 = call i32 @EXP_TID_GET(i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @CTRL, align 4
  %69 = call i32 @EXP_TID_GET(i32 %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.hfi1_pkt_header*, %struct.hfi1_pkt_header** %7, align 8
  %71 = getelementptr inbounds %struct.hfi1_pkt_header, %struct.hfi1_pkt_header* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @OFFSET, align 4
  %76 = call i32 @KDETH_GET(i32 %74, i32 %75)
  %77 = load %struct.user_sdma_request*, %struct.user_sdma_request** %6, align 8
  %78 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @OM, align 4
  %83 = call i32 @KDETH_GET(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %50
  %86 = load i32, i32* @KDETH_OM_LARGE, align 4
  br label %89

87:                                               ; preds = %50
  %88 = load i32, i32* @KDETH_OM_SMALL, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = mul nsw i32 %76, %90
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @TIDCTRL, align 4
  %100 = call i32 @KDETH_GET(i32 %98, i32 %99)
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @TID, align 4
  %106 = call i32 @KDETH_GET(i32 %104, i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103, %97, %89
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %114

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %42
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %109, %39
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @get_lrh_len(i32, i32) #1

declare dso_local i64 @req_opcode(i32) #1

declare dso_local i32 @EXP_TID_GET(i32, i32) #1

declare dso_local i32 @KDETH_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
