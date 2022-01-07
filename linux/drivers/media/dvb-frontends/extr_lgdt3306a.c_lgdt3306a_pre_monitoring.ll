; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_pre_monitoring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_pre_monitoring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"snrRef=%d mainStrong=%d aiccrejStatus=%d currChDiffACQ=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*)* @lgdt3306a_pre_monitoring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_pre_monitoring(%struct.lgdt3306a_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgdt3306a_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %11 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %10, i32 8636, i32* %6)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %146

16:                                               ; preds = %1
  %17 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %18 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %17, i32 8609, i32* %4)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %146

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 63
  store i32 %25, i32* %7, align 4
  %26 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %27 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %26, i32 8601, i32* %4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %146

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 64
  %35 = ashr i32 %34, 6
  store i32 %35, i32* %8, align 4
  %36 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %37 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %36, i32 144, i32* %4)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %146

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 240
  %45 = ashr i32 %44, 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dbg_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %99

53:                                               ; preds = %42
  %54 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %55 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %54, i32 8501, i32* %4)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %146

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 15
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, 160
  store i32 %64, i32* %4, align 4
  %65 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %65, i32 8501, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %146

72:                                               ; preds = %60
  %73 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %74 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %73, i32 8513, i32* %4)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %146

79:                                               ; preds = %72
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 63
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, 128
  store i32 %83, i32* %4, align 4
  %84 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %84, i32 8513, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %146

91:                                               ; preds = %79
  %92 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %93 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %92, i32 8482, i32 112)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %146

98:                                               ; preds = %91
  br label %145

99:                                               ; preds = %42
  %100 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %101 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %100, i32 8501, i32* %4)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %146

106:                                              ; preds = %99
  %107 = load i32, i32* %4, align 4
  %108 = and i32 %107, 15
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, 112
  store i32 %110, i32* %4, align 4
  %111 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %111, i32 8501, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %146

118:                                              ; preds = %106
  %119 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %120 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %119, i32 8513, i32* %4)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %146

125:                                              ; preds = %118
  %126 = load i32, i32* %4, align 4
  %127 = and i32 %126, 63
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = or i32 %128, 64
  store i32 %129, i32* %4, align 4
  %130 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %130, i32 8513, i32 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = load i32, i32* %5, align 4
  store i32 %136, i32* %2, align 4
  br label %146

137:                                              ; preds = %125
  %138 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %139 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %138, i32 8482, i32 64)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %5, align 4
  store i32 %143, i32* %2, align 4
  br label %146

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %98
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %142, %135, %123, %116, %104, %96, %89, %77, %70, %58, %40, %30, %21, %14
  %147 = load i32, i32* %2, align 4
  ret i32 %147
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
