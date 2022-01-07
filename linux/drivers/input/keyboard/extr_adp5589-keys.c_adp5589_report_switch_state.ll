; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_report_switch_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_report_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5589_kpad = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i16, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i16, i16, i16, i32 (i32)* }

@ADP5589_GPI_STATUS_A = common dso_local global i32 0, align 4
@ADP5589_GPI_STATUS_B = common dso_local global i32 0, align 4
@ADP5589_GPI_STATUS_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Can't read GPIO_DAT_STAT switch %d, default to OFF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adp5589_kpad*)* @adp5589_report_switch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adp5589_report_switch_state(%struct.adp5589_kpad* %0) #0 {
  %2 = alloca %struct.adp5589_kpad*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.adp5589_kpad* %0, %struct.adp5589_kpad** %2, align 8
  %10 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %11 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %14 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load i32, i32* @ADP5589_GPI_STATUS_A, align 4
  %19 = call i32 %17(i32 %18)
  %20 = call i32 @adp5589_read(%struct.TYPE_6__* %12, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %22 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %25 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load i32, i32* @ADP5589_GPI_STATUS_B, align 4
  %30 = call i32 %28(i32 %29)
  %31 = call i32 @adp5589_read(%struct.TYPE_6__* %23, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %33 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %1
  %37 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %38 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* @ADP5589_GPI_STATUS_C, align 4
  %41 = call i32 @adp5589_read(%struct.TYPE_6__* %39, i32 %40)
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %41, %36 ], [ 0, %42 ]
  store i32 %44, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %145, %43
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %48 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %148

51:                                               ; preds = %45
  %52 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %53 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i16, i16* %58, align 4
  store i16 %59, i16* %9, align 2
  %60 = load i16, i16* %9, align 2
  %61 = zext i16 %60 to i32
  %62 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %63 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %62, i32 0, i32 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i16, i16* %65, align 8
  %67 = zext i16 %66 to i32
  %68 = icmp sle i32 %61, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %51
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  %71 = load i16, i16* %9, align 2
  %72 = zext i16 %71 to i32
  %73 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %74 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = sub nsw i32 %72, %78
  store i32 %79, i32* %4, align 4
  br label %115

80:                                               ; preds = %51
  %81 = load i16, i16* %9, align 2
  %82 = zext i16 %81 to i32
  %83 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %84 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i16, i16* %86, align 4
  %88 = zext i16 %87 to i32
  %89 = sub nsw i32 %82, %88
  %90 = icmp slt i32 %89, 8
  br i1 %90, label %91, label %102

91:                                               ; preds = %80
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  %93 = load i16, i16* %9, align 2
  %94 = zext i16 %93 to i32
  %95 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %96 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %95, i32 0, i32 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i16, i16* %98, align 4
  %100 = zext i16 %99 to i32
  %101 = sub nsw i32 %94, %100
  store i32 %101, i32* %4, align 4
  br label %114

102:                                              ; preds = %80
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  %104 = load i16, i16* %9, align 2
  %105 = zext i16 %104 to i32
  %106 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %107 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %106, i32 0, i32 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i16, i16* %109, align 4
  %111 = zext i16 %110 to i32
  %112 = sub nsw i32 %105, %111
  %113 = sub nsw i32 %112, 8
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %102, %91
  br label %115

115:                                              ; preds = %114, %69
  %116 = load i32, i32* %3, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %120 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i16, i16* %9, align 2
  %124 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i16 zeroext %123)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %118, %115
  %126 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %127 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %130 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %129, i32 0, i32 2
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* %4, align 4
  %139 = shl i32 1, %138
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @input_report_switch(i32 %128, i32 %136, i32 %143)
  br label %145

145:                                              ; preds = %125
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %45

148:                                              ; preds = %45
  %149 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %2, align 8
  %150 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @input_sync(i32 %151)
  ret void
}

declare dso_local i32 @adp5589_read(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i16 zeroext) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
