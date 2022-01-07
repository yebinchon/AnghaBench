; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_validate_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_validate_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i8*, %struct.cytp_data* }
%struct.cytp_data = type { i32, i32 }

@PSMOUSE_BAD_DATA = common dso_local global i32 0, align 4
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@CYTP_BIT_ABS_REL_MASK = common dso_local global i32 0, align 4
@CYTP_BIT_ABS_NO_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @cypress_validate_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_validate_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cytp_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 2
  %17 = load %struct.cytp_data*, %struct.cytp_data** %16, align 8
  store %struct.cytp_data* %17, %struct.cytp_data** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cytp_data*, %struct.cytp_data** %7, align 8
  %23 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %1
  %27 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %27, i32* %2, align 4
  br label %92

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 252
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %40 = call i32 @cypress_process_packet(%struct.psmouse* %39, i32 1)
  %41 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %41, i32* %2, align 4
  br label %92

42:                                               ; preds = %31, %28
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %46, i32* %2, align 4
  br label %92

47:                                               ; preds = %42
  %48 = load %struct.cytp_data*, %struct.cytp_data** %7, align 8
  %49 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CYTP_BIT_ABS_REL_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %55, i32* %2, align 4
  br label %92

56:                                               ; preds = %47
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %64, i32* %2, align 4
  br label %92

65:                                               ; preds = %56
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @cypress_get_finger_count(i8 zeroext %68)
  store i32 %69, i32* %4, align 4
  %70 = load %struct.cytp_data*, %struct.cytp_data** %7, align 8
  %71 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CYTP_BIT_ABS_NO_PRESSURE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 7, i32 4
  %82 = call i32 @cypress_set_packet_size(%struct.psmouse* %77, i32 %81)
  br label %90

83:                                               ; preds = %65
  %84 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 8, i32 5
  %89 = call i32 @cypress_set_packet_size(%struct.psmouse* %84, i32 %88)
  br label %90

90:                                               ; preds = %83, %76
  %91 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %63, %54, %45, %38, %26
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @cypress_process_packet(%struct.psmouse*, i32) #1

declare dso_local i32 @cypress_get_finger_count(i8 zeroext) #1

declare dso_local i32 @cypress_set_packet_size(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
