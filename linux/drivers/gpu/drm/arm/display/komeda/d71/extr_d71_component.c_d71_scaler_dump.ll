; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_scaler_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_scaler_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"SC_INPUT_ID0:\09\090x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SC_CONTROL:\09\090x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SC_COEFFTAB:\09\090x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"SC_IN_SIZE:\09\090x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"SC_OUT_SIZE:\09\090x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SC_H_CROP:\09\090x%X\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SC_V_CROP:\09\090x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SC_H_INIT_PH:\09\090x%X\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"SC_H_DELTA_PH:\09\090x%X\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"SC_V_INIT_PH:\09\090x%X\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"SC_V_DELTA_PH:\09\090x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_component*, %struct.seq_file*)* @d71_scaler_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d71_scaler_dump(%struct.komeda_component* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.komeda_component*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca [9 x i32], align 16
  store %struct.komeda_component* %0, %struct.komeda_component** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %7 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %8 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dump_block_header(%struct.seq_file* %6, i32 %9)
  %11 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %12 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %15 = call i32 @get_values_from_reg(i32 %13, i32 128, i32 1, i32* %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %18 = load i32, i32* %17, align 16
  %19 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %21 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %24 = call i32 @get_values_from_reg(i32 %22, i32 208, i32 1, i32* %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %30 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %33 = call i32 @get_values_from_reg(i32 %31, i32 220, i32 9, i32* %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 4
  %52 = load i32, i32* %51, align 16
  %53 = call i32 @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %55 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 7
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %67 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 8
  %68 = load i32, i32* %67, align 16
  %69 = call i32 @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i32 @dump_block_header(%struct.seq_file*, i32) #1

declare dso_local i32 @get_values_from_reg(i32, i32, i32, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
