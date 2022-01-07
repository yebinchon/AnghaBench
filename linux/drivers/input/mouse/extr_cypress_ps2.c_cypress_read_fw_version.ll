; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_read_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_read_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.cytp_data* }
%struct.cytp_data = type { i8, i32 }

@CYTP_CMD_READ_CYPRESS_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FW_VERSION_MASX = common dso_local global i8 0, align 1
@TP_METRICS_MASK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [23 x i8] c"cytp->fw_version = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cytp->tp_metrics_supported = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @cypress_read_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_read_fw_version(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.cytp_data*, align 8
  %5 = alloca [3 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 0
  %8 = load %struct.cytp_data*, %struct.cytp_data** %7, align 8
  store %struct.cytp_data* %8, %struct.cytp_data** %4, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = load i32, i32* @CYTP_CMD_READ_CYPRESS_ID, align 4
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %12 = call i64 @cypress_send_ext_cmd(%struct.psmouse* %9, i32 %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 51
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 204
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %71

30:                                               ; preds = %22
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @FW_VERSION_MASX, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = trunc i32 %36 to i8
  %38 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %39 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 4
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @TP_METRICS_MASK, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %50 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %52 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 4
  %54 = zext i8 %53 to i32
  %55 = icmp sge i32 %54, 11
  br i1 %55, label %56, label %59

56:                                               ; preds = %30
  %57 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %58 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %30
  %60 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %61 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %62 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 4
  %64 = zext i8 %63 to i32
  %65 = call i32 @psmouse_dbg(%struct.psmouse* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %67 = load %struct.cytp_data*, %struct.cytp_data** %4, align 8
  %68 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @psmouse_dbg(%struct.psmouse* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %59, %27, %14
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @cypress_send_ext_cmd(%struct.psmouse*, i32, i8*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
