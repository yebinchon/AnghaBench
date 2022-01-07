; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_is_manual_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_is_manual_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtv_frontend_properties = type { i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@SYS_ISDBT = common dso_local global i64 0, align 8
@TRANSMISSION_MODE_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"transmission mode auto\0A\00", align 1
@GUARD_INTERVAL_AUTO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"guard interval auto\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"no layer modulation specified\0A\00", align 1
@QAM_AUTO = common dso_local global i64 0, align 8
@FEC_AUTO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"layer %c has either modulation or FEC auto\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"number of segments is invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtv_frontend_properties*)* @is_manual_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_manual_mode(%struct.dtv_frontend_properties* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dtv_frontend_properties* %0, %struct.dtv_frontend_properties** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %7 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SYS_ISDBT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %125

12:                                               ; preds = %1
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %125

20:                                               ; preds = %12
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %125

28:                                               ; preds = %20
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %125

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %113, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %116

39:                                               ; preds = %36
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %113

48:                                               ; preds = %39
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 13
  br i1 %57, label %68, label %58

58:                                               ; preds = %48
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58, %48
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 1, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %113

76:                                               ; preds = %58
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @QAM_AUTO, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %108, label %97

97:                                               ; preds = %76
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @FEC_AUTO, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %97, %76
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 65, %109
  %111 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  store i32 0, i32* %2, align 4
  br label %125

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %68, %47
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %36

116:                                              ; preds = %36
  %117 = load i32, i32* %5, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %5, align 4
  %121 = icmp sgt i32 %120, 13
  br i1 %121, label %122, label %124

122:                                              ; preds = %119, %116
  %123 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %125

124:                                              ; preds = %119
  store i32 1, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %122, %108, %33, %26, %18, %11
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
