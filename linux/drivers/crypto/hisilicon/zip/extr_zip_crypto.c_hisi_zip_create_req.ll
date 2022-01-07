; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_create_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_create_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_req = type { i32, i64, i64, %struct.scatterlist*, %struct.scatterlist*, %struct.acomp_req* }
%struct.scatterlist = type { i32 }
%struct.acomp_req = type { i64, i64, %struct.scatterlist*, %struct.scatterlist* }
%struct.hisi_zip_qp_ctx = type { %struct.TYPE_6__*, %struct.hisi_zip_req_q }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hisi_zip_req_q = type { i32, i32, i32, %struct.hisi_zip_req* }

@.str = private unnamed_addr constant [20 x i8] c"req cache is full!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hisi_zip_req* (%struct.acomp_req*, %struct.hisi_zip_qp_ctx*, i64, i32)* @hisi_zip_create_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hisi_zip_req* @hisi_zip_create_req(%struct.acomp_req* %0, %struct.hisi_zip_qp_ctx* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hisi_zip_req*, align 8
  %6 = alloca %struct.acomp_req*, align 8
  %7 = alloca %struct.hisi_zip_qp_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hisi_zip_req_q*, align 8
  %11 = alloca %struct.hisi_zip_req*, align 8
  %12 = alloca %struct.hisi_zip_req*, align 8
  %13 = alloca [2 x %struct.scatterlist*], align 16
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.acomp_req* %0, %struct.acomp_req** %6, align 8
  store %struct.hisi_zip_qp_ctx* %1, %struct.hisi_zip_qp_ctx** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %18, i32 0, i32 1
  store %struct.hisi_zip_req_q* %19, %struct.hisi_zip_req_q** %10, align 8
  %20 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %10, align 8
  %21 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %20, i32 0, i32 3
  %22 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %21, align 8
  store %struct.hisi_zip_req* %22, %struct.hisi_zip_req** %11, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %27 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %26, i32 0, i32 2
  %28 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  store %struct.scatterlist* %28, %struct.scatterlist** %14, align 8
  %29 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %30 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %31, %32
  store i64 %33, i64* %15, align 8
  br label %43

34:                                               ; preds = %4
  %35 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %36 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %35, i32 0, i32 3
  %37 = load %struct.scatterlist*, %struct.scatterlist** %36, align 8
  store %struct.scatterlist* %37, %struct.scatterlist** %14, align 8
  %38 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %39 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %40, %41
  store i64 %42, i64* %15, align 8
  br label %43

43:                                               ; preds = %34, %25
  %44 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %13, i64 0, i64 0
  %48 = call i32 @get_sg_skip_bytes(%struct.scatterlist* %44, i64 %45, i64 %46, %struct.scatterlist** %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %16, align 4
  %53 = call %struct.hisi_zip_req* @ERR_PTR(i32 %52)
  store %struct.hisi_zip_req* %53, %struct.hisi_zip_req** %5, align 8
  br label %159

54:                                               ; preds = %43
  %55 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %13, i64 0, i64 0
  %56 = load %struct.scatterlist*, %struct.scatterlist** %55, align 16
  %57 = call i32 @kfree(%struct.scatterlist* %56)
  %58 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %10, align 8
  %59 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %58, i32 0, i32 1
  %60 = call i32 @write_lock(i32* %59)
  %61 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %10, align 8
  %62 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %10, align 8
  %65 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @find_first_zero_bit(i32 %63, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %10, align 8
  %70 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %54
  %74 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %10, align 8
  %75 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %74, i32 0, i32 1
  %76 = call i32 @write_unlock(i32* %75)
  %77 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %7, align 8
  %78 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @dev_dbg(i32* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %86 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %13, i64 0, i64 1
  %87 = load %struct.scatterlist*, %struct.scatterlist** %86, align 8
  %88 = call i32 @kfree(%struct.scatterlist* %87)
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.hisi_zip_req* @ERR_PTR(i32 %90)
  store %struct.hisi_zip_req* %91, %struct.hisi_zip_req** %5, align 8
  br label %159

92:                                               ; preds = %54
  %93 = load i32, i32* %17, align 4
  %94 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %10, align 8
  %95 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @set_bit(i32 %93, i32 %96)
  %98 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %11, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %98, i64 %100
  store %struct.hisi_zip_req* %101, %struct.hisi_zip_req** %12, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  %104 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %106 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  %107 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %106, i32 0, i32 5
  store %struct.acomp_req* %105, %struct.acomp_req** %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %92
  %111 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %112 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %111, i32 0, i32 3
  %113 = load %struct.scatterlist*, %struct.scatterlist** %112, align 8
  %114 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  %115 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %114, i32 0, i32 4
  store %struct.scatterlist* %113, %struct.scatterlist** %115, align 8
  %116 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %13, i64 0, i64 1
  %117 = load %struct.scatterlist*, %struct.scatterlist** %116, align 8
  %118 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  %119 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %118, i32 0, i32 3
  store %struct.scatterlist* %117, %struct.scatterlist** %119, align 8
  %120 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %121 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  %124 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %126 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = sub i64 %127, %128
  %130 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  %131 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  br label %154

132:                                              ; preds = %92
  %133 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %13, i64 0, i64 1
  %134 = load %struct.scatterlist*, %struct.scatterlist** %133, align 8
  %135 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  %136 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %135, i32 0, i32 4
  store %struct.scatterlist* %134, %struct.scatterlist** %136, align 8
  %137 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %138 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %137, i32 0, i32 2
  %139 = load %struct.scatterlist*, %struct.scatterlist** %138, align 8
  %140 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  %141 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %140, i32 0, i32 3
  store %struct.scatterlist* %139, %struct.scatterlist** %141, align 8
  %142 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %143 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %8, align 8
  %146 = sub i64 %144, %145
  %147 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  %148 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.acomp_req*, %struct.acomp_req** %6, align 8
  %150 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  %153 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %132, %110
  %155 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %10, align 8
  %156 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %155, i32 0, i32 1
  %157 = call i32 @write_unlock(i32* %156)
  %158 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %12, align 8
  store %struct.hisi_zip_req* %158, %struct.hisi_zip_req** %5, align 8
  br label %159

159:                                              ; preds = %154, %73, %51
  %160 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %5, align 8
  ret %struct.hisi_zip_req* %160
}

declare dso_local i32 @get_sg_skip_bytes(%struct.scatterlist*, i64, i64, %struct.scatterlist**) #1

declare dso_local %struct.hisi_zip_req* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
