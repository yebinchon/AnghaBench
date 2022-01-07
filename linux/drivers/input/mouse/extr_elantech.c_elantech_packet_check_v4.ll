; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_packet_check_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_packet_check_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.elantech_data* }
%struct.elantech_data = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@PACKET_TRACKPOINT = common dso_local global i32 0, align 4
@PACKET_UNKNOWN = common dso_local global i32 0, align 4
@PACKET_V4_STATUS = common dso_local global i32 0, align 4
@PACKET_V4_HEAD = common dso_local global i32 0, align 4
@PACKET_V4_MOTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @elantech_packet_check_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_packet_check_v4(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.elantech_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 1
  %11 = load %struct.elantech_data*, %struct.elantech_data** %10, align 8
  store %struct.elantech_data* %11, %struct.elantech_data** %4, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 3
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 3
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1
  %21 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %22 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 15
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @PACKET_TRACKPOINT, align 4
  store i32 %33, i32* %2, align 4
  br label %107

34:                                               ; preds = %25, %1
  %35 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %36 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 983040
  %40 = ashr i32 %39, 16
  store i32 %40, i32* %7, align 4
  %41 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %42 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %8, align 4
  br label %91

54:                                               ; preds = %34
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 7
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %59 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 42
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 28
  %71 = icmp eq i32 %70, 16
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %8, align 4
  br label %90

73:                                               ; preds = %57, %54
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 28
  %86 = icmp eq i32 %85, 16
  br label %87

87:                                               ; preds = %80, %73
  %88 = phi i1 [ false, %73 ], [ %86, %80 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %65
  br label %91

91:                                               ; preds = %90, %46
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @PACKET_UNKNOWN, align 4
  store i32 %95, i32* %2, align 4
  br label %107

96:                                               ; preds = %91
  %97 = load i8, i8* %6, align 1
  %98 = zext i8 %97 to i32
  switch i32 %98, label %105 [
    i32 0, label %99
    i32 1, label %101
    i32 2, label %103
  ]

99:                                               ; preds = %96
  %100 = load i32, i32* @PACKET_V4_STATUS, align 4
  store i32 %100, i32* %2, align 4
  br label %107

101:                                              ; preds = %96
  %102 = load i32, i32* @PACKET_V4_HEAD, align 4
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @PACKET_V4_MOTION, align 4
  store i32 %104, i32* %2, align 4
  br label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @PACKET_UNKNOWN, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %103, %101, %99, %94, %32
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
