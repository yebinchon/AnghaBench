; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_sort_tsg_pip_app_resp_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_sort_tsg_pip_app_resp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { i64 }

@PIP_MIN_APP_RESP_LENGTH = common dso_local global i32 0, align 4
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_APP_RESP_REPORT_ID = common dso_local global i64 0, align 8
@PIP_RESP_RSVD_OFFSET = common dso_local global i64 0, align 8
@PIP_RESP_RSVD_KEY = common dso_local global i64 0, align 8
@PIP_RESP_LENGTH_OFFSET = common dso_local global i64 0, align 8
@PIP_RESP_APP_CMD_OFFSET = common dso_local global i64 0, align 8
@PIP_UNSUPPORTED_CMD_RESP_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_sort_tsg_pip_app_resp_data(%struct.cyapa* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cyapa_pip_cmd_states*, align 8
  %9 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %11 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.cyapa_pip_cmd_states* %12, %struct.cyapa_pip_cmd_states** %8, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PIP_MIN_APP_RESP_LENGTH, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %73

20:                                               ; preds = %15
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PIP_APP_RESP_REPORT_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %20
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* @PIP_RESP_RSVD_OFFSET, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PIP_RESP_RSVD_KEY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %27
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* @PIP_RESP_LENGTH_OFFSET, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = call i32 @get_unaligned_le16(i64* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* @PIP_RESP_APP_CMD_OFFSET, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @GET_PIP_CMD_CODE(i64 %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @PIP_UNSUPPORTED_CMD_RESP_LENGTH, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 5
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %8, align 8
  %54 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %73

58:                                               ; preds = %49, %45, %34
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* @PIP_RESP_APP_CMD_OFFSET, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @GET_PIP_CMD_CODE(i64 %62)
  %64 = sext i32 %63 to i64
  %65 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %8, align 8
  %66 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %73

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %27, %20
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %69, %57, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @get_unaligned_le16(i64*) #1

declare dso_local i32 @GET_PIP_CMD_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
