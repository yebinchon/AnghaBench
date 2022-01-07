; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-saitek.c_saitek_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-saitek.c_saitek_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.saitek_sc = type { i32, i32 }

@SAITEK_RELEASE_MODE_RAT7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"entered mode %d\0A\00", align 1
@SAITEK_RELEASE_MODE_MMO7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @saitek_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saitek_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.saitek_sc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_report* %1, %struct.hid_report** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %13 = call %struct.saitek_sc* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.saitek_sc* %13, %struct.saitek_sc** %9, align 8
  %14 = load %struct.saitek_sc*, %struct.saitek_sc** %9, align 8
  %15 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SAITEK_RELEASE_MODE_RAT7, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %74

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %74

23:                                               ; preds = %20
  store i32 -1, i32* %10, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %46

30:                                               ; preds = %23
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %45

37:                                               ; preds = %30
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 2, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %36
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -8
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.saitek_sc*, %struct.saitek_sc** %9, align 8
  %53 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %46
  %57 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @hid_dbg(%struct.hid_device* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.saitek_sc*, %struct.saitek_sc** %9, align 8
  %61 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, 4
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %56
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.saitek_sc*, %struct.saitek_sc** %9, align 8
  %72 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %46
  br label %140

74:                                               ; preds = %20, %4
  %75 = load %struct.saitek_sc*, %struct.saitek_sc** %9, align 8
  %76 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SAITEK_RELEASE_MODE_MMO7, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %139

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %139

84:                                               ; preds = %81
  store i32 -1, i32* %11, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 128
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %107

91:                                               ; preds = %84
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 1, i32* %11, align 4
  br label %106

98:                                               ; preds = %91
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 2
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 2, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %98
  br label %106

106:                                              ; preds = %105, %97
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, -129
  store i32 %111, i32* %109, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, -4
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.saitek_sc*, %struct.saitek_sc** %9, align 8
  %118 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %107
  %122 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @hid_dbg(%struct.hid_device* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load %struct.saitek_sc*, %struct.saitek_sc** %9, align 8
  %126 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, 128
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %129, %121
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.saitek_sc*, %struct.saitek_sc** %9, align 8
  %137 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %107
  br label %139

139:                                              ; preds = %138, %81, %74
  br label %140

140:                                              ; preds = %139, %73
  ret i32 0
}

declare dso_local %struct.saitek_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
