; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_report_bare_ps2_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_report_bare_ps2_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.input_dev*, %struct.alps_data* }
%struct.input_dev = type { i32 }
%struct.alps_data = type { i64, i32, %struct.input_dev*, i32, %struct.input_dev* }

@ALPS_PROTO_V2 = common dso_local global i64 0, align 8
@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i8*, i32)* @alps_report_bare_ps2_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_report_bare_ps2_packet(%struct.psmouse* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alps_data*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.input_dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 1
  %12 = load %struct.alps_data*, %struct.alps_data** %11, align 8
  store %struct.alps_data* %12, %struct.alps_data** %7, align 8
  store %struct.input_dev* null, %struct.input_dev** %9, align 8
  %13 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %14 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ALPS_PROTO_V2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %20 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ALPS_DUALPOINT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %27 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %26, i32 0, i32 4
  %28 = load %struct.input_dev*, %struct.input_dev** %27, align 8
  store %struct.input_dev* %28, %struct.input_dev** %8, align 8
  %29 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %30 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %29, i32 0, i32 0
  %31 = load %struct.input_dev*, %struct.input_dev** %30, align 8
  store %struct.input_dev* %31, %struct.input_dev** %9, align 8
  br label %56

32:                                               ; preds = %18, %3
  %33 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %34 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %33, i32 0, i32 2
  %35 = load %struct.input_dev*, %struct.input_dev** %34, align 8
  %36 = call i32 @IS_ERR_OR_NULL(%struct.input_dev* %35)
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %41 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %40, i32 0, i32 2
  %42 = load %struct.input_dev*, %struct.input_dev** %41, align 8
  %43 = call i32 @IS_ERR(%struct.input_dev* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %47 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %48 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %47, i32 0, i32 3
  %49 = call i32 @psmouse_queue_work(%struct.psmouse* %46, i32* %48, i32 0)
  br label %50

50:                                               ; preds = %45, %39
  br label %87

51:                                               ; preds = %32
  %52 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %53 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %52, i32 0, i32 2
  %54 = load %struct.input_dev*, %struct.input_dev** %53, align 8
  store %struct.input_dev* %54, %struct.input_dev** %8, align 8
  br label %55

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %61 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 1
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 2
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = call i32 @alps_report_buttons(%struct.input_dev* %60, %struct.input_dev* %61, i8 zeroext %67, i8 zeroext %73, i8 zeroext %79)
  br label %81

81:                                               ; preds = %59, %56
  %82 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @psmouse_report_standard_motion(%struct.input_dev* %82, i8* %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %86 = call i32 @input_sync(%struct.input_dev* %85)
  br label %87

87:                                               ; preds = %81, %50
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.input_dev*) #1

declare dso_local i32 @IS_ERR(%struct.input_dev*) #1

declare dso_local i32 @psmouse_queue_work(%struct.psmouse*, i32*, i32) #1

declare dso_local i32 @alps_report_buttons(%struct.input_dev*, %struct.input_dev*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @psmouse_report_standard_motion(%struct.input_dev*, i8*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
