; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_set_absolute_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_set_absolute_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.elantech_data* }
%struct.elantech_data = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ETP_READ_BACK_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"retrying read (%d).\0A\00", align 1
@ETP_READ_BACK_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to read back register 0x10.\0A\00", align 1
@ETP_R10_ABSOLUTE_MODE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"touchpad refuses to switch to absolute mode.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to initialise registers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @elantech_set_absolute_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_set_absolute_mode(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.elantech_data*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 0
  %9 = load %struct.elantech_data*, %struct.elantech_data** %8, align 8
  store %struct.elantech_data* %9, %struct.elantech_data** %3, align 8
  %10 = load i32, i32* @ETP_READ_BACK_TRIES, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %12 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %96 [
    i32 1, label %15
    i32 2, label %35
    i32 3, label %64
    i32 4, label %85
  ]

15:                                               ; preds = %1
  %16 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %17 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %16, i32 0, i32 0
  store i32 22, i32* %17, align 4
  %18 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %19 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %18, i32 0, i32 1
  store i32 143, i32* %19, align 4
  %20 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %21 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %22 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @elantech_write_reg(%struct.psmouse* %20, i32 16, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %15
  %27 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %28 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %29 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @elantech_write_reg(%struct.psmouse* %27, i32 17, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %15
  store i32 -1, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %26
  br label %96

35:                                               ; preds = %1
  %36 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %37 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %36, i32 0, i32 0
  store i32 84, i32* %37, align 4
  %38 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %39 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %38, i32 0, i32 1
  store i32 136, i32* %39, align 4
  %40 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %41 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %40, i32 0, i32 2
  store i32 96, i32* %41, align 4
  %42 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %43 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %44 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @elantech_write_reg(%struct.psmouse* %42, i32 16, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %35
  %49 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %50 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %51 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @elantech_write_reg(%struct.psmouse* %49, i32 17, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %57 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %58 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @elantech_write_reg(%struct.psmouse* %56, i32 33, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %48, %35
  store i32 -1, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %55
  br label %96

64:                                               ; preds = %1
  %65 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %66 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %72 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %71, i32 0, i32 0
  store i32 11, i32* %72, align 4
  br label %76

73:                                               ; preds = %64
  %74 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %75 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %78 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %79 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @elantech_write_reg(%struct.psmouse* %77, i32 16, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 -1, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %76
  br label %96

85:                                               ; preds = %1
  %86 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %87 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  %88 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %89 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %90 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @elantech_write_reg(%struct.psmouse* %88, i32 7, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  store i32 -1, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %85
  br label %141

96:                                               ; preds = %1, %84, %63, %34
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %140

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %113, %99
  %101 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %102 = call i32 @elantech_read_reg(%struct.psmouse* %101, i32 16, i8* %4)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %116

106:                                              ; preds = %100
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @elantech_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @ETP_READ_BACK_DELAY, align 4
  %112 = call i32 @msleep(i32 %111)
  br label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %5, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %100, label %116

116:                                              ; preds = %113, %105
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %121 = call i32 @psmouse_err(%struct.psmouse* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %139

122:                                              ; preds = %116
  %123 = load %struct.elantech_data*, %struct.elantech_data** %3, align 8
  %124 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load i8, i8* %4, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @ETP_R10_ABSOLUTE_MODE, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %137 = call i32 @psmouse_err(%struct.psmouse* %136, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %138

138:                                              ; preds = %135, %128, %122
  br label %139

139:                                              ; preds = %138, %119
  br label %140

140:                                              ; preds = %139, %96
  br label %141

141:                                              ; preds = %140, %95
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %146 = call i32 @psmouse_err(%struct.psmouse* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @elantech_write_reg(%struct.psmouse*, i32, i32) #1

declare dso_local i32 @elantech_read_reg(%struct.psmouse*, i32, i8*) #1

declare dso_local i32 @elantech_debug(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
