; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_reset_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_reset_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TALITOS_TIMEOUT = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO = common dso_local global i64 0, align 8
@TALITOS1_CCCR_LO_RESET = common dso_local global i32 0, align 4
@TALITOS_CCCR = common dso_local global i64 0, align 8
@TALITOS2_CCCR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to reset channel %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO_EAE = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO_CDWE = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO_CDIE = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO_NE = common dso_local global i32 0, align 4
@TALITOS_FTR_HW_AUTH_CHECK = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO_IWSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @reset_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_channel(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.talitos_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %9)
  store %struct.talitos_private* %10, %struct.talitos_private** %6, align 8
  %11 = load i32, i32* @TALITOS_TIMEOUT, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %13 = call i32 @has_ftr_sec1(%struct.talitos_private* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %2
  %17 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %18 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TALITOS_CCCR_LO, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @TALITOS1_CCCR_LO_RESET, align 4
  %28 = call i32 @setbits32(i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %50, %16
  %30 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %31 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TALITOS_CCCR_LO, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @in_be32(i64 %39)
  %41 = load i32, i32* @TALITOS1_CCCR_LO_RESET, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %44, %29
  %49 = phi i1 [ false, %29 ], [ %47, %44 ]
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = call i32 (...) @cpu_relax()
  br label %29

52:                                               ; preds = %48
  br label %90

53:                                               ; preds = %2
  %54 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %55 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TALITOS_CCCR, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32, i32* @TALITOS2_CCCR_RESET, align 4
  %65 = call i32 @setbits32(i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %87, %53
  %67 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %68 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TALITOS_CCCR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @in_be32(i64 %76)
  %78 = load i32, i32* @TALITOS2_CCCR_RESET, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %66
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %81, %66
  %86 = phi i1 [ false, %66 ], [ %84, %81 ]
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = call i32 (...) @cpu_relax()
  br label %66

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %52
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %152

99:                                               ; preds = %90
  %100 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %101 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TALITOS_CCCR_LO, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* @TALITOS_CCCR_LO_EAE, align 4
  %111 = load i32, i32* @TALITOS_CCCR_LO_CDWE, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @TALITOS_CCCR_LO_CDIE, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @setbits32(i64 %109, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %99
  %119 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %120 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TALITOS_CCCR_LO, align 8
  %128 = add nsw i64 %126, %127
  %129 = load i32, i32* @TALITOS_CCCR_LO_NE, align 4
  %130 = call i32 @setbits32(i64 %128, i32 %129)
  br label %131

131:                                              ; preds = %118, %99
  %132 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %133 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @TALITOS_FTR_HW_AUTH_CHECK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %131
  %139 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %140 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @TALITOS_CCCR_LO, align 8
  %148 = add nsw i64 %146, %147
  %149 = load i32, i32* @TALITOS_CCCR_LO_IWSE, align 4
  %150 = call i32 @setbits32(i64 %148, i32 %149)
  br label %151

151:                                              ; preds = %138, %131
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %93
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @setbits32(i64, i32) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
