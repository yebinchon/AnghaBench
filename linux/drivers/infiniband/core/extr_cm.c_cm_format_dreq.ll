; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_dreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_dreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_dreq_msg = type { i32, i32, i32, i32 }
%struct.cm_id_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CM_DREQ_ATTR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_dreq_msg*, %struct.cm_id_private*, i8*, i64)* @cm_format_dreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_dreq(%struct.cm_dreq_msg* %0, %struct.cm_id_private* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.cm_dreq_msg*, align 8
  %6 = alloca %struct.cm_id_private*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.cm_dreq_msg* %0, %struct.cm_dreq_msg** %5, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %10 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %9, i32 0, i32 3
  %11 = load i32, i32* @CM_DREQ_ATTR_ID, align 4
  %12 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %13 = call i32 @cm_form_tid(%struct.cm_id_private* %12)
  %14 = call i32 @cm_format_mad_hdr(i32* %10, i32 %11, i32 %13)
  %15 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %16 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %20 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %22 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %26 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %28 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %29 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cm_dreq_set_remote_qpn(%struct.cm_dreq_msg* %27, i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %39 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @memcpy(i32 %40, i8* %41, i64 %42)
  br label %44

44:                                               ; preds = %37, %34, %4
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_form_tid(%struct.cm_id_private*) #1

declare dso_local i32 @cm_dreq_set_remote_qpn(%struct.cm_dreq_msg*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
