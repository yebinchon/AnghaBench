; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_user_sdma_txadd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_user_sdma_txadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_sdma_request = type { i32, i32, %struct.user_sdma_iovec*, %struct.TYPE_4__, %struct.hfi1_user_sdma_pkt_q* }
%struct.TYPE_4__ = type { i64 }
%struct.hfi1_user_sdma_pkt_q = type { i32 }
%struct.user_sdma_txreq = type { i32 }
%struct.user_sdma_iovec = type { i64, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"SDMA txreq add page failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_sdma_request*, %struct.user_sdma_txreq*, %struct.user_sdma_iovec*, i32, i32*, i32*, i64*)* @user_sdma_txadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_sdma_txadd(%struct.user_sdma_request* %0, %struct.user_sdma_txreq* %1, %struct.user_sdma_iovec* %2, i32 %3, i32* %4, i32* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.user_sdma_request*, align 8
  %10 = alloca %struct.user_sdma_txreq*, align 8
  %11 = alloca %struct.user_sdma_iovec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.hfi1_user_sdma_pkt_q*, align 8
  store %struct.user_sdma_request* %0, %struct.user_sdma_request** %9, align 8
  store %struct.user_sdma_txreq* %1, %struct.user_sdma_txreq** %10, align 8
  store %struct.user_sdma_iovec* %2, %struct.user_sdma_iovec** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  %25 = load i64*, i64** %15, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %21, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %22, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %23, align 4
  %31 = load %struct.user_sdma_request*, %struct.user_sdma_request** %9, align 8
  %32 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %31, i32 0, i32 4
  %33 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %32, align 8
  store %struct.hfi1_user_sdma_pkt_q* %33, %struct.hfi1_user_sdma_pkt_q** %24, align 8
  %34 = load %struct.user_sdma_iovec*, %struct.user_sdma_iovec** %11, align 8
  %35 = getelementptr inbounds %struct.user_sdma_iovec, %struct.user_sdma_iovec* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %19, align 8
  %38 = load i64, i64* %19, align 8
  %39 = load %struct.user_sdma_iovec*, %struct.user_sdma_iovec** %11, align 8
  %40 = getelementptr inbounds %struct.user_sdma_iovec, %struct.user_sdma_iovec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %38, %41
  %43 = load i64, i64* %21, align 8
  %44 = add i64 %42, %43
  %45 = call i64 @offset_in_page(i64 %44)
  store i64 %45, i64* %20, align 8
  %46 = load %struct.user_sdma_iovec*, %struct.user_sdma_iovec** %11, align 8
  %47 = getelementptr inbounds %struct.user_sdma_iovec, %struct.user_sdma_iovec* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %21, align 8
  %50 = add i64 %48, %49
  %51 = load i64, i64* %19, align 8
  %52 = add i64 %50, %51
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* @PAGE_MASK, align 8
  %55 = and i64 %53, %54
  %56 = sub i64 %52, %55
  %57 = load i64, i64* @PAGE_SHIFT, align 8
  %58 = lshr i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %17, align 4
  %60 = load i64, i64* %20, align 8
  %61 = load %struct.user_sdma_request*, %struct.user_sdma_request** %9, align 8
  %62 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %60, %64
  %66 = load i64, i64* @PAGE_SIZE, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %7
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i64, i64* %20, align 8
  %71 = sub i64 %69, %70
  br label %77

72:                                               ; preds = %7
  %73 = load %struct.user_sdma_request*, %struct.user_sdma_request** %9, align 8
  %74 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  br label %77

77:                                               ; preds = %72, %68
  %78 = phi i64 [ %71, %68 ], [ %76, %72 ]
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %22, align 4
  %82 = sub i32 %80, %81
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @min(i32 %82, i32 %83)
  store i32 %84, i32* %18, align 4
  %85 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %24, align 8
  %86 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %10, align 8
  %89 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %88, i32 0, i32 0
  %90 = load %struct.user_sdma_iovec*, %struct.user_sdma_iovec** %11, align 8
  %91 = getelementptr inbounds %struct.user_sdma_iovec, %struct.user_sdma_iovec* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %20, align 8
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @sdma_txadd_page(i32 %87, i32* %89, i32 %96, i64 %97, i32 %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %77
  %103 = load %struct.user_sdma_request*, %struct.user_sdma_request** %9, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @SDMA_DBG(%struct.user_sdma_request* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %8, align 4
  br label %164

107:                                              ; preds = %77
  %108 = load i32, i32* %18, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %21, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %21, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %22, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %22, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %23, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %23, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %107
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.user_sdma_iovec*, %struct.user_sdma_iovec** %11, align 8
  %124 = getelementptr inbounds %struct.user_sdma_iovec, %struct.user_sdma_iovec* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.user_sdma_request*, %struct.user_sdma_request** %9, align 8
  %129 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.user_sdma_request*, %struct.user_sdma_request** %9, align 8
  %132 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1
  %135 = icmp slt i32 %130, %134
  br label %136

136:                                              ; preds = %127, %121, %107
  %137 = phi i1 [ false, %121 ], [ false, %107 ], [ %135, %127 ]
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %136
  %142 = load i64, i64* %21, align 8
  %143 = load %struct.user_sdma_iovec*, %struct.user_sdma_iovec** %11, align 8
  %144 = getelementptr inbounds %struct.user_sdma_iovec, %struct.user_sdma_iovec* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, %142
  store i64 %146, i64* %144, align 8
  %147 = load %struct.user_sdma_request*, %struct.user_sdma_request** %9, align 8
  %148 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %147, i32 0, i32 2
  %149 = load %struct.user_sdma_iovec*, %struct.user_sdma_iovec** %148, align 8
  %150 = load %struct.user_sdma_request*, %struct.user_sdma_request** %9, align 8
  %151 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.user_sdma_iovec, %struct.user_sdma_iovec* %149, i64 %154
  store %struct.user_sdma_iovec* %155, %struct.user_sdma_iovec** %11, align 8
  store i64 0, i64* %21, align 8
  br label %156

156:                                              ; preds = %141, %136
  %157 = load i32, i32* %22, align 4
  %158 = load i32*, i32** %13, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* %23, align 4
  %160 = load i32*, i32** %14, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i64, i64* %21, align 8
  %162 = load i64*, i64** %15, align 8
  store i64 %161, i64* %162, align 8
  %163 = load i32, i32* %16, align 4
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %156, %102
  %165 = load i32, i32* %8, align 4
  ret i32 %165
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sdma_txadd_page(i32, i32*, i32, i64, i32) #1

declare dso_local i32 @SDMA_DBG(%struct.user_sdma_request*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
