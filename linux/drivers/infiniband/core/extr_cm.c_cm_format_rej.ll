; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_rej.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_rej_msg = type { i32, i32, i32, i32, i32, i32 }
%struct.cm_id_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CM_REJ_ATTR_ID = common dso_local global i32 0, align 4
@CM_MSG_RESPONSE_REQ = common dso_local global i32 0, align 4
@CM_MSG_RESPONSE_REP = common dso_local global i32 0, align 4
@CM_MSG_RESPONSE_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_rej_msg*, %struct.cm_id_private*, i32, i8*, i64, i8*, i64)* @cm_format_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_rej(%struct.cm_rej_msg* %0, %struct.cm_id_private* %1, i32 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.cm_rej_msg*, align 8
  %9 = alloca %struct.cm_id_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.cm_rej_msg* %0, %struct.cm_rej_msg** %8, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %16 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %15, i32 0, i32 5
  %17 = load i32, i32* @CM_REJ_ATTR_ID, align 4
  %18 = load %struct.cm_id_private*, %struct.cm_id_private** %9, align 8
  %19 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cm_format_mad_hdr(i32* %16, i32 %17, i32 %20)
  %22 = load %struct.cm_id_private*, %struct.cm_id_private** %9, align 8
  %23 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %27 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cm_id_private*, %struct.cm_id_private** %9, align 8
  %29 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %58 [
    i32 128, label %32
    i32 130, label %38
    i32 129, label %48
    i32 131, label %48
  ]

32:                                               ; preds = %7
  %33 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %34 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %33, i32 0, i32 3
  store i32 0, i32* %34, align 4
  %35 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %36 = load i32, i32* @CM_MSG_RESPONSE_REQ, align 4
  %37 = call i32 @cm_rej_set_msg_rejected(%struct.cm_rej_msg* %35, i32 %36)
  br label %68

38:                                               ; preds = %7
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %9, align 8
  %40 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %44 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %46 = load i32, i32* @CM_MSG_RESPONSE_REQ, align 4
  %47 = call i32 @cm_rej_set_msg_rejected(%struct.cm_rej_msg* %45, i32 %46)
  br label %68

48:                                               ; preds = %7, %7
  %49 = load %struct.cm_id_private*, %struct.cm_id_private** %9, align 8
  %50 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %54 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %56 = load i32, i32* @CM_MSG_RESPONSE_REP, align 4
  %57 = call i32 @cm_rej_set_msg_rejected(%struct.cm_rej_msg* %55, i32 %56)
  br label %68

58:                                               ; preds = %7
  %59 = load %struct.cm_id_private*, %struct.cm_id_private** %9, align 8
  %60 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %64 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %66 = load i32, i32* @CM_MSG_RESPONSE_OTHER, align 4
  %67 = call i32 @cm_rej_set_msg_rejected(%struct.cm_rej_msg* %65, i32 %66)
  br label %68

68:                                               ; preds = %58, %48, %38, %32
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @cpu_to_be16(i32 %69)
  %71 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %72 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @cm_rej_set_reject_info_len(%struct.cm_rej_msg* %79, i64 %80)
  %82 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %83 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @memcpy(i32 %84, i8* %85, i64 %86)
  br label %88

88:                                               ; preds = %78, %75, %68
  %89 = load i8*, i8** %13, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i64, i64* %14, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.cm_rej_msg*, %struct.cm_rej_msg** %8, align 8
  %96 = getelementptr inbounds %struct.cm_rej_msg, %struct.cm_rej_msg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %13, align 8
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @memcpy(i32 %97, i8* %98, i64 %99)
  br label %101

101:                                              ; preds = %94, %91, %88
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_rej_set_msg_rejected(%struct.cm_rej_msg*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cm_rej_set_reject_info_len(%struct.cm_rej_msg*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
