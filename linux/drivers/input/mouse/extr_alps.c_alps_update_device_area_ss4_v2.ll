; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_update_device_area_ss4_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_update_device_area_ss4_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_data = type { i32, i32, i32, i32, i32 }

@SS4PLUS_NUMSENSOR_XOFFSET = common dso_local global i8 0, align 1
@SS4PLUS_NUMSENSOR_YOFFSET = common dso_local global i8 0, align 1
@SS4PLUS_COUNT_PER_ELECTRODE = common dso_local global i32 0, align 4
@SS4PLUS_MIN_PITCH_MM = common dso_local global i8 0, align 1
@SS4_NUMSENSOR_XOFFSET = common dso_local global i8 0, align 1
@SS4_NUMSENSOR_YOFFSET = common dso_local global i8 0, align 1
@SS4_COUNT_PER_ELECTRODE = common dso_local global i32 0, align 4
@SS4_MIN_PITCH_MM = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([4 x i8]*, %struct.alps_data*)* @alps_update_device_area_ss4_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_update_device_area_ss4_v2([4 x i8]* %0, %struct.alps_data* %1) #0 {
  %3 = alloca [4 x i8]*, align 8
  %4 = alloca %struct.alps_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store [4 x i8]* %0, [4 x i8]** %3, align 8
  store %struct.alps_data* %1, %struct.alps_data** %4, align 8
  %11 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %12 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IS_SS4PLUS_DEV(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %2
  %17 = load i8, i8* @SS4PLUS_NUMSENSOR_XOFFSET, align 1
  %18 = zext i8 %17 to i32
  %19 = load [4 x i8]*, [4 x i8]** %3, align 8
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 15
  %25 = add nsw i32 %18, %24
  store i32 %25, i32* %5, align 4
  %26 = load i8, i8* @SS4PLUS_NUMSENSOR_YOFFSET, align 1
  %27 = zext i8 %26 to i32
  %28 = load [4 x i8]*, [4 x i8]** %3, align 8
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %28, i64 0
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %29, i64 0, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 15
  %35 = add nsw i32 %27, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* @SS4PLUS_COUNT_PER_ELECTRODE, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %41 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* @SS4PLUS_COUNT_PER_ELECTRODE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %47 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load [4 x i8]*, [4 x i8]** %3, align 8
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %48, i64 0
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %49, i64 0, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 15
  %54 = load i8, i8* @SS4PLUS_MIN_PITCH_MM, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %7, align 4
  %57 = load [4 x i8]*, [4 x i8]** %3, align 8
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %57, i64 0
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %58, i64 0, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 4
  %63 = and i32 %62, 15
  %64 = load i8, i8* @SS4PLUS_MIN_PITCH_MM, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %63, %65
  store i32 %66, i32* %8, align 4
  br label %119

67:                                               ; preds = %2
  %68 = load i8, i8* @SS4_NUMSENSOR_XOFFSET, align 1
  %69 = zext i8 %68 to i32
  %70 = load [4 x i8]*, [4 x i8]** %3, align 8
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %70, i64 1
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %71, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 15
  %76 = add nsw i32 %69, %75
  store i32 %76, i32* %5, align 4
  %77 = load i8, i8* @SS4_NUMSENSOR_YOFFSET, align 1
  %78 = zext i8 %77 to i32
  %79 = load [4 x i8]*, [4 x i8]** %3, align 8
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %79, i64 1
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %80, i64 0, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = ashr i32 %83, 4
  %85 = and i32 %84, 15
  %86 = add nsw i32 %78, %85
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* @SS4_COUNT_PER_ELECTRODE, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %92 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* @SS4_COUNT_PER_ELECTRODE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %98 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load [4 x i8]*, [4 x i8]** %3, align 8
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %99, i64 1
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %100, i64 0, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = ashr i32 %103, 2
  %105 = and i32 %104, 7
  %106 = load i8, i8* @SS4_MIN_PITCH_MM, align 1
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %105, %107
  store i32 %108, i32* %7, align 4
  %109 = load [4 x i8]*, [4 x i8]** %3, align 8
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %109, i64 1
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %110, i64 0, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = ashr i32 %113, 5
  %115 = and i32 %114, 7
  %116 = load i8, i8* @SS4_MIN_PITCH_MM, align 1
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %115, %117
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %67, %16
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %121, 1
  %123 = mul nsw i32 %120, %122
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 1
  %127 = mul nsw i32 %124, %126
  store i32 %127, i32* %10, align 4
  %128 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %129 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %130, 10
  %132 = load i32, i32* %9, align 4
  %133 = sdiv i32 %131, %132
  %134 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %135 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %137 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %138, 10
  %140 = load i32, i32* %10, align 4
  %141 = sdiv i32 %139, %140
  %142 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %143 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  ret i32 0
}

declare dso_local i64 @IS_SS4PLUS_DEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
