; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_improc_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_improc_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"IPS_INPUT_ID0:\09\090x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"IPS_INPUT_ID1:\09\090x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"IPS_INFO:\09\090x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"IPS_CONTROL:\09\090x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"IPS_SIZE:\09\090x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"IPS_DEPTH:\09\090x%X\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"IPS_RGB_RGB_COEFF%u:\090x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"IPS_RGB_YUV_COEFF%u:\090x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_component*, %struct.seq_file*)* @d71_improc_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d71_improc_dump(%struct.komeda_component* %0, %struct.seq_file* %1) #0 {
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
  %16 = call i32 @get_values_from_reg(i32 %14, i32 128, i32 2, i32* %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %19 = load i32, i32* %18, align 16
  %20 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %26 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %29 = call i32 @get_values_from_reg(i32 %27, i32 192, i32 1, i32* %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %35 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %38 = call i32 @get_values_from_reg(i32 %36, i32 208, i32 3, i32* %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %52 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %55 = call i32 @get_values_from_reg(i32 %53, i32 304, i32 12, i32* %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %67, %2
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 12
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %56

70:                                               ; preds = %56
  %71 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %72 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 0
  %75 = call i32 @get_values_from_reg(i32 %73, i32 368, i32 12, i32* %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %87, %70
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 12
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [12 x i32], [12 x i32]* %5, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %76

90:                                               ; preds = %76
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
