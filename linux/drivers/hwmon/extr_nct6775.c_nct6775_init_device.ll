; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i32, i32, i32, i32, i32*, i64, i64, i64*, i64 }

@NUM_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct6775_data*)* @nct6775_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_init_device(%struct.nct6775_data* %0) #0 {
  %2 = alloca %struct.nct6775_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nct6775_data* %0, %struct.nct6775_data** %2, align 8
  %6 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %7 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %12 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %13 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @nct6775_read_value(%struct.nct6775_data* %11, i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %10
  %20 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %21 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %22 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, 1
  %26 = call i32 @nct6775_write_value(%struct.nct6775_data* %20, i64 %23, i32 %25)
  br label %27

27:                                               ; preds = %19, %10
  br label %28

28:                                               ; preds = %27, %1
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %78, %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @NUM_TEMP, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %81

33:                                               ; preds = %29
  %34 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %35 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %78

42:                                               ; preds = %33
  %43 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %44 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %43, i32 0, i32 7
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %78

52:                                               ; preds = %42
  %53 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %54 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %55 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %54, i32 0, i32 7
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @nct6775_read_value(%struct.nct6775_data* %53, i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %52
  %66 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %67 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %68 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %67, i32 0, i32 7
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 254
  %76 = call i32 @nct6775_write_value(%struct.nct6775_data* %66, i64 %73, i32 %75)
  br label %77

77:                                               ; preds = %65, %52
  br label %78

78:                                               ; preds = %77, %51, %41
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %29

81:                                               ; preds = %29
  %82 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %83 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %84 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @nct6775_read_value(%struct.nct6775_data* %82, i64 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %81
  %91 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %92 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %93 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, 1
  %97 = call i32 @nct6775_write_value(%struct.nct6775_data* %91, i64 %94, i32 %96)
  br label %98

98:                                               ; preds = %90, %81
  %99 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %100 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %101 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @nct6775_read_value(%struct.nct6775_data* %99, i64 %102)
  store i32 %103, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %151, %98
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %107 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %154

110:                                              ; preds = %104
  %111 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %112 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @BIT(i32 %114)
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %110
  br label %151

119:                                              ; preds = %110
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %122 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %3, align 4
  %125 = shl i32 %123, %124
  %126 = and i32 %120, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %119
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %3, align 4
  %131 = ashr i32 %129, %130
  %132 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %133 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %131, %134
  %136 = sub nsw i32 3, %135
  %137 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %138 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %136, i32* %142, align 4
  br label %150

143:                                              ; preds = %119
  %144 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %145 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 4, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %128
  br label %151

151:                                              ; preds = %150, %118
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %3, align 4
  br label %104

154:                                              ; preds = %104
  ret void
}

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i64) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
