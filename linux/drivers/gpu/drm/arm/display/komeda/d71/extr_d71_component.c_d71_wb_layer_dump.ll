; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_wb_layer_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_wb_layer_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"LW_INPUT_ID0:\09\090x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"LW_CONTROL:\09\090x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"LW_PROG_LINE:\09\090x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"LW_FORMAT:\09\090x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"LW_IN_SIZE:\09\090x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"LW_P%u_PTR_LOW:\09\090x%X\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"LW_P%u_PTR_HIGH:\09\090x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"LW_P%u_STRIDE:\09\090x%X\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"LW_RGB_YUV_COEFF%u:\090x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_component*, %struct.seq_file*)* @d71_wb_layer_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d71_wb_layer_dump(%struct.komeda_component* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.komeda_component*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca [12 x i32], align 16
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
  %15 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %16 = call i32 @get_values_from_reg(i32 %14, i32 128, i32 1, i32* %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %19 = load i32, i32* %18, align 16
  %20 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %22 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %25 = call i32 @get_values_from_reg(i32 %23, i32 208, i32 3, i32* %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %39 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %42 = call i32 @get_values_from_reg(i32 %40, i32 224, i32 1, i32* %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %74, %2
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %52 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 16
  %56 = add nsw i32 256, %55
  %57 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %58 = call i32 @get_values_from_reg(i32 %53, i32 %56, i32 3, i32* %57)
  %59 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %60, i32 %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %65, i32 %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %50
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %47

77:                                               ; preds = %47
  %78 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %79 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %82 = call i32 @get_values_from_reg(i32 %80, i32 304, i32 12, i32* %81)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %94, %77
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 12
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %83

97:                                               ; preds = %83
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
