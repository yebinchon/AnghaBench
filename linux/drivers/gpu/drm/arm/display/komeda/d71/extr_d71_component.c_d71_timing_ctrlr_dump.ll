; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_timing_ctrlr_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_timing_ctrlr_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"BS_INFO:\09\090x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"BS_CONTROL:\09\090x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"BS_PROG_LINE:\09\090x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"BS_PREFETCH_LINE:\090x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"BS_BG_COLOR:\09\090x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"BS_ACTIVESIZE:\09\090x%X\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"BS_HINTERVALS:\09\090x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"BS_VINTERVALS:\09\090x%X\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"BS_SYNC:\09\090x%X\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"BS_DRIFT_TO:\09\090x%X\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"BS_FRAME_TO:\09\090x%X\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"BS_TE_TO:\09\090x%X\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"BS_T%u_INTERVAL:\09\090x%X\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"BS_CRC%u_LOW:\09\090x%X\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"BS_CRC%u_HIGH:\09\090x%X\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"BS_USER:\09\090x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_component*, %struct.seq_file*)* @d71_timing_ctrlr_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d71_timing_ctrlr_dump(%struct.komeda_component* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.komeda_component*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.komeda_component* %0, %struct.komeda_component** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %9 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dump_block_header(%struct.seq_file* %7, i32 %10)
  %12 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %13 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %16 = call i32 @get_values_from_reg(i32 %14, i32 192, i32 1, i32* %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %19 = load i32, i32* %18, align 16
  %20 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %22 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %25 = call i32 @get_values_from_reg(i32 %23, i32 208, i32 8, i32* %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %44 = load i32, i32* %43, align 16
  %45 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %56)
  %58 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %59 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %62 = call i32 @get_values_from_reg(i32 %60, i32 256, i32 3, i32* %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %65)
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %73)
  %75 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %76 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %79 = call i32 @get_values_from_reg(i32 %77, i32 272, i32 3, i32* %78)
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %91, %2
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %80

94:                                               ; preds = %80
  %95 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %96 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %99 = call i32 @get_values_from_reg(i32 %97, i32 288, i32 5, i32* %98)
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %121, %94
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %124

103:                                              ; preds = %100
  %104 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = shl i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %105, i32 %110)
  %112 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = shl i32 %114, 1
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %113, i32 %119)
  br label %121

121:                                              ; preds = %103
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %100

124:                                              ; preds = %100
  %125 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %127 = load i32, i32* %126, align 16
  %128 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %127)
  ret void
}

declare dso_local i32 @dump_block_header(%struct.seq_file*, i32) #1

declare dso_local i32 @get_values_from_reg(i32, i32, i32, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
