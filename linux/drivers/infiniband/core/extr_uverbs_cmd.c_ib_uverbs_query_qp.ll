; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_query_qp = type { i32, i32 }
%struct.ib_uverbs_query_qp_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i64, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { i64, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVERBS_OBJECT_QP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_query_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_query_qp(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_query_qp, align 4
  %5 = alloca %struct.ib_uverbs_query_qp_resp, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %10 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %11 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %10, %struct.ib_uverbs_query_qp* %4, i32 8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %2, align 4
  br label %190

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ib_qp_init_attr* @kmalloc(i32 120, i32 %17)
  %19 = bitcast %struct.ib_qp_init_attr* %18 to %struct.ib_qp_attr*
  store %struct.ib_qp_attr* %19, %struct.ib_qp_attr** %7, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ib_qp_init_attr* @kmalloc(i32 120, i32 %20)
  store %struct.ib_qp_init_attr* %21, %struct.ib_qp_init_attr** %8, align 8
  %22 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %23 = icmp ne %struct.ib_qp_attr* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %26 = icmp ne %struct.ib_qp_init_attr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %16
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %183

30:                                               ; preds = %24
  %31 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %32 = load i32, i32* @UVERBS_OBJECT_QP, align 4
  %33 = getelementptr inbounds %struct.ib_uverbs_query_qp, %struct.ib_uverbs_query_qp* %4, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %36 = call %struct.ib_qp* @uobj_get_obj_read(%struct.ib_qp* %31, i32 %32, i32 %34, %struct.uverbs_attr_bundle* %35)
  store %struct.ib_qp* %36, %struct.ib_qp** %6, align 8
  %37 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %38 = icmp ne %struct.ib_qp* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %183

42:                                               ; preds = %30
  %43 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %44 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %45 = bitcast %struct.ib_qp_attr* %44 to %struct.ib_qp_init_attr*
  %46 = getelementptr inbounds %struct.ib_uverbs_query_qp, %struct.ib_uverbs_query_qp* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %49 = call i32 @ib_query_qp(%struct.ib_qp* %43, %struct.ib_qp_init_attr* %45, i32 %47, %struct.ib_qp_init_attr* %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %51 = call i32 @uobj_put_obj_read(%struct.ib_qp* %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %183

55:                                               ; preds = %42
  %56 = call i32 @memset(%struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 116)
  %57 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %58 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %57, i32 0, i32 24
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 28
  store i32 %59, i32* %60, align 4
  %61 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %62 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %61, i32 0, i32 23
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 27
  store i32 %63, i32* %64, align 4
  %65 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %66 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %65, i32 0, i32 22
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 26
  store i32 %67, i32* %68, align 4
  %69 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %70 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %69, i32 0, i32 21
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 25
  store i32 %71, i32* %72, align 4
  %73 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %74 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %73, i32 0, i32 20
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 24
  store i32 %75, i32* %76, align 4
  %77 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %78 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %77, i32 0, i32 19
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 23
  store i32 %79, i32* %80, align 4
  %81 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %82 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %81, i32 0, i32 18
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 22
  store i32 %83, i32* %84, align 4
  %85 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %86 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %85, i32 0, i32 17
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 21
  store i32 %87, i32* %88, align 4
  %89 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %90 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %89, i32 0, i32 16
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 20
  store i32 %91, i32* %92, align 4
  %93 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %94 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %93, i32 0, i32 15
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 19
  store i32 %95, i32* %96, align 4
  %97 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %98 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %97, i32 0, i32 14
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 18
  store i32 %99, i32* %100, align 4
  %101 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %102 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %101, i32 0, i32 13
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 17
  store i32 %103, i32* %104, align 4
  %105 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %106 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 16
  store i32 %107, i32* %108, align 4
  %109 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %110 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 15
  store i32 %111, i32* %112, align 4
  %113 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %114 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 14
  store i32 %115, i32* %116, align 4
  %117 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %118 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 13
  store i32 %119, i32* %120, align 4
  %121 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %122 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 12
  store i32 %123, i32* %124, align 4
  %125 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %126 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 11
  store i32 %127, i32* %128, align 4
  %129 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %130 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 10
  store i32 %131, i32* %132, align 4
  %133 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %134 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 9
  store i32 %135, i32* %136, align 4
  %137 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %138 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 8
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 7
  %142 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %143 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %142, i32 0, i32 3
  %144 = call i32 @copy_ah_attr_to_uverbs(i32* %141, i32* %143)
  %145 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 6
  %146 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %147 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %146, i32 0, i32 2
  %148 = call i32 @copy_ah_attr_to_uverbs(i32* %145, i32* %147)
  %149 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %150 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 5
  store i32 %152, i32* %153, align 4
  %154 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %155 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 4
  store i32 %157, i32* %158, align 4
  %159 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %160 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 3
  store i32 %162, i32* %163, align 4
  %164 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %165 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 2
  store i32 %167, i32* %168, align 4
  %169 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %170 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 1
  store i32 %172, i32* %173, align 4
  %174 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %175 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %178 = icmp eq i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, %struct.ib_uverbs_query_qp_resp* %5, i32 0, i32 0
  store i32 %179, i32* %180, align 4
  %181 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %182 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %181, %struct.ib_uverbs_query_qp_resp* %5, i32 116)
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %55, %54, %39, %27
  %184 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %185 = bitcast %struct.ib_qp_attr* %184 to %struct.ib_qp_init_attr*
  %186 = call i32 @kfree(%struct.ib_qp_init_attr* %185)
  %187 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %188 = call i32 @kfree(%struct.ib_qp_init_attr* %187)
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %183, %14
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_query_qp*, i32) #1

declare dso_local %struct.ib_qp_init_attr* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_qp* @uobj_get_obj_read(%struct.ib_qp*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @ib_query_qp(%struct.ib_qp*, %struct.ib_qp_init_attr*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @uobj_put_obj_read(%struct.ib_qp*) #1

declare dso_local i32 @memset(%struct.ib_uverbs_query_qp_resp*, i32, i32) #1

declare dso_local i32 @copy_ah_attr_to_uverbs(i32*, i32*) #1

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_query_qp_resp*, i32) #1

declare dso_local i32 @kfree(%struct.ib_qp_init_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
