; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_packet_check_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_packet_check_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.elantech_data* }
%struct.elantech_data = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @elantech_packet_check_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_packet_check_v1(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.elantech_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.elantech_data*, %struct.elantech_data** %9, align 8
  store %struct.elantech_data* %10, %struct.elantech_data** %3, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %15 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 131072
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 32
  %25 = ashr i32 %24, 5
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %5, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 16
  %32 = ashr i32 %31, 4
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %6, align 1
  br label %49

34:                                               ; preds = %1
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 16
  %40 = ashr i32 %39, 4
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %5, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 32
  %47 = ashr i32 %46, 5
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %6, align 1
  br label %49

49:                                               ; preds = %34, %19
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 4
  %55 = ashr i32 %54, 2
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  %57 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %58 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* %5, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %49
  %71 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %72 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %6, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %70
  %85 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %86 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 3
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* %7, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %94, %96
  br label %98

98:                                               ; preds = %84, %70, %49
  %99 = phi i1 [ false, %70 ], [ false, %49 ], [ %97, %84 ]
  %100 = zext i1 %99 to i32
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
