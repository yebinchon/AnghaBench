; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_sidr_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_sidr_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_sidr_req_msg = type { i32, i32, i32, i32, i32 }
%struct.cm_id_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_cm_sidr_req_param = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CM_SIDR_REQ_ATTR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_sidr_req_msg*, %struct.cm_id_private*, %struct.ib_cm_sidr_req_param*)* @cm_format_sidr_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_sidr_req(%struct.cm_sidr_req_msg* %0, %struct.cm_id_private* %1, %struct.ib_cm_sidr_req_param* %2) #0 {
  %4 = alloca %struct.cm_sidr_req_msg*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_sidr_req_param*, align 8
  store %struct.cm_sidr_req_msg* %0, %struct.cm_sidr_req_msg** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  store %struct.ib_cm_sidr_req_param* %2, %struct.ib_cm_sidr_req_param** %6, align 8
  %7 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %4, align 8
  %8 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %7, i32 0, i32 4
  %9 = load i32, i32* @CM_SIDR_REQ_ATTR_ID, align 4
  %10 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %11 = call i32 @cm_form_tid(%struct.cm_id_private* %10)
  %12 = call i32 @cm_format_mad_hdr(i32* %8, i32 %9, i32 %11)
  %13 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %14 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %4, align 8
  %18 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %20 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %4, align 8
  %25 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %27 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %4, align 8
  %30 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %32 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %3
  %36 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %37 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %4, align 8
  %42 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %45 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %48 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @memcpy(i32 %43, i64 %46, i64 %49)
  br label %51

51:                                               ; preds = %40, %35, %3
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_form_tid(%struct.cm_id_private*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
