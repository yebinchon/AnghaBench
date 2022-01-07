; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_CorrectSysClockDeviation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_CorrectSysClockDeviation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, i32, i32, i32, %struct.TYPE_4__, i8*, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_3__ = type { i32 }

@LC_RA_RAM_IFINCR_NOM_L__A = common dso_local global i32 0, align 4
@FE_IF_REG_INCR0__A = common dso_local global i32 0, align 4
@DRXD_BANDWIDTH_8MHZ_IN_HZ = common dso_local global i32 0, align 4
@DRXD_BANDWIDTH_7MHZ_IN_HZ = common dso_local global i32 0, align 4
@DRXD_BANDWIDTH_6MHZ_IN_HZ = common dso_local global i32 0, align 4
@SC_RA_RAM_SAMPLE_RATE_COUNT__A = common dso_local global i32 0, align 4
@DRXD_OSCDEV_DONT_SCAN = common dso_local global i32 0, align 4
@SC_RA_RAM_IF_SAVE__AX = common dso_local global i32 0, align 4
@CSCD_SAVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*)* @CorrectSysClockDeviation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CorrectSysClockDeviation(%struct.drxd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drxd_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %1
  %13 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %14 = load i32, i32* @LC_RA_RAM_IFINCR_NOM_L__A, align 4
  %15 = call i32 @Read32(%struct.drxd_state* %13, i32 %14, i32* %6, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %162

19:                                               ; preds = %12
  %20 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %21 = load i32, i32* @FE_IF_REG_INCR0__A, align 4
  %22 = call i32 @Read32(%struct.drxd_state* %20, i32 %21, i32* %5, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %162

26:                                               ; preds = %19
  %27 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %28 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp slt i32 %34, -500
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %37, %38
  %40 = icmp sgt i32 %39, 500
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  br label %162

42:                                               ; preds = %36
  br label %55

43:                                               ; preds = %26
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp slt i32 %46, -2000
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %49, %50
  %52 = icmp sgt i32 %51, 2000
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %43
  br label %162

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %57 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %66 [
    i32 8000000, label %60
    i32 7000000, label %62
    i32 6000000, label %64
  ]

60:                                               ; preds = %55
  %61 = load i32, i32* @DRXD_BANDWIDTH_8MHZ_IN_HZ, align 4
  store i32 %61, i32* %7, align 4
  br label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @DRXD_BANDWIDTH_7MHZ_IN_HZ, align 4
  store i32 %63, i32* %7, align 4
  br label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @DRXD_BANDWIDTH_6MHZ_IN_HZ, align 4
  store i32 %65, i32* %7, align 4
  br label %67

66:                                               ; preds = %55
  store i32 -1, i32* %2, align 4
  br label %164

67:                                               ; preds = %64, %62, %60
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 8388608
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @MulDiv32(i32 %70, i32 %71, i32 2097152)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sdiv i32 %73, 1000
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = srem i32 %75, 1000
  %77 = icmp sgt i32 %76, 500
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %67
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %84 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = sub nsw i32 %82, %86
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %88, 1000000
  %90 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %91 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = sdiv i64 %89, %94
  %96 = inttoptr i64 %95 to i8*
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %100 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %98, %101
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp sge i32 %103, -200
  br i1 %104, label %105, label %161

105:                                              ; preds = %81
  %106 = load i32, i32* %11, align 4
  %107 = icmp sle i32 %106, 200
  br i1 %107, label %108, label %161

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %113 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %116 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %108
  %120 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %121 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %122, align 8
  %124 = icmp ne i32 (i32, i32, i32)* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %119
  %126 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %127 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %128, align 8
  %130 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %131 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 %129(i32 %132, i32 %133, i32 1)
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %137 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %125, %119
  br label %139

139:                                              ; preds = %138, %108
  %140 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %141 = load i32, i32* @SC_RA_RAM_SAMPLE_RATE_COUNT__A, align 4
  %142 = load i32, i32* @DRXD_OSCDEV_DONT_SCAN, align 4
  %143 = call i32 @Write16(%struct.drxd_state* %140, i32 %141, i32 %142, i32 0)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %162

147:                                              ; preds = %139
  %148 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %149 = load i32, i32* @SC_RA_RAM_IF_SAVE__AX, align 4
  %150 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %151 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @Write16(%struct.drxd_state* %148, i32 %149, i32 %152, i32 0)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %162

157:                                              ; preds = %147
  %158 = load i32, i32* @CSCD_SAVED, align 4
  %159 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %160 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %105, %81
  br label %162

162:                                              ; preds = %161, %156, %146, %53, %41, %25, %18
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %66
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @Read32(%struct.drxd_state*, i32, i32*, i32) #1

declare dso_local i32 @MulDiv32(i32, i32, i32) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
