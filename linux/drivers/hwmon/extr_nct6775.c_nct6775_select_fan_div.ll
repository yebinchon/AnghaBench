; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_select_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_select_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct6775_data = type { i32*, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Modifying fan%d clock divider from %u to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.nct6775_data*, i32, i32)* @nct6775_select_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_select_fan_div(%struct.device* %0, %struct.nct6775_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.nct6775_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.nct6775_data* %1, %struct.nct6775_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %12 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %19 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %155

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 7
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %45

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 48
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %38, %35, %32
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %48 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %46, %53
  br i1 %54, label %55, label %155

55:                                               ; preds = %45
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %60 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @div_from_reg(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @div_from_reg(i32 %67)
  %69 = call i32 @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %66, i32 %68)
  %70 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %71 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %144

77:                                               ; preds = %55
  %78 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %79 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %87 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %85, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %77
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 255
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = ashr i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %100, %97, %94
  br label %115

104:                                              ; preds = %77
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 255
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = shl i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp sgt i32 %110, 254
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 254, i32* %10, align 4
  br label %113

113:                                              ; preds = %112, %107
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114, %103
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %118 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %116, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %115
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %128 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %126, i32* %132, align 4
  %133 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %134 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %135 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @nct6775_write_value(%struct.nct6775_data* %133, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %125, %115
  br label %144

144:                                              ; preds = %143, %55
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %147 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  %152 = load %struct.nct6775_data*, %struct.nct6775_data** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @nct6775_write_fan_div_common(%struct.nct6775_data* %152, i32 %153)
  br label %155

155:                                              ; preds = %22, %144, %45
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @div_from_reg(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @nct6775_write_fan_div_common(%struct.nct6775_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
