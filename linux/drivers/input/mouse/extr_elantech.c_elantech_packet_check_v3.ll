; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_packet_check_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_packet_check_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.elantech_data* }
%struct.elantech_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@elantech_packet_check_v3.debounce_packet = internal constant [6 x i32] [i32 196, i32 255, i32 255, i32 2, i32 255, i32 255], align 16
@PACKET_DEBOUNCE = common dso_local global i32 0, align 4
@PACKET_V3_HEAD = common dso_local global i32 0, align 4
@PACKET_V3_TAIL = common dso_local global i32 0, align 4
@PACKET_TRACKPOINT = common dso_local global i32 0, align 4
@PACKET_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @elantech_packet_check_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_packet_check_v3(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.elantech_data*, align 8
  %5 = alloca i8*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 1
  %8 = load %struct.elantech_data*, %struct.elantech_data** %7, align 8
  store %struct.elantech_data* %8, %struct.elantech_data** %4, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @memcmp(i8* %12, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @elantech_packet_check_v3.debounce_packet, i64 0, i64 0), i32 24)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @PACKET_DEBOUNCE, align 4
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %1
  %18 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %19 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 9
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @PACKET_V3_HEAD, align 4
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 9
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @PACKET_V3_TAIL, align 4
  store i32 %40, i32* %2, align 4
  br label %86

41:                                               ; preds = %32
  br label %84

42:                                               ; preds = %17
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 12
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 207
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @PACKET_V3_HEAD, align 4
  store i32 %57, i32* %2, align 4
  br label %86

58:                                               ; preds = %49, %42
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 12
  %64 = icmp eq i32 %63, 12
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 206
  %71 = icmp eq i32 %70, 12
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @PACKET_V3_TAIL, align 4
  store i32 %73, i32* %2, align 4
  br label %86

74:                                               ; preds = %65, %58
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 15
  %80 = icmp eq i32 %79, 6
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @PACKET_TRACKPOINT, align 4
  store i32 %82, i32* %2, align 4
  br label %86

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %41
  %85 = load i32, i32* @PACKET_UNKNOWN, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %81, %72, %56, %39, %30, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
