; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_compiz_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_compiz_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"CU_INPUT_ID%u:\09\090x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"CU_IRQ_RAW_STATUS:\090x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"CU_IRQ_CLEAR:\09\090x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"CU_IRQ_MASK:\09\090x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"CU_IRQ_STATUS:\09\090x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"CU_STATUS:\09\090x%X\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"CU_CONTROL:\09\090x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"CU_SIZE:\09\090x%X\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"CU_BG_COLOR:\09\090x%X\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"CU_INPUT%u_SIZE:\09\090x%X\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"CU_INPUT%u_OFFSET:\090x%X\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"CU_INPUT%u_CONTROL:\090x%X\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"CU_USER_LOW:\09\090x%X\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"CU_USER_HIGH:\09\090x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_component*, %struct.seq_file*)* @d71_compiz_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d71_compiz_dump(%struct.komeda_component* %0, %struct.seq_file* %1) #0 {
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
  %16 = call i32 @get_values_from_reg(i32 %14, i32 128, i32 5, i32* %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 5
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %17

31:                                               ; preds = %17
  %32 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %33 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %36 = call i32 @get_values_from_reg(i32 %34, i32 160, i32 5, i32* %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %55 = load i32, i32* %54, align 16
  %56 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %58 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %61 = call i32 @get_values_from_reg(i32 %59, i32 208, i32 2, i32* %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  %70 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %71 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %74 = call i32 @get_values_from_reg(i32 %72, i32 220, i32 1, i32* %73)
  %75 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %77)
  store i32 0, i32* %6, align 4
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 224, i32* %79, align 16
  br label %80

80:                                               ; preds = %106, %31
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 5
  br i1 %82, label %83, label %112

83:                                               ; preds = %80
  %84 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %85 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %88 = load i32, i32* %87, align 16
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %90 = call i32 @get_values_from_reg(i32 %86, i32 %88, i32 3, i32* %89)
  %91 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %94 = load i32, i32* %93, align 16
  %95 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %92, i32 %94)
  %96 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %97, i32 %99)
  %101 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %83
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %110 = load i32, i32* %109, align 16
  %111 = add nsw i32 %110, 16
  store i32 %111, i32* %109, align 16
  br label %80

112:                                              ; preds = %80
  %113 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %114 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %117 = call i32 @get_values_from_reg(i32 %115, i32 304, i32 2, i32* %116)
  %118 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %120)
  %122 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %124)
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
