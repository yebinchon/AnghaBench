; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i32 }
%struct.ib_qp_init_attr = type { i32, i32, i32, %struct.TYPE_9__, i64, i32, i32, i32, i32 }
%struct.rvt_qp = type { i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.rvt_dev_info = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 (i32)* }

@RVT_S_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.rvt_qp*, align 8
  %10 = alloca %struct.rvt_dev_info*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %11 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %12 = call %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp* %11)
  store %struct.rvt_qp* %12, %struct.rvt_qp** %9, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %14 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %15)
  store %struct.rvt_dev_info* %16, %struct.rvt_dev_info** %10, align 8
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %18 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %17, i32 0, i32 25
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %21 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %20, i32 0, i32 23
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %23 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %22, i32 0, i32 23
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %26 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %25, i32 0, i32 24
  store i32 %24, i32* %26, align 8
  %27 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %28 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %32 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %31, i32 0, i32 24
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %30(i32 %33)
  %35 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %36 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %35, i32 0, i32 22
  store i32 %34, i32* %36, align 8
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 23
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %41 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %40, i32 0, i32 21
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %43 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %42, i32 0, i32 22
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %45, i32 0, i32 20
  store i32 %44, i32* %46, align 8
  %47 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %48 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %51 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %49, %53
  %55 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %58 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %61 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %59, %63
  %65 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %66 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %68 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %67, i32 0, i32 21
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %71 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %70, i32 0, i32 19
  store i32 %69, i32* %71, align 4
  %72 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %73 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %72, i32 0, i32 20
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %75, i32 0, i32 18
  store i32 %74, i32* %76, align 8
  %77 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %78 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %82 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %80, %84
  %86 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %87 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %90 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %4
  br label %101

95:                                               ; preds = %4
  %96 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %97 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %96, i32 0, i32 18
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 1
  br label %101

101:                                              ; preds = %95, %94
  %102 = phi i32 [ 0, %94 ], [ %100, %95 ]
  %103 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %107 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %106, i32 0, i32 19
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 4
  %112 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %113 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %112, i32 0, i32 18
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %117 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 8
  %119 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %120 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %123 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %122, i32 0, i32 17
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %125, i32 0, i32 17
  store i32 %124, i32* %126, align 4
  %127 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %128 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %131 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %130, i32 0, i32 16
  store i32 %129, i32* %131, align 8
  %132 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %133 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %132, i32 0, i32 16
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %136 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %135, i32 0, i32 15
  store i32 %134, i32* %136, align 4
  %137 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %138 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %137, i32 0, i32 15
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %141 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %140, i32 0, i32 14
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %143 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %142, i32 0, i32 13
  store i64 0, i64* %143, align 8
  %144 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %145 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %144, i32 0, i32 14
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %148 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %147, i32 0, i32 12
  store i32 %146, i32* %148, align 4
  %149 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %150 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %149, i32 0, i32 13
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %153 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %152, i32 0, i32 11
  store i32 %151, i32* %153, align 8
  %154 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %155 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %154, i32 0, i32 12
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %158 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %157, i32 0, i32 10
  store i32 %156, i32* %158, align 4
  %159 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %160 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %159, i32 0, i32 11
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %163 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 8
  %164 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %165 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %168 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %167, i32 0, i32 8
  store i32 %166, i32* %168, align 4
  %169 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %170 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %173 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %172, i32 0, i32 7
  store i32 %171, i32* %173, align 8
  %174 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %175 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 4
  %179 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %180 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %183 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 8
  %184 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %185 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %184, i32 0, i32 7
  %186 = call i32 @rdma_ah_get_port_num(i32* %185)
  %187 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %188 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 4
  %189 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %190 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %193 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 8
  %194 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %195 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %199 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %198, i32 0, i32 8
  store i32 %197, i32* %199, align 4
  %200 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %201 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %205 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %204, i32 0, i32 7
  store i32 %203, i32* %205, align 8
  %206 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %207 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %211 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %210, i32 0, i32 6
  store i32 %209, i32* %211, align 4
  %212 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %213 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %217 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %216, i32 0, i32 5
  store i32 %215, i32* %217, align 8
  %218 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %219 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %223 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %222, i32 0, i32 4
  store i64 %221, i64* %223, align 8
  %224 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %225 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %224, i32 0, i32 3
  %226 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %227 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %226, i32 0, i32 2
  %228 = bitcast %struct.TYPE_9__* %225 to i8*
  %229 = bitcast %struct.TYPE_9__* %227 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %228, i8* align 8 %229, i64 24, i1 false)
  %230 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %231 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @RVT_S_SIGNAL_REQ_WR, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %101
  %237 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %238 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %239 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 8
  br label %244

240:                                              ; preds = %101
  %241 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  %242 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %243 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %240, %236
  %245 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %246 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %250 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  %251 = load %struct.rvt_qp*, %struct.rvt_qp** %9, align 8
  %252 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %255 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  ret i32 0
}

declare dso_local %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp*) #1

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @rdma_ah_get_port_num(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
