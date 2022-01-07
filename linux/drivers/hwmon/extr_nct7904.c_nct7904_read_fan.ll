; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_read_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7904.c_nct7904_read_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct7904_data = type { i32* }

@BANK_0 = common dso_local global i32 0, align 4
@FANIN1_HV_REG = common dso_local global i32 0, align 4
@BANK_1 = common dso_local global i32 0, align 4
@FANIN1_HV_HL_REG = common dso_local global i32 0, align 4
@SMI_STS5_REG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @nct7904_read_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7904_read_fan(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.nct7904_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.nct7904_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.nct7904_data* %15, %struct.nct7904_data** %10, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %151 [
    i32 129, label %17
    i32 128, label %46
    i32 130, label %75
  ]

17:                                               ; preds = %4
  %18 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %19 = load i32, i32* @BANK_0, align 4
  %20 = load i32, i32* @FANIN1_HV_REG, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %20, %22
  %24 = call i32 @nct7904_read_reg16(%struct.nct7904_data* %18, i32 %19, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %154

29:                                               ; preds = %17
  %30 = load i32, i32* %13, align 4
  %31 = and i32 %30, 65280
  %32 = ashr i32 %31, 3
  %33 = load i32, i32* %13, align 4
  %34 = and i32 %33, 31
  %35 = or i32 %32, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 8191
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %11, align 4
  %41 = udiv i32 1350000, %40
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %38
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  store i32 0, i32* %5, align 4
  br label %154

46:                                               ; preds = %4
  %47 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %48 = load i32, i32* @BANK_1, align 4
  %49 = load i32, i32* @FANIN1_HV_HL_REG, align 4
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %49, %51
  %53 = call i32 @nct7904_read_reg16(%struct.nct7904_data* %47, i32 %48, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %154

58:                                               ; preds = %46
  %59 = load i32, i32* %13, align 4
  %60 = and i32 %59, 65280
  %61 = ashr i32 %60, 3
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %62, 31
  %64 = or i32 %61, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 8191
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %71

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  %70 = udiv i32 1350000, %69
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %68, %67
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = load i64*, i64** %9, align 8
  store i64 %73, i64* %74, align 8
  store i32 0, i32* %5, align 4
  br label %154

75:                                               ; preds = %4
  %76 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %77 = load i32, i32* @BANK_0, align 4
  %78 = load i32, i32* @SMI_STS5_REG, align 4
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 3
  %81 = add nsw i32 %78, %80
  %82 = call i32 @nct7904_read_reg(%struct.nct7904_data* %76, i32 %77, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %5, align 4
  br label %154

87:                                               ; preds = %75
  %88 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %89 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %13, align 4
  %99 = and i32 %98, 255
  %100 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %101 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = ashr i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %99, i32* %106, align 4
  br label %119

107:                                              ; preds = %87
  %108 = load i32, i32* %13, align 4
  %109 = and i32 %108, 255
  %110 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %111 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 3
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %109
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %107, %97
  %120 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %121 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = ashr i32 %123, 3
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = and i32 %128, 7
  %130 = ashr i32 %127, %129
  %131 = and i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = load i64*, i64** %9, align 8
  store i64 %132, i64* %133, align 8
  %134 = load i64*, i64** %9, align 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %119
  %138 = load i32, i32* %8, align 4
  %139 = and i32 %138, 7
  %140 = shl i32 1, %139
  %141 = load %struct.nct7904_data*, %struct.nct7904_data** %10, align 8
  %142 = getelementptr inbounds %struct.nct7904_data, %struct.nct7904_data* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = ashr i32 %144, 3
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = xor i32 %148, %140
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %137, %119
  store i32 0, i32* %5, align 4
  br label %154

151:                                              ; preds = %4
  %152 = load i32, i32* @EOPNOTSUPP, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %151, %150, %85, %71, %56, %42, %27
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.nct7904_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @nct7904_read_reg16(%struct.nct7904_data*, i32, i32) #1

declare dso_local i32 @nct7904_read_reg(%struct.nct7904_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
