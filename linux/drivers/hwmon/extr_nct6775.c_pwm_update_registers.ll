; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_pwm_update_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_pwm_update_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i32*, i32, i32*, i32*, i32*, i32**, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct6775_data*, i32)* @pwm_update_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_update_registers(%struct.nct6775_data* %0, i32 %1) #0 {
  %3 = alloca %struct.nct6775_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nct6775_data* %0, %struct.nct6775_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %7 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %122 [
    i32 130, label %13
    i32 131, label %13
    i32 129, label %14
    i32 128, label %105
  ]

13:                                               ; preds = %2, %2
  br label %158

14:                                               ; preds = %2
  %15 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %16 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %17 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nct6775_read_value(%struct.nct6775_data* %15, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %26 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %31 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %38 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %36, %39
  %41 = or i32 %29, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %43 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %44 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @nct6775_write_value(%struct.nct6775_data* %42, i32 %49, i32 %50)
  %52 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %53 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %54 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %61 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = call i32 @nct6775_write_value(%struct.nct6775_data* %52, i32 %59, i32 %67)
  %69 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %70 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %69, i32 0, i32 8
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %104

73:                                               ; preds = %14
  %74 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %75 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 15
  store i32 %82, i32* %5, align 4
  %83 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %84 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 56
  %91 = shl i32 %90, 1
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %95 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %96 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %95, i32 0, i32 8
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @nct6775_write_value(%struct.nct6775_data* %94, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %73, %14
  br label %158

105:                                              ; preds = %2
  %106 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %107 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %108 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %115 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @nct6775_write_value(%struct.nct6775_data* %106, i32 %113, i32 %120)
  br label %122

122:                                              ; preds = %2, %105
  %123 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %124 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %125 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @nct6775_read_value(%struct.nct6775_data* %123, i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %134 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = xor i32 %135, -1
  %137 = and i32 %132, %136
  %138 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %139 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %138, i32 0, i32 5
  %140 = load i32**, i32*** %139, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %137, %146
  store i32 %147, i32* %5, align 4
  %148 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %149 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %150 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %149, i32 0, i32 6
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @nct6775_write_value(%struct.nct6775_data* %148, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %122, %104, %13
  ret void
}

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
