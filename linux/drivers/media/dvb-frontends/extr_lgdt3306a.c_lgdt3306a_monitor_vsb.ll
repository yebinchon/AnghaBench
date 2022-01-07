; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_monitor_vsb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_monitor_vsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"snrRef=%d maxPowerMan=0x%x nCombDet=%d fbDlyCir=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*)* @lgdt3306a_monitor_vsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_monitor_vsb(%struct.lgdt3306a_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgdt3306a_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %3, align 8
  %10 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %11 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %10, i32 8609, i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %136

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 63
  store i32 %18, i32* %6, align 4
  %19 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %20 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %19, i32 8581, i32* %7)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %136

25:                                               ; preds = %16
  %26 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %27 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %26, i32 8593, i32* %4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %136

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 128
  %35 = ashr i32 %34, 7
  store i32 %35, i32* %8, align 4
  %36 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %37 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %36, i32 8576, i32* %4)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %136

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 3
  %45 = shl i32 %44, 8
  store i32 %45, i32* %9, align 4
  %46 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %47 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %46, i32 8577, i32* %4)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %136

52:                                               ; preds = %42
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dbg_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %62 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %61, i32 4193, i32* %4)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %136

67:                                               ; preds = %52
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 248
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 18
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %73, 104
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 1023
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 108
  br i1 %83, label %84, label %86

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %4, align 4
  br label %89

86:                                               ; preds = %81, %75, %72, %67
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %84
  %90 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %90, i32 4193, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %136

97:                                               ; preds = %89
  %98 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %99 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %98, i32 36, i32* %4)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %136

104:                                              ; preds = %97
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %105, 15
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %4, align 4
  %111 = or i32 %110, 80
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %113, i32 36, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %136

120:                                              ; preds = %112
  %121 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %122 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %121, i32 4157, i32* %4)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %136

127:                                              ; preds = %120
  %128 = load i32, i32* %4, align 4
  %129 = and i32 %128, 207
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, 32
  store i32 %131, i32* %4, align 4
  %132 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %132, i32 4157, i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %127, %125, %118, %102, %95, %65, %50, %40, %30, %23, %14
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state*, i32, i32*) #1

declare dso_local i32 @dbg_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
