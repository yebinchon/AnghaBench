; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_packet_check_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_packet_check_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.elantech_data* }
%struct.elantech_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @elantech_packet_check_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_packet_check_v2(%struct.psmouse* %0) #0 {
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
  %12 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %13 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 12
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 2
  br label %31

31:                                               ; preds = %24, %17
  %32 = phi i1 [ false, %17 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %89

34:                                               ; preds = %1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 192
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 12
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 14
  %54 = icmp eq i32 %53, 8
  br label %55

55:                                               ; preds = %48, %41
  %56 = phi i1 [ false, %41 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %2, align 4
  br label %89

58:                                               ; preds = %34
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 60
  %64 = icmp eq i32 %63, 60
  br i1 %64, label %65, label %86

65:                                               ; preds = %58
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 240
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 62
  %78 = icmp eq i32 %77, 56
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 240
  %85 = icmp eq i32 %84, 0
  br label %86

86:                                               ; preds = %79, %72, %65, %58
  %87 = phi i1 [ false, %72 ], [ false, %65 ], [ false, %58 ], [ %85, %79 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %55, %31
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
